(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1695292397)
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
      (lambda _$args16614_
        (apply make-struct-instance gx#module-import::t _$args16614_)))
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
      (lambda _$args16611_
        (apply make-struct-instance gx#module-export::t _$args16611_)))
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
      (lambda _$args16608_
        (apply make-struct-instance gx#import-set::t _$args16608_)))
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
      (lambda _$args16605_
        (apply make-struct-instance gx#export-set::t _$args16605_)))
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
      (lambda _$args16602_
        (apply make-class-instance gx#import-expander::t _$args16602_)))
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
      (lambda _$args16599_
        (apply make-class-instance gx#export-expander::t _$args16599_)))
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
      (lambda _$args16596_
        (apply make-class-instance gx#import-export-expander::t _$args16596_)))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path16593_ _fun16594_)
        (call-with-input-file
         (cons 'path: (cons _path16593_ gx#source-file-settings))
         _fun16594_)))
    (define gx#module-context:::init!
      (lambda (_self16587_ _id16588_ _super16589_ _ns16590_ _path16591_)
        (if (##fx< '11 (##vector-length _self16587_))
            (begin
              (##vector-set! _self16587_ '1 _id16588_)
              (##vector-set! _self16587_ '2 (make-table 'test: eq?))
              (##vector-set! _self16587_ '3 _super16589_)
              (##vector-set! _self16587_ '4 '#f)
              (##vector-set! _self16587_ '5 '#f)
              (##vector-set! _self16587_ '6 _ns16590_)
              (##vector-set! _self16587_ '7 _path16591_)
              (##vector-set! _self16587_ '8 '())
              (##vector-set! _self16587_ '9 '())
              (##vector-set! _self16587_ '10 '#f)
              (##vector-set! _self16587_ '11 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self16587_))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self16431_ _ctx16432_ _root16433_)
        (let ((_super16441_
               (let ((_$e16435_ _root16433_))
                 (if _$e16435_
                     _$e16435_
                     (let ((_$e16438_ (gx#core-context-root__0)))
                       (if _$e16438_
                           _$e16438_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx16432_
              (let ((_id16444_
                     (##structure-ref
                      _ctx16432_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path16445_
                     (##structure-ref _ctx16432_ '7 gx#module-context::t '#f))
                    (_in16446_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx16432_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e16447_
                     (make-promise (lambda () (gx#eval-module _ctx16432_)))))
                (if (##fx< '8 (##vector-length _self16431_))
                    (begin
                      (##vector-set! _self16431_ '1 _id16444_)
                      (##vector-set!
                       _self16431_
                       '2
                       (make-table 'test: eq? 'size: (length _in16446_)))
                      (##vector-set! _self16431_ '3 _super16441_)
                      (##vector-set! _self16431_ '4 '#f)
                      (##vector-set! _self16431_ '5 '#f)
                      (##vector-set! _self16431_ '6 _path16445_)
                      (##vector-set! _self16431_ '7 _in16446_)
                      (##vector-set! _self16431_ '8 _e16447_))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self16431_))
                (for-each
                 (lambda (_g1644816450_)
                   (gx#core-bind-weak-import!__% _g1644816450_ _self16431_))
                 _in16446_))
              (if (##fx< '8 (##vector-length _self16431_))
                  (begin
                    (##vector-set! _self16431_ '1 '#f)
                    (##vector-set! _self16431_ '2 (make-table 'test: eq?))
                    (##vector-set! _self16431_ '3 _super16441_)
                    (##vector-set! _self16431_ '4 '#f)
                    (##vector-set! _self16431_ '5 '#f)
                    (##vector-set! _self16431_ '6 '#f)
                    (##vector-set! _self16431_ '7 '())
                    (##vector-set! _self16431_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self16431_))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self16456_ _ctx16457_)
        (let ((_root16459_ '#f))
          (gx#prelude-context:::init!__% _self16456_ _ctx16457_ _root16459_))))
    (define gx#prelude-context:::init!
      (lambda _g16654_
        (let ((_g16653_ (##length _g16654_)))
          (cond ((##fx= _g16653_ 2)
                 (apply (lambda (_self16456_ _ctx16457_)
                          (gx#prelude-context:::init!__0
                           _self16456_
                           _ctx16457_))
                        _g16654_))
                ((##fx= _g16653_ 3)
                 (apply (lambda (_self16461_ _ctx16462_ _root16463_)
                          (gx#prelude-context:::init!__%
                           _self16461_
                           _ctx16462_
                           _root16463_))
                        _g16654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g16654_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self16305_ _e16306_)
        (if (##fx< '3 (##vector-length _self16305_))
            (begin
              (##vector-set! _self16305_ '1 _e16306_)
              (##vector-set! _self16305_ '2 (gx#current-expander-context))
              (##vector-set!
               _self16305_
               '3
               (fx- (gx#current-expander-phi) '1)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self16305_))))
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
      (lambda (_g1593115934_ _g1593215936_)
        (gx#core-apply-user-expander__%
         _g1593115934_
         _g1593215936_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g1580215805_ _g1580315807_)
        (gx#core-apply-user-expander__%
         _g1580215805_
         _g1580315807_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx15673_)
        (let* ((_path15675_
                (##structure-ref _ctx15673_ '7 gx#module-context::t '#f))
               (_path15677_
                (if (pair? _path15675_) (last _path15675_) _path15675_)))
          (if (string? _path15677_) _path15677_ '#f))))
    (define gx#import-module__%
      (lambda (_path15649_ _reload?15650_ _eval?15651_)
        (let ((_ctx15653_
               ((gx#current-expander-module-import)
                _path15649_
                _reload?15650_)))
          (if (and _ctx15653_ _eval?15651_)
              (gx#eval-module _ctx15653_)
              '#!void)
          _ctx15653_)))
    (define gx#import-module__0
      (lambda (_path15658_)
        (let* ((_reload?15660_ '#f) (_eval?15662_ '#f))
          (gx#import-module__% _path15658_ _reload?15660_ _eval?15662_))))
    (define gx#import-module__1
      (lambda (_path15664_ _reload?15665_)
        (let ((_eval?15667_ '#f))
          (gx#import-module__% _path15664_ _reload?15665_ _eval?15667_))))
    (define gx#import-module
      (lambda _g16656_
        (let ((_g16655_ (##length _g16656_)))
          (cond ((##fx= _g16655_ 1)
                 (apply (lambda (_path15658_)
                          (gx#import-module__0 _path15658_))
                        _g16656_))
                ((##fx= _g16655_ 2)
                 (apply (lambda (_path15664_ _reload?15665_)
                          (gx#import-module__1 _path15664_ _reload?15665_))
                        _g16656_))
                ((##fx= _g16655_ 3)
                 (apply (lambda (_path15669_ _reload?15670_ _eval?15671_)
                          (gx#import-module__%
                           _path15669_
                           _reload?15670_
                           _eval?15671_))
                        _g16656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g16656_))))))
    (define gx#eval-module
      (lambda (_mod15646_) ((gx#current-expander-module-eval) _mod15646_)))
    (define gx#core-eval-module
      (lambda (_obj15631_)
        (letrec ((_force-e15633_
                  (lambda (_getf15642_ _e15643_)
                    (call-with-parameters
                     (lambda () (force (_getf15642_ _e15643_)))
                     gx#current-expander-context
                     _e15643_
                     gx#current-expander-phi
                     '0))))
          (let _recur15635_ ((_e15637_ _obj15631_))
            (if (##structure-instance-of? _e15637_ 'gx#module-context::t)
                (begin
                  (let ((_$e15639_ (gx#core-context-prelude__% _e15637_)))
                    (if _$e15639_ (_recur15635_ _$e15639_) '#!void))
                  (_force-e15633_ gx#module-context-e _e15637_))
                (if (##structure-instance-of? _e15637_ 'gx#prelude-context::t)
                    (_force-e15633_ gx#prelude-context-e _e15637_)
                    (if (gx#stx-string? _e15637_)
                        (_recur15635_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e15637_)))
                        (if (gx#core-library-module-path? _e15637_)
                            (_recur15635_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e15637_)))
                            (error '"Cannot eval module" _obj15631_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx15614_)
        (let _lp15616_ ((_e15618_ _ctx15614_))
          (if (or (##structure-instance-of? _e15618_ 'gx#module-context::t)
                  (##structure-instance-of? _e15618_ 'gx#local-context::t))
              (_lp15616_
               (##unchecked-structure-ref _e15618_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e15618_ 'gx#prelude-context::t)
                  _e15618_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx15627_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx15627_))))
    (define gx#core-context-prelude
      (lambda _g16658_
        (let ((_g16657_ (##length _g16658_)))
          (cond ((##fx= _g16657_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g16658_))
                ((##fx= _g16657_ 1)
                 (apply (lambda (_ctx15629_)
                          (gx#core-context-prelude__% _ctx15629_))
                        _g16658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g16658_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx15604_)
        (let* ((_ht15606_ (gx#current-expander-module-registry))
               (_$e15608_ (table-ref _ht15606_ _ctx15604_ '#f)))
          (if _$e15608_
              (values _$e15608_)
              (let ((_pre15611_
                     (let ((__obj16649 (make-object gx#prelude-context::t '8)))
                       (gx#prelude-context:::init!__0 __obj16649 _ctx15604_)
                       __obj16649)))
                (table-set! _ht15606_ _ctx15604_ _pre15611_)
                _pre15611_)))))
    (define gx#core-import-module__%
      (lambda (_rpath15485_ _reload?15486_)
        (letrec ((_import-source15488_
                  (lambda (_path15573_)
                    (if (member _path15573_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path15573_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g16659_ (gx#core-read-module _path15573_)))
                         (begin
                           (let ((_g16660_
                                  (if (##values? _g16659_)
                                      (##vector-length _g16659_)
                                      1)))
                             (if (not (##fx= _g16660_ 4))
                                 (error "Context expects 4 values" _g16660_)))
                           (let ((_pre15576_ (##vector-ref _g16659_ 0))
                                 (_id15577_ (##vector-ref _g16659_ 1))
                                 (_ns15578_ (##vector-ref _g16659_ 2))
                                 (_body15579_ (##vector-ref _g16659_ 3)))
                             (let* ((_prelude15584_
                                     (if (##structure-instance-of?
                                          _pre15576_
                                          'gx#prelude-context::t)
                                         _pre15576_
                                         (if (##structure-instance-of?
                                              _pre15576_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre15576_)
                                             (if (string? _pre15576_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre15576_))
                                                 (if (not _pre15576_)
                                                     (let ((_$e15581_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e15581_
                                                           _$e15581_
                                                           (let ((__obj16650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj16650 '#f)
                     __obj16650)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath15485_
                                                            _pre15576_))))))
                                    (_ctx15586_
                                     (let ((__obj16651
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (gx#module-context:::init!
                                        __obj16651
                                        _id15577_
                                        _prelude15584_
                                        _ns15578_
                                        _path15573_)
                                       __obj16651))
                                    (_body15588_
                                     (gx#core-expand-module-begin
                                      _body15579_
                                      _ctx15586_))
                                    (_body15590_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body15588_)
                                      _path15573_
                                      _ctx15586_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx15586_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body15590_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx15586_
                                _body15590_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path15573_
                                _ctx15586_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id15577_
                                _ctx15586_)
                               _ctx15586_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path15573_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule15489_
                  (lambda (_rpath15501_)
                    (let* ((_rpath1550215509_ _rpath15501_)
                           (_E1550415513_
                            (lambda ()
                              (error '"No clause matching" _rpath1550215509_)))
                           (_K1550515561_
                            (lambda (_refs15516_ _origin15517_)
                              (let ((_ctx15519_
                                     (if _origin15517_
                                         (gx#core-import-module__%
                                          _origin15517_
                                          _reload?15486_)
                                         (gx#current-expander-context))))
                                (let _lp15521_ ((_rest15523_ _refs15516_)
                                                (_ctx15524_ _ctx15519_))
                                  (let* ((_rest1552515533_ _rest15523_)
                                         (_else1552715541_
                                          (lambda () _ctx15524_))
                                         (_K1552915549_
                                          (lambda (_rest15544_ _id15545_)
                                            (let ((_bind15547_
                                                   (gx#resolve-identifier__%
                                                    _id15545_
                                                    '0
                                                    _ctx15524_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind15547_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind15547_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp15521_
                                                   _rest15544_
                                                   (##unchecked-structure-ref
                                                    _bind15547_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath15501_
                                                         _id15545_
                                                         _bind15547_))))))
                                    (if (##pair? _rest1552515533_)
                                        (let ((_hd1553015552_
                                               (##car _rest1552515533_))
                                              (_tl1553115554_
                                               (##cdr _rest1552515533_)))
                                          (let* ((_id15557_ _hd1553015552_)
                                                 (_rest15559_ _tl1553115554_))
                                            (_K1552915549_
                                             _rest15559_
                                             _id15557_)))
                                        (_else1552715541_))))))))
                      (if (##pair? _rpath1550215509_)
                          (let ((_hd1550615564_ (##car _rpath1550215509_))
                                (_tl1550715566_ (##cdr _rpath1550215509_)))
                            (let* ((_origin15569_ _hd1550615564_)
                                   (_refs15571_ _tl1550715566_))
                              (_K1550515561_ _refs15571_ _origin15569_)))
                          (_E1550415513_))))))
          (let ((_$e15491_
                 (if (not _reload?15486_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath15485_
                      '#f)
                     '#f)))
            (if _$e15491_
                (values _$e15491_)
                (if (list? _rpath15485_)
                    (_import-submodule15489_ _rpath15485_)
                    (if (gx#core-library-module-path? _rpath15485_)
                        (let ((_ctx15494_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath15485_)
                                _reload?15486_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath15485_
                           _ctx15494_)
                          _ctx15494_)
                        (let* ((_npath15496_ (path-normalize _rpath15485_))
                               (_$e15498_
                                (if (not _reload?15486_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath15496_
                                     '#f)
                                    '#f)))
                          (if _$e15498_
                              (values _$e15498_)
                              (_import-source15488_ _npath15496_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath15597_)
        (let ((_reload?15599_ '#f))
          (gx#core-import-module__% _rpath15597_ _reload?15599_))))
    (define gx#core-import-module
      (lambda _g16662_
        (let ((_g16661_ (##length _g16662_)))
          (cond ((##fx= _g16661_ 1)
                 (apply (lambda (_rpath15597_)
                          (gx#core-import-module__0 _rpath15597_))
                        _g16662_))
                ((##fx= _g16661_ 2)
                 (apply (lambda (_rpath15601_ _reload?15602_)
                          (gx#core-import-module__%
                           _rpath15601_
                           _reload?15602_))
                        _g16662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g16662_))))))
    (define gx#core-read-module
      (lambda (_path15479_)
        (with-exception-catcher
         (lambda (_exn15481_)
           (if (and (datum-parsing-exception? _exn15481_)
                    (eq? (datum-parsing-exception-filepos _exn15481_) '0))
               (gx#core-read-module/lang _path15479_)
               (raise _exn15481_)))
         (lambda () (gx#core-read-module/sexp _path15479_)))))
    (define gx#core-read-module/sexp
      (lambda (_path15342_)
        (let _lp15344_ ((_body15346_ (read-syntax-from-file _path15342_))
                        (_pre15347_ '#f)
                        (_ns15348_ '#f)
                        (_pkg15349_ '#f))
          (let* ((_e1535015374_ _body15346_)
                 (_E1536615396_
                  (lambda ()
                    (let ((_g16663_
                           (if _pkg15349_
                               (values _pre15347_ _ns15348_ _pkg15349_)
                               (gx#core-read-module-package
                                _path15342_
                                _pre15347_
                                _ns15348_))))
                      (begin
                        (let ((_g16664_
                               (if (##values? _g16663_)
                                   (##vector-length _g16663_)
                                   1)))
                          (if (not (##fx= _g16664_ 3))
                              (error "Context expects 3 values" _g16664_)))
                        (let ((_pre15378_ (##vector-ref _g16663_ 0))
                              (_ns15379_ (##vector-ref _g16663_ 1))
                              (_pkg15380_ (##vector-ref _g16663_ 2)))
                          (let* ((_prelude15382_
                                  (if (gx#core-bound-module-prelude?
                                       _pre15378_)
                                      (gx#syntax-local-e__0 _pre15378_)
                                      (if (gx#core-library-module-path?
                                           _pre15378_)
                                          (gx#core-resolve-library-module-path
                                           _pre15378_)
                                          (if (gx#stx-string? _pre15378_)
                                              (gx#core-resolve-module-path__%
                                               _pre15378_
                                               _path15342_)
                                              (gx#stx-e _pre15378_)))))
                                 (_path-id15384_
                                  (gx#core-module-path->namespace _path15342_))
                                 (_pkg-id15386_
                                  (if _pkg15380_
                                      (string-append
                                       _pkg15380_
                                       '"/"
                                       _path-id15384_)
                                      _path-id15384_))
                                 (_module-id15388_
                                  (string->symbol _pkg-id15386_))
                                 (_module-ns15393_
                                  (if (eq? _ns15379_ '#!void)
                                      '#f
                                      (let ((_$e15390_ _ns15379_))
                                        (if _$e15390_
                                            _$e15390_
                                            _pkg-id15386_)))))
                            (values _prelude15382_
                                    _module-id15388_
                                    _module-ns15393_
                                    _body15346_)))))))
                 (_E1535915425_
                  (lambda ()
                    (if (gx#stx-pair? _e1535015374_)
                        (let ((_e1536715400_ (gx#syntax-e _e1535015374_)))
                          (let ((_hd1536815403_ (##car _e1536715400_))
                                (_tl1536915405_ (##cdr _e1536715400_)))
                            (if (eq? (gx#stx-e _hd1536815403_) 'package:)
                                (if (gx#stx-pair? _tl1536915405_)
                                    (let ((_e1537015408_
                                           (gx#syntax-e _tl1536915405_)))
                                      (let ((_hd1537115411_
                                             (##car _e1537015408_))
                                            (_tl1537215413_
                                             (##cdr _e1537015408_)))
                                        (let* ((_pkg15416_ _hd1537115411_)
                                               (_rest15418_ _tl1537215413_))
                                          (if '#t
                                              (let ((_pkg15423_
                                                     (if (gx#identifier?
                                                          _pkg15416_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg15416_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg15416_)
                         (gx#stx-false? _pkg15416_))
                     (gx#stx-e _pkg15416_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg15416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp15344_
                                                 _rest15418_
                                                 _pre15347_
                                                 _ns15348_
                                                 _pkg15423_))
                                              (_E1536615396_)))))
                                    (_E1536615396_))
                                (_E1536615396_))))
                        (_E1536615396_))))
                 (_E1535215451_
                  (lambda ()
                    (if (gx#stx-pair? _e1535015374_)
                        (let ((_e1536015429_ (gx#syntax-e _e1535015374_)))
                          (let ((_hd1536115432_ (##car _e1536015429_))
                                (_tl1536215434_ (##cdr _e1536015429_)))
                            (if (eq? (gx#stx-e _hd1536115432_) 'namespace:)
                                (if (gx#stx-pair? _tl1536215434_)
                                    (let ((_e1536315437_
                                           (gx#syntax-e _tl1536215434_)))
                                      (let ((_hd1536415440_
                                             (##car _e1536315437_))
                                            (_tl1536515442_
                                             (##cdr _e1536315437_)))
                                        (let* ((_ns15445_ _hd1536415440_)
                                               (_rest15447_ _tl1536515442_))
                                          (if '#t
                                              (let ((_ns15449_
                                                     (if (gx#identifier?
                                                          _ns15445_)
                                                         (symbol->string
                                                          (gx#stx-e _ns15445_))
                                                         (if (gx#stx-string?
                                                              _ns15445_)
                                                             (gx#stx-e
                                                              _ns15445_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns15445_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns15445_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp15344_
                                                 _rest15447_
                                                 _pre15347_
                                                 _ns15449_
                                                 _pkg15349_))
                                              (_E1535915425_)))))
                                    (_E1535915425_))
                                (_E1535915425_))))
                        (_E1535915425_))))
                 (_E1535115475_
                  (lambda ()
                    (if (gx#stx-pair? _e1535015374_)
                        (let ((_e1535315455_ (gx#syntax-e _e1535015374_)))
                          (let ((_hd1535415458_ (##car _e1535315455_))
                                (_tl1535515460_ (##cdr _e1535315455_)))
                            (if (eq? (gx#stx-e _hd1535415458_) 'prelude:)
                                (if (gx#stx-pair? _tl1535515460_)
                                    (let ((_e1535615463_
                                           (gx#syntax-e _tl1535515460_)))
                                      (let ((_hd1535715466_
                                             (##car _e1535615463_))
                                            (_tl1535815468_
                                             (##cdr _e1535615463_)))
                                        (let* ((_prelude15471_ _hd1535715466_)
                                               (_rest15473_ _tl1535815468_))
                                          (if '#t
                                              (_lp15344_
                                               _rest15473_
                                               _prelude15471_
                                               _ns15348_
                                               _pkg15349_)
                                              (_E1535215451_)))))
                                    (_E1535215451_))
                                (_E1535215451_))))
                        (_E1535215451_)))))
            (_E1535115475_)))))
    (define gx#core-read-module/lang
      (lambda (_path15169_)
        (letrec ((_default-read-module-body15171_
                  (lambda (_inp15334_)
                    (let _lp15336_ ((_body15338_ '()))
                      (let ((_next15340_ (read-syntax _inp15334_)))
                        (if (eof-object? _next15340_)
                            (reverse _body15338_)
                            (_lp15336_ (cons _next15340_ _body15338_)))))))
                 (_read-body15172_
                  (lambda (_inp15253_
                           _pre15254_
                           _ns15255_
                           _pkg15256_
                           _args15257_)
                    (let ((_g16665_
                           (if _pkg15256_
                               (values _pre15254_ _ns15255_ _pkg15256_)
                               (gx#core-read-module-package
                                _path15169_
                                _pre15254_
                                _ns15255_))))
                      (begin
                        (let ((_g16666_
                               (if (##values? _g16665_)
                                   (##vector-length _g16665_)
                                   1)))
                          (if (not (##fx= _g16666_ 3))
                              (error "Context expects 3 values" _g16666_)))
                        (let ((_pre15259_ (##vector-ref _g16665_ 0))
                              (_ns15260_ (##vector-ref _g16665_ 1))
                              (_pkg15261_ (##vector-ref _g16665_ 2)))
                          (let* ((_prelude15263_
                                  (gx#import-module__0 _pre15259_))
                                 (_read-module-body15317_
                                  (let ((_$e15309_
                                         (find (lambda (_e1526415266_)
                                                 (let* ((_g1526815278_
                                                         _e1526415266_)
                                                        (_else1527015286_
                                                         (lambda () '#f))
                                                        (_K1527215290_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g1526815278_
                                                        'gx#module-export::t)
                                                       (let* ((_e1527315293_
                                                               (##vector-ref
                                                                _g1526815278_
                                                                '1))
                                                              (_e1527415296_
                                                               (##vector-ref
                                                                _g1526815278_
                                                                '2))
                                                              (_e1527515299_
                                                               (##vector-ref
                                                                _g1526815278_
                                                                '3)))
                                                         (if (##eq? _e1527515299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1527615302_ (##vector-ref _g1526815278_ '4)))
                       (if ((lambda (_g1530415306_)
                              (eq? _g1530415306_ 'read-module-body))
                            _e1527615302_)
                           (_K1527215290_)
                           (_else1527015286_)))
                     (_else1527015286_)))
               (_else1527015286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude15263_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e15309_
                                        ((lambda (_xport15312_)
                                           (let ((_proc15315_
                                                  (with-exception-catcher
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport15312_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc15315_)
                                                 _proc15315_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path15169_
                                                  _pre15259_
                                                  _proc15315_))))
                                         _$e15309_)
                                        _default-read-module-body15171_)))
                                 (_path-id15319_
                                  (gx#core-module-path->namespace _path15169_))
                                 (_pkg-id15321_
                                  (if _pkg15261_
                                      (string-append
                                       _pkg15261_
                                       '"/"
                                       _path-id15319_)
                                      _path-id15319_))
                                 (_module-id15323_
                                  (string->symbol _pkg-id15321_))
                                 (_module-ns15328_
                                  (let ((_$e15325_ _ns15260_))
                                    (if _$e15325_ _$e15325_ _pkg-id15321_)))
                                 (_body15331_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body15317_ _inp15253_))
                                   gx#current-module-reader-path
                                   _path15169_
                                   gx#current-module-reader-args
                                   _args15257_)))
                            (values _prelude15263_
                                    _module-id15323_
                                    _module-ns15328_
                                    _body15331_)))))))
                 (_string-e15173_
                  (lambda (_obj15250_ _what15251_)
                    (if (string? _obj15250_)
                        _obj15250_
                        (if (symbol? _obj15250_)
                            (symbol->string _obj15250_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what15251_)
                             _path15169_
                             _obj15250_)))))
                 (_read-lang-args15174_
                  (lambda (_inp15205_ _args15206_)
                    (let* ((_args1520715215_ _args15206_)
                           (_else1520915223_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path15169_)))
                           (_K1521115238_
                            (lambda (_args15226_ _prelude15227_)
                              (let* ((_pkg15229_ (pgetq 'package: _args15226_))
                                     (_pkg15231_
                                      (if _pkg15229_
                                          (_string-e15173_
                                           _pkg15229_
                                           '"package")
                                          '#f))
                                     (_ns15233_
                                      (pgetq 'namespace: _args15226_))
                                     (_ns15235_
                                      (if _ns15233_
                                          (_string-e15173_
                                           _ns15233_
                                           '"namespace")
                                          '#f)))
                                (_read-body15172_
                                 _inp15205_
                                 _prelude15227_
                                 _ns15235_
                                 _pkg15231_
                                 _args15226_)))))
                      (if (##pair? _args1520715215_)
                          (let ((_hd1521215241_ (##car _args1520715215_))
                                (_tl1521315243_ (##cdr _args1520715215_)))
                            (let* ((_prelude15246_ _hd1521215241_)
                                   (_args15248_ _tl1521315243_))
                              (_K1521115238_ _args15248_ _prelude15246_)))
                          (_else1520915223_)))))
                 (_read-lang15175_
                  (lambda (_inp15180_)
                    (let* ((_head15182_ (read-line _inp15180_))
                           (_$e15184_ (string-index _head15182_ '#\space)))
                      (if _$e15184_
                          ((lambda (_ix15187_)
                             (let ((_lang15189_
                                    (substring _head15182_ '0 _ix15187_)))
                               (if (equal? _lang15189_ '"#lang")
                                   (let* ((_rest15191_
                                           (substring
                                            _head15182_
                                            (fx+ _ix15187_ '1)
                                            (string-length _head15182_)))
                                          (_args15202_
                                           (with-exception-catcher
                                            (lambda (_g1519215194_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path15169_
                                               _g1519215194_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest15191_
                                               (lambda (_g1519715199_)
                                                 (read-all
                                                  _g1519715199_
                                                  read)))))))
                                     (_read-lang-args15174_
                                      _inp15180_
                                      _args15202_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path15169_))))
                           _$e15184_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path15169_)))))
                 (_read-e15176_
                  (lambda (_inp15178_)
                    (if (eq? (peek-char _inp15178_) '#\#)
                        (_read-lang15175_ _inp15178_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path15169_)))))
          (gx#call-with-input-source-file _path15169_ _read-e15176_))))
    (define gx#core-read-module-package
      (lambda (_path15123_ _pre15124_ _ns15125_)
        (letrec ((_string-e15127_
                  (lambda (_e15167_)
                    (if (symbol? _e15167_)
                        (symbol->string _e15167_)
                        (if (string? _e15167_)
                            _e15167_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e15167_))))))
          (let _lp15129_ ((_dir15131_ (path-directory _path15123_))
                          (_pkg-path15132_ '()))
            (let ((_gerbil.pkg15134_ (path-expand '"gerbil.pkg" _dir15131_)))
              (if (file-exists? _gerbil.pkg15134_)
                  (let ((_plist15136_
                         (gx#core-library-package-plist__% _dir15131_ '#t)))
                    (if (null? _plist15136_)
                        (let ((_pkg15138_
                               (if (not (null? _pkg-path15132_))
                                   (string-join _pkg-path15132_ '"/")
                                   '#f)))
                          (values _pre15124_ _ns15125_ _pkg15138_))
                        (if (list? _plist15136_)
                            (let* ((_root15140_ (pgetq 'package: _plist15136_))
                                   (_pkg15144_
                                    (let ((_pkg-path15142_
                                           (if _root15140_
                                               (cons (_string-e15127_
                                                      _root15140_)
                                                     _pkg-path15132_)
                                               _pkg-path15132_)))
                                      (if (not (null? _pkg-path15142_))
                                          (string-join _pkg-path15142_ '"/")
                                          '#f)))
                                   (_ns15151_
                                    (let ((_ns15149_
                                           (let ((_$e15146_ _ns15125_))
                                             (if _$e15146_
                                                 _$e15146_
                                                 (pgetq 'namespace:
                                                        _plist15136_)))))
                                      (if _ns15149_
                                          (_string-e15127_ _ns15149_)
                                          '#f)))
                                   (_pre15156_
                                    (let ((_$e15153_ _pre15124_))
                                      (if _$e15153_
                                          _$e15153_
                                          (pgetq 'prelude: _plist15136_)))))
                              (values _pre15156_ _ns15151_ _pkg15144_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist15136_))))
                  (let ((_dir*15159_
                         (path-strip-trailing-directory-separator _dir15131_)))
                    (if (or (string-empty? _dir*15159_)
                            (equal? _dir15131_ _dir*15159_))
                        (values _pre15124_ _ns15125_ '#f)
                        (let ((_xpath15164_ (path-strip-directory _dir*15159_))
                              (_xdir15165_ (path-directory _dir*15159_)))
                          (_lp15129_
                           _xdir15165_
                           (cons _xpath15164_ _pkg-path15132_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path15121_)
        (path-strip-extension (path-strip-directory _path15121_))))
    (define gx#core-module-path->id
      (lambda (_path15119_)
        (string->symbol (gx#core-module-path->namespace _path15119_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path15098_ _rel15099_)
        (let* ((_path15101_ (gx#stx-e _stx-path15098_))
               (_path15103_
                (if (string-empty? (path-extension _path15101_))
                    (string-append _path15101_ '".ss")
                    _path15101_)))
          (gx#core-resolve-path__%
           _path15103_
           (let ((_$e15106_ (gx#stx-source _stx-path15098_)))
             (if _$e15106_ _$e15106_ _rel15099_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path15112_)
        (let ((_rel15114_ '#f))
          (gx#core-resolve-module-path__% _stx-path15112_ _rel15114_))))
    (define gx#core-resolve-module-path
      (lambda _g16668_
        (let ((_g16667_ (##length _g16668_)))
          (cond ((##fx= _g16667_ 1)
                 (apply (lambda (_stx-path15112_)
                          (gx#core-resolve-module-path__0 _stx-path15112_))
                        _g16668_))
                ((##fx= _g16667_ 2)
                 (apply (lambda (_stx-path15116_ _rel15117_)
                          (gx#core-resolve-module-path__%
                           _stx-path15116_
                           _rel15117_))
                        _g16668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g16668_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath14984_)
        (let* ((_spath14986_ (symbol->string (gx#stx-e _libpath14984_)))
               (_spath14988_
                (substring _spath14986_ '1 (string-length _spath14986_)))
               (_ext14990_ (path-extension _spath14988_))
               (_ssi14992_
                (if (string-empty? _ext14990_)
                    (string-append _spath14988_ '".ssi")
                    (string-append
                     (path-strip-extension _spath14988_)
                     '".ssi")))
               (_srcs14996_
                (if (string-empty? _ext14990_)
                    (map (lambda (_ext14994_)
                           (string-append _spath14988_ _ext14994_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath14988_ '()))))
          (let _lp14999_ ((_rest15001_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest1500215011_ _rest15001_)
                   (_E1500515015_
                    (lambda ()
                      (error '"No clause matching" _rest1500215011_))))
              (let ((_K1500715085_
                     (lambda (_rest15026_ _dir15027_)
                       (letrec ((_resolve15029_
                                 (lambda (_ssi15041_ _srcs15042_)
                                   (let ((_compiled-path15044_
                                          (path-expand _ssi15041_ _dir15027_)))
                                     (if (file-exists? _compiled-path15044_)
                                         (path-normalize _compiled-path15044_)
                                         (let _lpr15046_ ((_rest-src15048_
                                                           _srcs15042_))
                                           (let* ((_rest-src1504915057_
                                                   _rest-src15048_)
                                                  (_else1505115065_
                                                   (lambda ()
                                                     (_lp14999_ _rest15026_)))
                                                  (_K1505315073_
                                                   (lambda (_rest-src15068_
                                                            _src15069_)
                                                     (let ((_src-path15071_
                                                            (path-expand
                                                             _src15069_
                                                             _dir15027_)))
                                                       (if (file-exists?
                                                            _src-path15071_)
                                                           (path-normalize
                                                            _src-path15071_)
                                                           (_lpr15046_
                                                            _rest-src15068_))))))
                                             (if (##pair? _rest-src1504915057_)
                                                 (let ((_hd1505415076_
                                                        (##car _rest-src1504915057_))
                                                       (_tl1505515078_
                                                        (##cdr _rest-src1504915057_)))
                                                   (let* ((_src15081_
                                                           _hd1505415076_)
                                                          (_rest-src15083_
                                                           _tl1505515078_))
                                                     (_K1505315073_
                                                      _rest-src15083_
                                                      _src15081_)))
                                                 (_else1505115065_)))))))))
                         (let ((_$e15031_
                                (gx#core-library-package-path-prefix
                                 _dir15027_)))
                           (if _$e15031_
                               ((lambda (_prefix15034_)
                                  (if (string-prefix?
                                       _prefix15034_
                                       _spath14988_)
                                      (let ((_ssi15038_
                                             (substring
                                              _ssi14992_
                                              (string-length _prefix15034_)
                                              (string-length _ssi14992_)))
                                            (_srcs15039_
                                             (map (lambda (_src15036_)
                                                    (substring
                                                     _src15036_
                                                     (string-length
                                                      _prefix15034_)
                                                     (string-length
                                                      _src15036_)))
                                                  _srcs14996_)))
                                        (_resolve15029_
                                         _ssi15038_
                                         _srcs15039_))
                                      (_lp14999_ _rest15026_)))
                                _$e15031_)
                               (_resolve15029_ _ssi14992_ _srcs14996_))))))
                    (_K1500615020_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath14984_))))
                (let ((_try-match1500415023_
                       (lambda ()
                         (if (##null? _rest1500215011_)
                             (_K1500615020_)
                             (_E1500515015_)))))
                  (if (##pair? _rest1500215011_)
                      (let ((_tl1500915090_ (##cdr _rest1500215011_))
                            (_hd1500815088_ (##car _rest1500215011_)))
                        (let ((_dir15093_ _hd1500815088_)
                              (_rest15095_ _tl1500915090_))
                          (_K1500715085_ _rest15095_ _dir15093_)))
                      (_try-match1500415023_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath14957_)
        (letrec ((_resolve14959_
                  (lambda (_path14976_ _base14977_)
                    (let ((_$e14979_ (string-rindex _base14977_ '#\/)))
                      (if _$e14979_
                          ((lambda (_idx14982_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base14977_ '0 _idx14982_)
                                '"/"
                                _path14976_))))
                           _$e14979_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path14976_))))))))
          (let ((_spath14961_ (symbol->string (gx#stx-e _modpath14957_)))
                (_mod14962_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod14962_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath14957_))
            (let ((_mpath14964_
                   (symbol->string
                    (##structure-ref
                     _mod14962_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp14966_ ((_spath14968_ _spath14961_)
                              (_mpath14969_ _mpath14964_))
                (if (string-prefix? '"../" _spath14968_)
                    (let ((_$e14971_ (string-rindex _mpath14969_ '#\/)))
                      (if _$e14971_
                          ((lambda (_idx14974_)
                             (_lp14966_
                              (substring
                               _spath14968_
                               '3
                               (string-length _spath14968_))
                              (substring _mpath14969_ '0 _idx14974_)))
                           _$e14971_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath14957_)))
                    (if (string-prefix? '"./" _spath14968_)
                        (_lp14966_
                         (substring
                          _spath14968_
                          '2
                          (string-length _spath14968_))
                         _mpath14969_)
                        (_resolve14959_ _spath14968_ _mpath14969_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir14950_)
        (let ((_$e14952_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir14950_))))
          (if _$e14952_
              ((lambda (_pkg14955_)
                 (string-append (symbol->string _pkg14955_) '"/"))
               _$e14952_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir14922_ _exists?14923_)
        (let* ((_cache14925_ (gx#core-library-package-cache))
               (_$e14927_ (table-ref _cache14925_ _dir14922_ '#f)))
          (if _$e14927_
              (values _$e14927_)
              (let* ((_gerbil.pkg14930_ (path-expand '"gerbil.pkg" _dir14922_))
                     (_plist14937_
                      (if (or _exists?14923_ (file-exists? _gerbil.pkg14930_))
                          (let ((_e14935_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg14930_
                                  read)))
                            (if (eof-object? _e14935_)
                                '()
                                (if (list? _e14935_)
                                    _e14935_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14930_
                                     _e14935_))))
                          '())))
                (table-set! _cache14925_ _dir14922_ _plist14937_)
                _plist14937_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir14943_)
        (let ((_exists?14945_ '#f))
          (gx#core-library-package-plist__% _dir14943_ _exists?14945_))))
    (define gx#core-library-package-plist
      (lambda _g16670_
        (let ((_g16669_ (##length _g16670_)))
          (cond ((##fx= _g16669_ 1)
                 (apply (lambda (_dir14943_)
                          (gx#core-library-package-plist__0 _dir14943_))
                        _g16670_))
                ((##fx= _g16669_ 2)
                 (apply (lambda (_dir14947_ _exists?14948_)
                          (gx#core-library-package-plist__%
                           _dir14947_
                           _exists?14948_))
                        _g16670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g16670_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e14916_ (gx#current-expander-module-library-package-cache)))
          (if _$e14916_
              (values _$e14916_)
              (let ((_cache14919_ (make-table)))
                (gx#current-expander-module-library-package-cache _cache14919_)
                _cache14919_)))))
    (define gx#core-library-module-path?
      (lambda (_stx14913_) (gx#core-special-module-path? _stx14913_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx14911_) (gx#core-special-module-path? _stx14911_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx14906_ _char14907_)
        (if (gx#identifier? _stx14906_)
            (if (interned-symbol? (gx#stx-e _stx14906_))
                (let ((_str14909_ (symbol->string (gx#stx-e _stx14906_))))
                  (if (fx> (string-length _str14909_) '1)
                      (eq? (string-ref _str14909_ '0) _char14907_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx14900_)
        (gx#core-bound-identifier?__%
         _stx14900_
         (lambda (_g1490114903_)
           (gx#expander-binding?__% _g1490114903_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx14894_)
        (gx#core-bound-identifier?__%
         _stx14894_
         (lambda (_g1489514897_)
           (gx#expander-binding?__% _g1489514897_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx14881_)
        (letrec ((_module-prelude?14883_
                  (lambda (_e14889_)
                    (let ((_$e14891_
                           (##structure-instance-of?
                            _e14889_
                            'gx#module-context::t)))
                      (if _$e14891_
                          _$e14891_
                          (##structure-instance-of?
                           _e14889_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx14881_
           (lambda (_g1488414886_)
             (gx#expander-binding?__%
              _g1488414886_
              _module-prelude?14883_))))))
    (define gx#core-bind-import!__%
      (lambda (_in14811_ _ctx14812_ _force-weak?14813_)
        (let* ((_in1481414823_ _in14811_)
               (_E1481614827_
                (lambda () (error '"No clause matching" _in1481414823_)))
               (_K1481714840_
                (lambda (_weak?14830_ _phi14831_ _key14832_ _source14833_)
                  (gx#core-bind!__%
                   _key14832_
                   (let ((_e14835_
                          (gx#core-resolve-module-export _source14833_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e14835_ '1 gx#binding::t '#f)
                      _key14832_
                      _phi14831_
                      _e14835_
                      (##unchecked-structure-ref
                       _source14833_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e14837_ _force-weak?14813_))
                        (if _$e14837_ _$e14837_ _weak?14830_))))
                   gx#core-context-rebind?
                   _phi14831_
                   _ctx14812_))))
          (if (##structure-direct-instance-of?
               _in1481414823_
               'gx#module-import::t)
              (let* ((_e1481814843_ (##vector-ref _in1481414823_ '1))
                     (_source14846_ _e1481814843_)
                     (_e1481914848_ (##vector-ref _in1481414823_ '2))
                     (_key14851_ _e1481914848_)
                     (_e1482014853_ (##vector-ref _in1481414823_ '3))
                     (_phi14856_ _e1482014853_)
                     (_e1482114858_ (##vector-ref _in1481414823_ '4))
                     (_weak?14861_ _e1482114858_))
                (_K1481714840_
                 _weak?14861_
                 _phi14856_
                 _key14851_
                 _source14846_))
              (_E1481614827_)))))
    (define gx#core-bind-import!__0
      (lambda (_in14866_)
        (let* ((_ctx14868_ (gx#current-expander-context))
               (_force-weak?14870_ '#f))
          (gx#core-bind-import!__% _in14866_ _ctx14868_ _force-weak?14870_))))
    (define gx#core-bind-import!__1
      (lambda (_in14872_ _ctx14873_)
        (let ((_force-weak?14875_ '#f))
          (gx#core-bind-import!__% _in14872_ _ctx14873_ _force-weak?14875_))))
    (define gx#core-bind-import!
      (lambda _g16672_
        (let ((_g16671_ (##length _g16672_)))
          (cond ((##fx= _g16671_ 1)
                 (apply (lambda (_in14866_)
                          (gx#core-bind-import!__0 _in14866_))
                        _g16672_))
                ((##fx= _g16671_ 2)
                 (apply (lambda (_in14872_ _ctx14873_)
                          (gx#core-bind-import!__1 _in14872_ _ctx14873_))
                        _g16672_))
                ((##fx= _g16671_ 3)
                 (apply (lambda (_in14877_ _ctx14878_ _force-weak?14879_)
                          (gx#core-bind-import!__%
                           _in14877_
                           _ctx14878_
                           _force-weak?14879_))
                        _g16672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g16672_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in14797_ _ctx14798_)
        (gx#core-bind-import!__% _in14797_ _ctx14798_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in14803_)
        (let ((_ctx14805_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in14803_ _ctx14805_))))
    (define gx#core-bind-weak-import!
      (lambda _g16674_
        (let ((_g16673_ (##length _g16674_)))
          (cond ((##fx= _g16673_ 1)
                 (apply (lambda (_in14803_)
                          (gx#core-bind-weak-import!__0 _in14803_))
                        _g16674_))
                ((##fx= _g16673_ 2)
                 (apply (lambda (_in14807_ _ctx14808_)
                          (gx#core-bind-weak-import!__% _in14807_ _ctx14808_))
                        _g16674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g16674_))))))
    (define gx#core-resolve-module-export
      (lambda (_out14688_)
        (letrec ((_subst14690_
                  (lambda (_key14736_)
                    (let* ((_key1473714745_ _key14736_)
                           (_else1473914753_ (lambda () _key14736_))
                           (_K1474114784_
                            (lambda (_mark14756_ _id14757_)
                              (let* ((_mark1475814764_ _mark14756_)
                                     (_E1476014768_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark1475814764_)))
                                     (_K1476114776_
                                      (lambda (_subst14771_)
                                        (let ((_$e14773_
                                               (if _subst14771_
                                                   (table-ref
                                                    _subst14771_
                                                    _id14757_
                                                    '#f)
                                                   '#f)))
                                          (if _$e14773_
                                              _$e14773_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key14736_))))))
                                (if (##structure-instance-of?
                                     _mark1475814764_
                                     'gx#expander-mark::t)
                                    (let* ((_e1476214779_
                                            (##vector-ref _mark1475814764_ '1))
                                           (_subst14782_ _e1476214779_))
                                      (_K1476114776_ _subst14782_))
                                    (_E1476014768_))))))
                      (if (##pair? _key1473714745_)
                          (let ((_hd1474214787_ (##car _key1473714745_))
                                (_tl1474314789_ (##cdr _key1473714745_)))
                            (let* ((_id14792_ _hd1474214787_)
                                   (_mark14794_ _tl1474314789_))
                              (_K1474114784_ _mark14794_ _id14792_)))
                          (_else1473914753_))))))
          (let* ((_out1469114701_ _out14688_)
                 (_E1469314705_
                  (lambda () (error '"No clause matching" _out1469114701_)))
                 (_K1469414712_
                  (lambda (_phi14708_ _key14709_ _ctx14710_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx14710_ _phi14708_)
                     (_subst14690_ _key14709_)))))
            (if (##structure-direct-instance-of?
                 _out1469114701_
                 'gx#module-export::t)
                (let* ((_e1469514715_ (##vector-ref _out1469114701_ '1))
                       (_ctx14718_ _e1469514715_)
                       (_e1469614720_ (##vector-ref _out1469114701_ '2))
                       (_key14723_ _e1469614720_)
                       (_e1469714725_ (##vector-ref _out1469114701_ '3))
                       (_phi14728_ _e1469714725_)
                       (_e1469814730_ (##vector-ref _out1469114701_ '4))
                       (_e1469914733_ (##vector-ref _out1469114701_ '5)))
                  (_K1469414712_ _phi14728_ _key14723_ _ctx14718_))
                (_E1469314705_))))))
    (define gx#core-module-export->import__%
      (lambda (_out14613_ _rename14614_ _dphi14615_)
        (let* ((_out1461614626_ _out14613_)
               (_E1461814630_
                (lambda () (error '"No clause matching" _out1461614626_)))
               (_K1461914642_
                (lambda (_weak?14633_
                         _name14634_
                         _phi14635_
                         _key14636_
                         _ctx14637_)
                  (##structure
                   gx#module-import::t
                   _out14613_
                   (let ((_$e14639_ _rename14614_))
                     (if _$e14639_ _$e14639_ _name14634_))
                   (fx+ _phi14635_ _dphi14615_)
                   _weak?14633_))))
          (if (##structure-direct-instance-of?
               _out1461614626_
               'gx#module-export::t)
              (let* ((_e1462014645_ (##vector-ref _out1461614626_ '1))
                     (_ctx14648_ _e1462014645_)
                     (_e1462114650_ (##vector-ref _out1461614626_ '2))
                     (_key14653_ _e1462114650_)
                     (_e1462214655_ (##vector-ref _out1461614626_ '3))
                     (_phi14658_ _e1462214655_)
                     (_e1462314660_ (##vector-ref _out1461614626_ '4))
                     (_name14663_ _e1462314660_)
                     (_e1462414665_ (##vector-ref _out1461614626_ '5))
                     (_weak?14668_ _e1462414665_))
                (_K1461914642_
                 _weak?14668_
                 _name14663_
                 _phi14658_
                 _key14653_
                 _ctx14648_))
              (_E1461814630_)))))
    (define gx#core-module-export->import__0
      (lambda (_out14673_)
        (let* ((_rename14675_ '#f) (_dphi14677_ '0))
          (gx#core-module-export->import__%
           _out14673_
           _rename14675_
           _dphi14677_))))
    (define gx#core-module-export->import__1
      (lambda (_out14679_ _rename14680_)
        (let ((_dphi14682_ '0))
          (gx#core-module-export->import__%
           _out14679_
           _rename14680_
           _dphi14682_))))
    (define gx#core-module-export->import
      (lambda _g16676_
        (let ((_g16675_ (##length _g16676_)))
          (cond ((##fx= _g16675_ 1)
                 (apply (lambda (_out14673_)
                          (gx#core-module-export->import__0 _out14673_))
                        _g16676_))
                ((##fx= _g16675_ 2)
                 (apply (lambda (_out14679_ _rename14680_)
                          (gx#core-module-export->import__1
                           _out14679_
                           _rename14680_))
                        _g16676_))
                ((##fx= _g16675_ 3)
                 (apply (lambda (_out14684_ _rename14685_ _dphi14686_)
                          (gx#core-module-export->import__%
                           _out14684_
                           _rename14685_
                           _dphi14686_))
                        _g16676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g16676_))))))
    (define gx#core-expand-module%
      (lambda (_stx14541_)
        (letrec ((_make-context14543_
                  (lambda (_id14594_)
                    (let* ((_super14596_ (gx#current-expander-context))
                           (_bind-id14598_ (gx#stx-e _id14594_))
                           (_mod-id14600_
                            (if (##structure-instance-of?
                                 _super14596_
                                 'gx#module-context::t)
                                (make-symbol
                                 (##structure-ref
                                  _super14596_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id14598_)
                                _bind-id14598_))
                           (_ns14602_ (symbol->string _mod-id14600_))
                           (_path14609_
                            (if (##structure-instance-of?
                                 _super14596_
                                 'gx#module-context::t)
                                (let ((_path14604_
                                       (##unchecked-structure-ref
                                        _super14596_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path14604_)
                                          (null? _path14604_))
                                      (cons _bind-id14598_ _path14604_)
                                      (if (not _path14604_)
                                          _bind-id14598_
                                          (cons _bind-id14598_
                                                (cons _path14604_ '())))))
                                _bind-id14598_)))
                      (let ((__obj16652
                             (make-object gx#module-context::t '11)))
                        (gx#module-context:::init!
                         __obj16652
                         _mod-id14600_
                         _super14596_
                         _ns14602_
                         _path14609_)
                        __obj16652)))))
          (let* ((_e1454414554_ _stx14541_)
                 (_E1454614558_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1454414554_)))
                 (_E1454514590_
                  (lambda ()
                    (if (gx#stx-pair? _e1454414554_)
                        (let ((_e1454714562_ (gx#syntax-e _e1454414554_)))
                          (let ((_hd1454814565_ (##car _e1454714562_))
                                (_tl1454914567_ (##cdr _e1454714562_)))
                            (if (gx#stx-pair? _tl1454914567_)
                                (let ((_e1455014570_
                                       (gx#syntax-e _tl1454914567_)))
                                  (let ((_hd1455114573_ (##car _e1455014570_))
                                        (_tl1455214575_ (##cdr _e1455014570_)))
                                    (let* ((_id14578_ _hd1455114573_)
                                           (_body14580_ _tl1455214575_))
                                      (if (and (gx#identifier? _id14578_)
                                               (gx#stx-list? _body14580_))
                                          (let* ((_ctx14582_
                                                  (_make-context14543_
                                                   _id14578_))
                                                 (_body14584_
                                                  (gx#core-expand-module-begin
                                                   _body14580_
                                                   _ctx14582_))
                                                 (_body14586_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body14584_)
                                                   (gx#stx-source
                                                    _stx14541_))))
                                            (##unchecked-structure-set!
                                             _ctx14582_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body14586_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx14582_
                                             _body14586_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id14578_
                                             _ctx14582_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id14578_)
                                              _body14586_)
                                             (gx#stx-source _stx14541_)))
                                          (_E1454614558_)))))
                                (_E1454614558_))))
                        (_E1454614558_)))))
            (_E1454514590_)))))
    (define gx#core-expand-module-begin
      (lambda (_body14507_ _ctx14508_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx14511_
                   (gx#core-expand-head (cons '%%begin-module _body14507_)))
                  (_e1451214519_ _stx14511_)
                  (_E1451414523_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx14511_)))
                  (_E1451314537_
                   (lambda ()
                     (if (gx#stx-pair? _e1451214519_)
                         (let ((_e1451514527_ (gx#syntax-e _e1451214519_)))
                           (let ((_hd1451614530_ (##car _e1451514527_))
                                 (_tl1451714532_ (##cdr _e1451514527_)))
                             (if (and (gx#identifier? _hd1451614530_)
                                      (gx#core-identifier=?
                                       _hd1451614530_
                                       '%#begin-module))
                                 (let ((_body14535_ _tl1451714532_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx14511_)
                                           _body14535_
                                           (gx#core-expand-module-body
                                            _body14535_))
                                       (_E1451414523_)))
                                 (_E1451414523_))))
                         (_E1451414523_)))))
             (_E1451314537_)))
         gx#current-expander-context
         _ctx14508_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body14303_)
        (letrec ((_expand-special14305_
                  (lambda (_hd14434_ _K14435_ _rest14436_ _r14437_)
                    (let* ((_e1443814455_ _hd14434_)
                           (_E1445014459_
                            (lambda ()
                              (_K14435_
                               _rest14436_
                               (cons (gx#core-expand-top _hd14434_)
                                     _r14437_))))
                           (_E1444014471_
                            (lambda ()
                              (if (gx#stx-pair? _e1443814455_)
                                  (let ((_e1445114463_
                                         (gx#syntax-e _e1443814455_)))
                                    (let ((_hd1445214466_
                                           (##car _e1445114463_))
                                          (_tl1445314468_
                                           (##cdr _e1445114463_)))
                                      (if (and (gx#identifier? _hd1445214466_)
                                               (gx#core-identifier=?
                                                _hd1445214466_
                                                '%#export))
                                          (if '#t
                                              (_K14435_
                                               _rest14436_
                                               (cons _hd14434_ _r14437_))
                                              (_E1445014459_))
                                          (_E1445014459_))))
                                  (_E1445014459_))))
                           (_E1443914503_
                            (lambda ()
                              (if (gx#stx-pair? _e1443814455_)
                                  (let ((_e1444114475_
                                         (gx#syntax-e _e1443814455_)))
                                    (let ((_hd1444214478_
                                           (##car _e1444114475_))
                                          (_tl1444314480_
                                           (##cdr _e1444114475_)))
                                      (if (and (gx#identifier? _hd1444214478_)
                                               (gx#core-identifier=?
                                                _hd1444214478_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1444314480_)
                                              (let ((_e1444414483_
                                                     (gx#syntax-e
                                                      _tl1444314480_)))
                                                (let ((_hd1444514486_
                                                       (##car _e1444414483_))
                                                      (_tl1444614488_
                                                       (##cdr _e1444414483_)))
                                                  (let ((_hd-bind14491_
                                                         _hd1444514486_))
                                                    (if (gx#stx-pair?
                                                         _tl1444614488_)
                                                        (let ((_e1444714493_
                                                               (gx#syntax-e
                                                                _tl1444614488_)))
                                                          (let ((_hd1444814496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1444714493_))
                        (_tl1444914498_ (##cdr _e1444714493_)))
                    (let ((_expr14501_ _hd1444814496_))
                      (if (gx#stx-null? _tl1444914498_)
                          (if (gx#core-bind-values? _hd-bind14491_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind14491_)
                                (_K14435_
                                 _rest14436_
                                 (cons _hd14434_ _r14437_)))
                              (_E1444014471_))
                          (_E1444014471_)))))
                (_E1444014471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1444014471_))
                                          (_E1444014471_))))
                                  (_E1444014471_)))))
                      (_E1443914503_))))
                 (_expand-body14306_
                  (lambda (_rbody14308_)
                    (let _lp14310_ ((_rest14312_ _rbody14308_)
                                    (_body14313_ '()))
                      (let* ((_rest1431414322_ _rest14312_)
                             (_else1431614330_ (lambda () _body14313_))
                             (_K1431814422_
                              (lambda (_rest14333_ _hd14334_)
                                (let* ((_e1433514356_ _hd14334_)
                                       (_E1435114360_
                                        (lambda ()
                                          (_lp14310_
                                           _rest14333_
                                           (cons (gx#core-expand-expression
                                                  _hd14334_)
                                                 _body14313_))))
                                       (_E1434714374_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1433514356_)
                                              (let ((_e1435214364_
                                                     (gx#syntax-e
                                                      _e1433514356_)))
                                                (let ((_hd1435314367_
                                                       (##car _e1435214364_))
                                                      (_tl1435414369_
                                                       (##cdr _e1435214364_)))
                                                  (let ((_form14372_
                                                         _hd1435314367_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form14372_
                                                         gx#special-form-binding?)
                                                        (_lp14310_
                                                         _rest14333_
                                                         (cons _hd14334_
                                                               _body14313_))
                                                        (_E1435114360_)))))
                                              (_E1435114360_))))
                                       (_E1433714386_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1433514356_)
                                              (let ((_e1434814378_
                                                     (gx#syntax-e
                                                      _e1433514356_)))
                                                (let ((_hd1434914381_
                                                       (##car _e1434814378_))
                                                      (_tl1435014383_
                                                       (##cdr _e1434814378_)))
                                                  (if (and (gx#identifier?
                                                            _hd1434914381_)
                                                           (gx#core-identifier=?
                                                            _hd1434914381_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp14310_
                                                           _rest14333_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd14334_)
                         _body14313_))
                  (_E1434714374_))
              (_E1434714374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1434714374_))))
                                       (_E1433614418_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1433514356_)
                                              (let ((_e1433814390_
                                                     (gx#syntax-e
                                                      _e1433514356_)))
                                                (let ((_hd1433914393_
                                                       (##car _e1433814390_))
                                                      (_tl1434014395_
                                                       (##cdr _e1433814390_)))
                                                  (if (and (gx#identifier?
                                                            _hd1433914393_)
                                                           (gx#core-identifier=?
                                                            _hd1433914393_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1434014395_)
                                                          (let ((_e1434114398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1434014395_)))
                    (let ((_hd1434214401_ (##car _e1434114398_))
                          (_tl1434314403_ (##cdr _e1434114398_)))
                      (let ((_hd-bind14406_ _hd1434214401_))
                        (if (gx#stx-pair? _tl1434314403_)
                            (let ((_e1434414408_ (gx#syntax-e _tl1434314403_)))
                              (let ((_hd1434514411_ (##car _e1434414408_))
                                    (_tl1434614413_ (##cdr _e1434414408_)))
                                (let ((_expr14416_ _hd1434514411_))
                                  (if (gx#stx-null? _tl1434614413_)
                                      (if '#t
                                          (_lp14310_
                                           _rest14333_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind14406_)
                                                   (gx#core-expand-expression
                                                    _expr14416_))
                                                  (gx#stx-source _hd14334_))
                                                 _body14313_))
                                          (_E1433714386_))
                                      (_E1433714386_)))))
                            (_E1433714386_)))))
                  (_E1433714386_))
              (_E1433714386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1433714386_)))))
                                  (_E1433614418_)))))
                        (if (##pair? _rest1431414322_)
                            (let ((_hd1431914425_ (##car _rest1431414322_))
                                  (_tl1432014427_ (##cdr _rest1431414322_)))
                              (let* ((_hd14430_ _hd1431914425_)
                                     (_rest14432_ _tl1432014427_))
                                (_K1431814422_ _rest14432_ _hd14430_)))
                            (_else1431614330_)))))))
          (_expand-body14306_
           (gx#core-expand-block__%
            (cons '%#begin-module _body14303_)
            _expand-special14305_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx14146_
               _expanded?14147_
               _method14148_
               _current-phi14149_
               _expand114150_)
        (letrec ((_K14152_
                  (lambda (_rest14270_ _r14271_)
                    (let* ((_e1427214279_ _rest14270_)
                           (_E1427414283_ (lambda () _r14271_))
                           (_E1427314299_
                            (lambda ()
                              (if (gx#stx-pair? _e1427214279_)
                                  (let ((_e1427514287_
                                         (gx#syntax-e _e1427214279_)))
                                    (let ((_hd1427614290_
                                           (##car _e1427514287_))
                                          (_tl1427714292_
                                           (##cdr _e1427514287_)))
                                      (let* ((_hd14295_ _hd1427614290_)
                                             (_rest14297_ _tl1427714292_))
                                        (if '#t
                                            (_step14153_
                                             _hd14295_
                                             _rest14297_
                                             _r14271_)
                                            (_E1427414283_)))))
                                  (_E1427414283_)))))
                      (_E1427314299_))))
                 (_step14153_
                  (lambda (_hd14184_ _rest14185_ _r14186_)
                    (let* ((_e1418714205_ _hd14184_)
                           (_E1420014209_
                            (lambda ()
                              (if (_expanded?14147_ (gx#stx-e _hd14184_))
                                  (_K14152_
                                   _rest14185_
                                   (cons (gx#stx-e _hd14184_) _r14186_))
                                  (_expand114150_
                                   _hd14184_
                                   _K14152_
                                   _rest14185_
                                   _r14186_))))
                           (_E1419614225_
                            (lambda ()
                              (if (gx#stx-pair? _e1418714205_)
                                  (let ((_e1420114213_
                                         (gx#syntax-e _e1418714205_)))
                                    (let ((_hd1420214216_
                                           (##car _e1420114213_))
                                          (_tl1420314218_
                                           (##cdr _e1420114213_)))
                                      (let* ((_macro14221_ _hd1420214216_)
                                             (_body14223_ _tl1420314218_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro14221_
                                             gx#syntax-binding?)
                                            (_K14152_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro14221_)
                                                    _hd14184_
                                                    _method14148_)
                                                   _rest14185_)
                                             _r14186_)
                                            (_E1420014209_)))))
                                  (_E1420014209_))))
                           (_E1418914239_
                            (lambda ()
                              (if (gx#stx-pair? _e1418714205_)
                                  (let ((_e1419714229_
                                         (gx#syntax-e _e1418714205_)))
                                    (let ((_hd1419814232_
                                           (##car _e1419714229_))
                                          (_tl1419914234_
                                           (##cdr _e1419714229_)))
                                      (if (eq? (gx#stx-e _hd1419814232_)
                                               'begin:)
                                          (let ((_body14237_ _tl1419914234_))
                                            (if '#t
                                                (_K14152_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest14185_
                                                  _body14237_)
                                                 _r14186_)
                                                (_E1419614225_)))
                                          (_E1419614225_))))
                                  (_E1419614225_))))
                           (_E1418814266_
                            (lambda ()
                              (if (gx#stx-pair? _e1418714205_)
                                  (let ((_e1419014243_
                                         (gx#syntax-e _e1418714205_)))
                                    (let ((_hd1419114246_
                                           (##car _e1419014243_))
                                          (_tl1419214248_
                                           (##cdr _e1419014243_)))
                                      (if (eq? (gx#stx-e _hd1419114246_) 'phi:)
                                          (if (gx#stx-pair? _tl1419214248_)
                                              (let ((_e1419314251_
                                                     (gx#syntax-e
                                                      _tl1419214248_)))
                                                (let ((_hd1419414254_
                                                       (##car _e1419314251_))
                                                      (_tl1419514256_
                                                       (##cdr _e1419314251_)))
                                                  (let* ((_dphi14259_
                                                          _hd1419414254_)
                                                         (_body14261_
                                                          _tl1419514256_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi14259_)
                                                        (let ((_rbody14264_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K14152_ _body14261_ '()))
                        _current-phi14149_
                        (fx+ (gx#stx-e _dphi14259_) (_current-phi14149_)))))
                  (_K14152_ _rest14185_ (foldr1 cons _r14186_ _rbody14264_)))
                (_E1418914239_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1418914239_))
                                          (_E1418914239_))))
                                  (_E1418914239_)))))
                      (_E1418814266_)))))
          (let* ((_e1415414161_ _stx14146_)
                 (_E1415614165_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1415414161_)))
                 (_E1415514180_
                  (lambda ()
                    (if (gx#stx-pair? _e1415414161_)
                        (let ((_e1415714169_ (gx#syntax-e _e1415414161_)))
                          (let ((_hd1415814172_ (##car _e1415714169_))
                                (_tl1415914174_ (##cdr _e1415714169_)))
                            (let ((_body14177_ _tl1415914174_))
                              (if '#t
                                  (if (_current-phi14149_)
                                      (_K14152_ _body14177_ '())
                                      (call-with-parameters
                                       (lambda () (_K14152_ _body14177_ '()))
                                       _current-phi14149_
                                       (gx#current-expander-phi)))
                                  (_E1415614165_)))))
                        (_E1415614165_)))))
            (_E1415514180_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx13813_ _internal-expand?13814_)
        (letrec ((_expand113816_
                  (lambda (_hd14126_ _K14127_ _rest14128_ _r14129_)
                    (if (gx#core-bound-module? _hd14126_)
                        (_import113817_
                         (gx#syntax-local-e__0 _hd14126_)
                         _K14127_
                         _rest14128_
                         _r14129_)
                        (if (gx#core-library-module-path? _hd14126_)
                            (_import113817_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd14126_))
                             _K14127_
                             _rest14128_
                             _r14129_)
                            (if (gx#core-library-relative-module-path?
                                 _hd14126_)
                                (_import113817_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd14126_))
                                 _K14127_
                                 _rest14128_
                                 _r14129_)
                                (let ((_e14131_ (gx#stx-e _hd14126_)))
                                  (if (pair? _e14131_)
                                      (let ((_$e14133_
                                             (gx#stx-e (car _e14131_))))
                                        (if (eq? 'spec: _$e14133_)
                                            (_import-spec13820_
                                             _hd14126_
                                             _K14127_
                                             _rest14128_
                                             _r14129_)
                                            (if (eq? 'in: _$e14133_)
                                                (_import-submodule13818_
                                                 _hd14126_
                                                 _K14127_
                                                 _rest14128_
                                                 _r14129_)
                                                (if (eq? 'runtime: _$e14133_)
                                                    (_import-runtime13819_
                                                     _hd14126_
                                                     _K14127_
                                                     _rest14128_
                                                     _r14129_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx13813_
                                                     _hd14126_)))))
                                      (if (string? _e14131_)
                                          (_import113817_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd14126_
                                             (gx#stx-source _stx13813_)))
                                           _K14127_
                                           _rest14128_
                                           _r14129_)
                                          (if (##structure-instance-of?
                                               _e14131_
                                               'gx#module-context::t)
                                              (_K14127_
                                               _rest14128_
                                               (cons _e14131_ _r14129_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx13813_
                                               _hd14126_))))))))))
                 (_import113817_
                  (lambda (_ctx14115_ _K14116_ _rest14117_ _r14118_)
                    (let ((_dphi14120_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K14116_
                       _rest14117_
                       (cons (##structure
                              gx#import-set::t
                              _ctx14115_
                              _dphi14120_
                              (map (lambda (_g1412114123_)
                                     (gx#core-module-export->import__%
                                      _g1412114123_
                                      '#f
                                      _dphi14120_))
                                   (##unchecked-structure-ref
                                    _ctx14115_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r14118_)))))
                 (_import-submodule13818_
                  (lambda (_hd14082_ _K14083_ _rest14084_ _r14085_)
                    (let* ((_e1408614093_ _hd14082_)
                           (_E1408814097_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1408614093_)))
                           (_E1408714111_
                            (lambda ()
                              (if (gx#stx-pair? _e1408614093_)
                                  (let ((_e1408914101_
                                         (gx#syntax-e _e1408614093_)))
                                    (let ((_hd1409014104_
                                           (##car _e1408914101_))
                                          (_tl1409114106_
                                           (##cdr _e1408914101_)))
                                      (let ((_spath14109_ _tl1409114106_))
                                        (if '#t
                                            (_import113817_
                                             (_import-spec-source13821_
                                              _spath14109_)
                                             _K14083_
                                             _rest14084_
                                             _r14085_)
                                            (_E1408814097_)))))
                                  (_E1408814097_)))))
                      (_E1408714111_))))
                 (_import-runtime13819_
                  (lambda (_hd14049_ _K14050_ _rest14051_ _r14052_)
                    (let* ((_e1405314060_ _hd14049_)
                           (_E1405514064_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1405314060_)))
                           (_E1405414078_
                            (lambda ()
                              (if (gx#stx-pair? _e1405314060_)
                                  (let ((_e1405614068_
                                         (gx#syntax-e _e1405314060_)))
                                    (let ((_hd1405714071_
                                           (##car _e1405614068_))
                                          (_tl1405814073_
                                           (##cdr _e1405614068_)))
                                      (let ((_spath14076_ _tl1405814073_))
                                        (if '#t
                                            (_K14050_
                                             _rest14051_
                                             (cons (_import-spec-source13821_
                                                    _spath14076_)
                                                   _r14052_))
                                            (_E1405514064_)))))
                                  (_E1405514064_)))))
                      (_E1405414078_))))
                 (_import-spec13820_
                  (lambda (_hd13888_ _K13889_ _rest13890_ _r13891_)
                    (let* ((_e1389213909_ _hd13888_)
                           (_E1390113913_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1389213909_)))
                           (_E1389414023_
                            (lambda ()
                              (if (gx#stx-pair? _e1389213909_)
                                  (let ((_e1390213917_
                                         (gx#syntax-e _e1389213909_)))
                                    (let ((_hd1390313920_
                                           (##car _e1390213917_))
                                          (_tl1390413922_
                                           (##cdr _e1390213917_)))
                                      (if (gx#stx-pair? _tl1390413922_)
                                          (let ((_e1390513925_
                                                 (gx#syntax-e _tl1390413922_)))
                                            (let ((_hd1390613928_
                                                   (##car _e1390513925_))
                                                  (_tl1390713930_
                                                   (##cdr _e1390513925_)))
                                              (let* ((_path13933_
                                                      _hd1390613928_)
                                                     (_specs13935_
                                                      _tl1390713930_))
                                                (if '#t
                                                    (let ((_src-ctx13937_
                                                           (_import-spec-source13821_
                                                            _path13933_))
                                                          (_exports13938_
                                                           (make-table))
                                                          (_specs13939_
                                                           (gx#syntax->list
                                                            _specs13935_)))
                                                      (for-each
                                                       (lambda (_out13941_)
                                                         (table-set!
                                                          _exports13938_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out13941_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out13941_
                         '4
                         gx#module-export::t
                         '#f))
                  _out13941_))
               (##unchecked-structure-ref
                _src-ctx13937_
                '9
                gx#module-context::t
                '#f))
              (_K13889_
               _rest13890_
               (foldl1 (lambda (_spec13943_ _r13944_)
                         (let* ((_e1394513961_ _spec13943_)
                                (_E1394713965_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _e1394513961_)))
                                (_E1394614019_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1394513961_)
                                       (let ((_e1394813969_
                                              (gx#syntax-e _e1394513961_)))
                                         (let ((_hd1394913972_
                                                (##car _e1394813969_))
                                               (_tl1395013974_
                                                (##cdr _e1394813969_)))
                                           (let ((_phi13977_ _hd1394913972_))
                                             (if (gx#stx-pair? _tl1395013974_)
                                                 (let ((_e1395113979_
                                                        (gx#syntax-e
                                                         _tl1395013974_)))
                                                   (let ((_hd1395213982_
                                                          (##car _e1395113979_))
                                                         (_tl1395313984_
                                                          (##cdr _e1395113979_)))
                                                     (let ((_name13987_
                                                            _hd1395213982_))
                                                       (if (gx#stx-pair?
                                                            _tl1395313984_)
                                                           (let ((_e1395413989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1395313984_)))
                     (let ((_hd1395513992_ (##car _e1395413989_))
                           (_tl1395613994_ (##cdr _e1395413989_)))
                       (let ((_src-phi13997_ _hd1395513992_))
                         (if (gx#stx-pair? _tl1395613994_)
                             (let ((_e1395713999_
                                    (gx#syntax-e _tl1395613994_)))
                               (let ((_hd1395814002_ (##car _e1395713999_))
                                     (_tl1395914004_ (##cdr _e1395713999_)))
                                 (let ((_src-name14007_ _hd1395814002_))
                                   (if (gx#stx-null? _tl1395914004_)
                                       (if (and (gx#stx-fixnum? _src-phi13997_)
                                                (gx#identifier?
                                                 _src-name14007_)
                                                (gx#stx-fixnum? _phi13977_)
                                                (gx#identifier? _name13987_))
                                           (let ((_src-phi14009_
                                                  (gx#stx-e _src-phi13997_))
                                                 (_src-name14010_
                                                  (gx#core-identifier-key
                                                   _src-name14007_))
                                                 (_phi14011_
                                                  (gx#stx-e _phi13977_))
                                                 (_name14012_
                                                  (gx#core-identifier-key
                                                   _name13987_)))
                                             (let ((_$e14014_
                                                    (table-ref
                                                     _exports13938_
                                                     (cons _src-phi14009_
                                                           _src-name14010_)
                                                     '#f)))
                                               (if _$e14014_
                                                   ((lambda (_out14017_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out14017_
                                                             _name14012_
                                                             (fx- _phi14011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi14009_))
                    _r13944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e14014_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx13813_
                                                    _hd13888_))))
                                           (_E1394713965_))
                                       (_E1394713965_)))))
                             (_E1394713965_)))))
                   (_E1394713965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1394713965_)))))
                                       (_E1394713965_)))))
                           (_E1394614019_)))
                       _r13891_
                       _specs13939_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1390113913_)))))
                                          (_E1390113913_))))
                                  (_E1390113913_))))
                           (_E1389314045_
                            (lambda ()
                              (if (gx#stx-pair? _e1389213909_)
                                  (let ((_e1389514027_
                                         (gx#syntax-e _e1389213909_)))
                                    (let ((_hd1389614030_
                                           (##car _e1389514027_))
                                          (_tl1389714032_
                                           (##cdr _e1389514027_)))
                                      (if (gx#stx-pair? _tl1389714032_)
                                          (let ((_e1389814035_
                                                 (gx#syntax-e _tl1389714032_)))
                                            (let ((_hd1389914038_
                                                   (##car _e1389814035_))
                                                  (_tl1390014040_
                                                   (##cdr _e1389814035_)))
                                              (let ((_path14043_
                                                     _hd1389914038_))
                                                (if (gx#stx-null?
                                                     _tl1390014040_)
                                                    (if '#t
                                                        (_K13889_
                                                         _rest13890_
                                                         (cons (_import-spec-source13821_
                                                                _path14043_)
                                                               _r13891_))
                                                        (_E1389414023_))
                                                    (_E1389414023_)))))
                                          (_E1389414023_))))
                                  (_E1389414023_)))))
                      (_E1389314045_))))
                 (_import-spec-source13821_
                  (lambda (_spath13886_)
                    (gx#core-import-nested-module _spath13886_ _stx13813_)))
                 (_import!13822_
                  (lambda (_rbody13835_)
                    (letrec* ((_current-ctx13837_
                               (gx#current-expander-context))
                              (_deps13838_ (make-table 'test: eq?))
                              (_bind!13839_
                               (lambda (_hd13884_)
                                 (gx#core-bind-import!__1
                                  _hd13884_
                                  _current-ctx13837_))))
                      (let _lp13841_ ((_rest13843_ _rbody13835_)
                                      (_body13844_ '()))
                        (let* ((_rest1384513853_ _rest13843_)
                               (_else1384713863_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx13837_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx13837_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx13837_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body13844_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx13861_ _g16677_)
                                     (gx#eval-module _ctx13861_))
                                   _deps13838_)
                                  _body13844_))
                               (_K1384913872_
                                (lambda (_rest13866_ _hd13867_)
                                  (if (##structure-direct-instance-of?
                                       _hd13867_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!13839_ _hd13867_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd13867_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd13867_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps13838_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd13867_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd13867_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!13839_
                                             (##unchecked-structure-ref
                                              _hd13867_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd13867_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps13838_
                                                 (##unchecked-structure-ref
                                                  _hd13867_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e13869_
                                                 (##structure-instance-of?
                                                  _hd13867_
                                                  'gx#module-context::t)))
                                            (if _$e13869_
                                                _$e13869_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx13813_
                                                 _hd13867_)))))
                                  (_lp13841_
                                   _rest13866_
                                   (cons _hd13867_ _body13844_)))))
                          (if (##pair? _rest1384513853_)
                              (let ((_hd1385013875_ (##car _rest1384513853_))
                                    (_tl1385113877_ (##cdr _rest1384513853_)))
                                (let* ((_hd13880_ _hd1385013875_)
                                       (_rest13882_ _tl1385113877_))
                                  (_K1384913872_ _rest13882_ _hd13880_)))
                              (_else1384713863_)))))))
                 (_expanded-import?13823_
                  (lambda (_e13827_)
                    (let ((_$e13829_
                           (##structure-direct-instance-of?
                            _e13827_
                            'gx#import-set::t)))
                      (if _$e13829_
                          _$e13829_
                          (let ((_$e13832_
                                 (##structure-direct-instance-of?
                                  _e13827_
                                  'gx#module-import::t)))
                            (if _$e13832_
                                _$e13832_
                                (##structure-instance-of?
                                 _e13827_
                                 'gx#module-context::t))))))))
          (let ((_rbody13825_
                 (gx#core-expand-import/export
                  _stx13813_
                  _expanded-import?13823_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand113816_)))
            (if _internal-expand?13814_
                (reverse _rbody13825_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!13822_ _rbody13825_))
                 (gx#stx-source _stx13813_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx14139_)
        (let ((_internal-expand?14141_ '#f))
          (gx#core-expand-import%__% _stx14139_ _internal-expand?14141_))))
    (define gx#core-expand-import%
      (lambda _g16679_
        (let ((_g16678_ (##length _g16679_)))
          (cond ((##fx= _g16678_ 1)
                 (apply (lambda (_stx14139_)
                          (gx#core-expand-import%__0 _stx14139_))
                        _g16679_))
                ((##fx= _g16678_ 2)
                 (apply (lambda (_stx14143_ _internal-expand?14144_)
                          (gx#core-expand-import%__%
                           _stx14143_
                           _internal-expand?14144_))
                        _g16679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g16679_))))))
    (define gx#core-import-nested-module
      (lambda (_spath13740_ _where13741_)
        (let* ((_e1374213749_ _spath13740_)
               (_E1374413753_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1374213749_)))
               (_E1374313808_
                (lambda ()
                  (if (gx#stx-pair? _e1374213749_)
                      (let ((_e1374513757_ (gx#syntax-e _e1374213749_)))
                        (let ((_hd1374613760_ (##car _e1374513757_))
                              (_tl1374713762_ (##cdr _e1374513757_)))
                          (let* ((_origin13765_ _hd1374613760_)
                                 (_sub13767_ _tl1374713762_))
                            (if '#t
                                (let ((_origin-ctx13769_
                                       (if (gx#stx-false? _origin13765_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin13765_))))
                                  (let _lp13771_ ((_rest13773_ _sub13767_)
                                                  (_ctx13774_
                                                   _origin-ctx13769_))
                                    (let* ((_e1377513782_ _rest13773_)
                                           (_E1377713786_
                                            (lambda () _ctx13774_))
                                           (_E1377613804_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1377513782_)
                                                  (let ((_e1377813790_
                                                         (gx#syntax-e
                                                          _e1377513782_)))
                                                    (let ((_hd1377913793_
                                                           (##car _e1377813790_))
                                                          (_tl1378013795_
                                                           (##cdr _e1377813790_)))
                                                      (let* ((_id13798_
                                                              _hd1377913793_)
                                                             (_rest13800_
                                                              _tl1378013795_))
                                                        (if '#t
                                                            (let ((_bind13802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id13798_ '0 _ctx13774_)))
                      (if (and (##structure-direct-instance-of?
                                _bind13802_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind13802_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13741_
                           _spath13740_
                           _id13798_))
                      (_lp13771_
                       _rest13800_
                       (##unchecked-structure-ref
                        _bind13802_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E1377713786_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1377713786_)))))
                                      (_E1377613804_))))
                                (_E1374413753_)))))
                      (_E1374413753_)))))
          (_E1374313808_))))
    (define gx#core-expand-import-source
      (lambda (_hd13738_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd13738_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx13246_ _internal-expand?13247_)
        (letrec* ((_make-export__1661716618_
                   (lambda (_bind13686_ _phi13687_ _ctx13688_ _name13689_)
                     (let* ((_key13691_
                             (##unchecked-structure-ref
                              _bind13686_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key13693_
                             (if _name13689_
                                 (gx#core-identifier-key _name13689_)
                                 _key13691_)))
                       (##structure
                        gx#module-export::t
                        _ctx13688_
                        _key13691_
                        _phi13687_
                        _export-key13693_
                        (let ((_$e13696_
                               (##structure-instance-of?
                                _bind13686_
                                'gx#extern-binding::t)))
                          (if _$e13696_
                              _$e13696_
                              (##structure-direct-instance-of?
                               _bind13686_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1661916622_
                   (lambda (_bind13702_)
                     (let* ((_phi13704_ (gx#current-export-expander-phi))
                            (_ctx13706_ (gx#current-expander-context))
                            (_name13708_ '#f))
                       (_make-export__1661716618_
                        _bind13702_
                        _phi13704_
                        _ctx13706_
                        _name13708_))))
                  (_make-export__1__1662016623_
                   (lambda (_bind13710_ _phi13711_)
                     (let* ((_ctx13713_ (gx#current-expander-context))
                            (_name13715_ '#f))
                       (_make-export__1661716618_
                        _bind13710_
                        _phi13711_
                        _ctx13713_
                        _name13715_))))
                  (_make-export__2__1662116624_
                   (lambda (_bind13717_ _phi13718_ _ctx13719_)
                     (let ((_name13721_ '#f))
                       (_make-export__1661716618_
                        _bind13717_
                        _phi13718_
                        _ctx13719_
                        _name13721_))))
                  (_make-export13249_
                   (lambda _g16681_
                     (let ((_g16680_ (##length _g16681_)))
                       (cond ((##fx= _g16680_ 1)
                              (apply (lambda (_bind13702_)
                                       (_make-export__0__1661916622_
                                        _bind13702_))
                                     _g16681_))
                             ((##fx= _g16680_ 2)
                              (apply (lambda (_bind13710_ _phi13711_)
                                       (_make-export__1__1662016623_
                                        _bind13710_
                                        _phi13711_))
                                     _g16681_))
                             ((##fx= _g16680_ 3)
                              (apply (lambda (_bind13717_
                                              _phi13718_
                                              _ctx13719_)
                                       (_make-export__2__1662116624_
                                        _bind13717_
                                        _phi13718_
                                        _ctx13719_))
                                     _g16681_))
                             ((##fx= _g16680_ 4)
                              (apply (lambda (_bind13723_
                                              _phi13724_
                                              _ctx13725_
                                              _name13726_)
                                       (_make-export__1661716618_
                                        _bind13723_
                                        _phi13724_
                                        _ctx13725_
                                        _name13726_))
                                     _g16681_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g16681_))))))
                  (_expand113250_
                   (lambda (_hd13399_ _K13400_ _rest13401_ _r13402_)
                     (let* ((_e1340313435_ _hd13399_)
                            (_E1343013439_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx13246_
                                _hd13399_)))
                            (_E1342013518_
                             (lambda ()
                               (if (gx#stx-pair? _e1340313435_)
                                   (let ((_e1343113443_
                                          (gx#syntax-e _e1340313435_)))
                                     (let ((_hd1343213446_
                                            (##car _e1343113443_))
                                           (_tl1343313448_
                                            (##cdr _e1343113443_)))
                                       (if (eq? (gx#stx-e _hd1343213446_)
                                                'import:)
                                           (let ((_in13451_ _tl1343313448_))
                                             (if (gx#stx-list? _in13451_)
                                                 (let _lp13453_ ((_in-rest13455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in13451_)
                         (_r13456_ _r13402_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1345713464_
                                                           _in-rest13455_)
                                                          (_E1345913468_
                                                           (lambda ()
                                                             (_K13400_
                                                              _rest13401_
                                                              _r13456_)))
                                                          (_E1345813514_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1345713464_)
                         (let ((_e1346013472_ (gx#syntax-e _e1345713464_)))
                           (let ((_hd1346113475_ (##car _e1346013472_))
                                 (_tl1346213477_ (##cdr _e1346013472_)))
                             (let* ((_hd13480_ _hd1346113475_)
                                    (_in-rest13482_ _tl1346213477_))
                               (if '#t
                                   (let ((_src13512_
                                          (if (gx#core-bound-module? _hd13480_)
                                              (gx#syntax-local-e__0 _hd13480_)
                                              (if (gx#core-library-module-path?
                                                   _hd13480_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd13480_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd13480_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd13480_))
                                                      (if (gx#stx-string?
                                                           _hd13480_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd13480_
                                                            (gx#stx-source
                                                             _stx13246_)))
                                                          (let* ((_e1348313490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd13480_)
                         (_E1348513494_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx13246_
                             _hd13480_)))
                         (_E1348413508_
                          (lambda ()
                            (if (gx#stx-pair? _e1348313490_)
                                (let ((_e1348613498_
                                       (gx#syntax-e _e1348313490_)))
                                  (let ((_hd1348713501_ (##car _e1348613498_))
                                        (_tl1348813503_ (##cdr _e1348613498_)))
                                    (if (eq? (gx#stx-e _hd1348713501_) 'in:)
                                        (let ((_spath13506_ _tl1348813503_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath13506_
                                               _stx13246_)
                                              (_E1348513494_)))
                                        (_E1348513494_))))
                                (_E1348513494_)))))
                    (_E1348413508_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp13453_
                                      _in-rest13482_
                                      (_export-imports13251_
                                       _src13512_
                                       _r13456_)))
                                   (_E1345913468_)))))
                         (_E1345913468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1345813514_)))
                                                 (_E1343013439_)))
                                           (_E1343013439_))))
                                   (_E1343013439_))))
                            (_E1340713557_
                             (lambda ()
                               (if (gx#stx-pair? _e1340313435_)
                                   (let ((_e1342113522_
                                          (gx#syntax-e _e1340313435_)))
                                     (let ((_hd1342213525_
                                            (##car _e1342113522_))
                                           (_tl1342313527_
                                            (##cdr _e1342113522_)))
                                       (if (eq? (gx#stx-e _hd1342213525_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1342313527_)
                                               (let ((_e1342413530_
                                                      (gx#syntax-e
                                                       _tl1342313527_)))
                                                 (let ((_hd1342513533_
                                                        (##car _e1342413530_))
                                                       (_tl1342613535_
                                                        (##cdr _e1342413530_)))
                                                   (let ((_id13538_
                                                          _hd1342513533_))
                                                     (if (gx#stx-pair?
                                                          _tl1342613535_)
                                                         (let ((_e1342713540_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1342613535_)))
                   (let ((_hd1342813543_ (##car _e1342713540_))
                         (_tl1342913545_ (##cdr _e1342713540_)))
                     (let ((_name13548_ _hd1342813543_))
                       (if (gx#stx-null? _tl1342913545_)
                           (if '#t
                               (let* ((_phi13550_
                                       (gx#current-export-expander-phi))
                                      (_$e13552_
                                       (gx#core-resolve-identifier__1
                                        _id13538_
                                        _phi13550_)))
                                 (if _$e13552_
                                     ((lambda (_bind13555_)
                                        (_K13400_
                                         _rest13401_
                                         (cons (_make-export__1661716618_
                                                _bind13555_
                                                _phi13550_
                                                (gx#current-expander-context)
                                                _name13548_)
                                               _r13402_)))
                                      _$e13552_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx13246_
                                      _hd13399_
                                      _id13538_)))
                               (_E1342013518_))
                           (_E1342013518_)))))
                 (_E1342013518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1342013518_))
                                           (_E1342013518_))))
                                   (_E1342013518_))))
                            (_E1340613606_
                             (lambda ()
                               (if (gx#stx-pair? _e1340313435_)
                                   (let ((_e1340813561_
                                          (gx#syntax-e _e1340313435_)))
                                     (let ((_hd1340913564_
                                            (##car _e1340813561_))
                                           (_tl1341013566_
                                            (##cdr _e1340813561_)))
                                       (if (eq? (gx#stx-e _hd1340913564_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1341013566_)
                                               (let ((_e1341113569_
                                                      (gx#syntax-e
                                                       _tl1341013566_)))
                                                 (let ((_hd1341213572_
                                                        (##car _e1341113569_))
                                                       (_tl1341313574_
                                                        (##cdr _e1341113569_)))
                                                   (let ((_phi13577_
                                                          _hd1341213572_))
                                                     (if (gx#stx-pair?
                                                          _tl1341313574_)
                                                         (let ((_e1341413579_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1341313574_)))
                   (let ((_hd1341513582_ (##car _e1341413579_))
                         (_tl1341613584_ (##cdr _e1341413579_)))
                     (let ((_id13587_ _hd1341513582_))
                       (if (gx#stx-pair? _tl1341613584_)
                           (let ((_e1341713589_ (gx#syntax-e _tl1341613584_)))
                             (let ((_hd1341813592_ (##car _e1341713589_))
                                   (_tl1341913594_ (##cdr _e1341713589_)))
                               (let ((_name13597_ _hd1341813592_))
                                 (if (gx#stx-null? _tl1341913594_)
                                     (if (and (gx#stx-fixnum? _phi13577_)
                                              (gx#identifier? _id13587_)
                                              (gx#identifier? _name13597_))
                                         (let* ((_phi13599_
                                                 (gx#stx-e _phi13577_))
                                                (_$e13601_
                                                 (gx#core-resolve-identifier__1
                                                  _id13587_
                                                  _phi13599_)))
                                           (if _$e13601_
                                               ((lambda (_bind13604_)
                                                  (_K13400_
                                                   _rest13401_
                                                   (cons (_make-export__1661716618_
                                                          _bind13604_
                                                          _phi13599_
                                                          (gx#current-expander-context)
                                                          _name13597_)
                                                         _r13402_)))
                                                _$e13601_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx13246_
                                                _hd13399_
                                                _id13587_)))
                                         (_E1340713557_))
                                     (_E1340713557_)))))
                           (_E1340713557_)))))
                 (_E1340713557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1340713557_))
                                           (_E1340713557_))))
                                   (_E1340713557_))))
                            (_E1340513617_
                             (lambda ()
                               (let ((_id13610_ _e1340313435_))
                                 (if (gx#identifier? _id13610_)
                                     (let ((_$e13612_
                                            (gx#core-resolve-identifier__1
                                             _id13610_
                                             (gx#current-export-expander-phi))))
                                       (if _$e13612_
                                           ((lambda (_bind13615_)
                                              (_K13400_
                                               _rest13401_
                                               (cons (_make-export__0__1661916622_
                                                      _bind13615_)
                                                     _r13402_)))
                                            _$e13612_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx13246_
                                            _hd13399_)))
                                     (_E1340613606_)))))
                            (_E1340413681_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1340313435_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx13621_
                                               (gx#current-expander-context))
                                              (_current-phi13623_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx13625_
                                               (gx#core-context-shift
                                                _current-ctx13621_
                                                _current-phi13623_))
                                              (_phi-bind13627_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx13625_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp13630_ ((_bind-rest13632_
                                                          _phi-bind13627_)
                                                         (_set13633_ '()))
                                           (let* ((_bind-rest1363413644_
                                                   _bind-rest13632_)
                                                  (_else1363613652_
                                                   (lambda ()
                                                     (_K13400_
                                                      _rest13401_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi13623_
                                                             _set13633_)
                                                            _r13402_))))
                                                  (_K1363813662_
                                                   (lambda (_bind-rest13655_
                                                            _bind13656_
                                                            _key13657_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind13656_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind13656_))
                                                         (_lp13630_
                                                          _bind-rest13655_
                                                          _set13633_)
                                                         (_lp13630_
                                                          _bind-rest13655_
                                                          (cons (_make-export__2__1662116624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind13656_
                         _current-phi13623_
                         _current-ctx13621_)
                        _set13633_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1363413644_)
                                                 (let ((_hd1363913665_
                                                        (##car _bind-rest1363413644_))
                                                       (_tl1364013667_
                                                        (##cdr _bind-rest1363413644_)))
                                                   (if (##pair? _hd1363913665_)
                                                       (let ((_hd1364113670_
                                                              (##car _hd1363913665_))
                                                             (_tl1364213672_
                                                              (##cdr _hd1363913665_)))
                                                         (let* ((_key13675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1364113670_)
                        (_bind13677_ _tl1364213672_)
                        (_bind-rest13679_ _tl1364013667_))
                   (_K1363813662_ _bind-rest13679_ _bind13677_ _key13675_)))
               (_else1363613652_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1363613652_)))))
                                       (_E1340513617_))
                                   (_E1340513617_)))))
                       (_E1340413681_))))
                  (_export-imports13251_
                   (lambda (_src13275_ _r13276_)
                     (letrec* ((_current-ctx13278_
                                (gx#current-expander-context))
                               (_current-phi13279_
                                (gx#current-export-expander-phi))
                               (_import->export13280_
                                (lambda (_in13361_)
                                  (let* ((_in1336213370_ _in13361_)
                                         (_E1336413374_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1336213370_)))
                                         (_K1336513381_
                                          (lambda (_phi13377_
                                                   _key13378_
                                                   _out13379_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx13278_
                                             _key13378_
                                             _phi13377_
                                             _key13378_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1336213370_
                                         'gx#module-import::t)
                                        (let* ((_e1336613384_
                                                (##vector-ref
                                                 _in1336213370_
                                                 '1))
                                               (_out13387_ _e1336613384_)
                                               (_e1336713389_
                                                (##vector-ref
                                                 _in1336213370_
                                                 '2))
                                               (_key13392_ _e1336713389_)
                                               (_e1336813394_
                                                (##vector-ref
                                                 _in1336213370_
                                                 '3))
                                               (_phi13397_ _e1336813394_))
                                          (_K1336513381_
                                           _phi13397_
                                           _key13392_
                                           _out13387_))
                                        (_E1336413374_)))))
                               (_fold-e13281_
                                (lambda (_in13283_ _r13284_)
                                  (let* ((_in1328513299_ _in13283_)
                                         (_else1328813307_
                                          (lambda () _r13284_)))
                                    (let ((_K1329413343_
                                           (lambda (_phi13339_
                                                    _key13340_
                                                    _out13341_)
                                             (if (and (fx= _phi13339_
                                                           _current-phi13279_)
                                                      (eq? _src13275_
                                                           (##unchecked-structure-ref
                                                            _out13341_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export13280_
                                                        _in13283_)
                                                       _r13284_)
                                                 _r13284_)))
                                          (_K1329013318_
                                           (lambda (_imports13311_
                                                    _phi13312_
                                                    _ctx13313_)
                                             (if (and (fx= _phi13312_
                                                           _current-phi13279_)
                                                      (eq? _src13275_
                                                           _ctx13313_))
                                                 (foldl1 (lambda (_in13315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r13316_)
                   (cons (_import->export13280_ _in13315_) _r13316_))
                 _r13284_
                 _imports13311_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r13284_))))
                                      (let ((_try-match1328713336_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1328513299_
                                                    'gx#import-set::t)
                                                   (let* ((_e1329113321_
                                                           (##vector-ref
                                                            _in1328513299_
                                                            '1))
                                                          (_e1329213326_
                                                           (##vector-ref
                                                            _in1328513299_
                                                            '2))
                                                          (_e1329313331_
                                                           (##vector-ref
                                                            _in1328513299_
                                                            '3)))
                                                     (let ((_ctx13324_
                                                            _e1329113321_)
                                                           (_phi13329_
                                                            _e1329213326_)
                                                           (_imports13334_
                                                            _e1329313331_))
                                                       (_K1329013318_
                                                        _imports13334_
                                                        _phi13329_
                                                        _ctx13324_)))
                                                   (_else1328813307_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1328513299_
                                             'gx#module-import::t)
                                            (let* ((_e1329513346_
                                                    (##vector-ref
                                                     _in1328513299_
                                                     '1))
                                                   (_e1329613351_
                                                    (##vector-ref
                                                     _in1328513299_
                                                     '2))
                                                   (_e1329713356_
                                                    (##vector-ref
                                                     _in1328513299_
                                                     '3)))
                                              (let ((_out13349_ _e1329513346_)
                                                    (_key13354_ _e1329613351_)
                                                    (_phi13359_ _e1329713356_))
                                                (_K1329413343_
                                                 _phi13359_
                                                 _key13354_
                                                 _out13349_)))
                                            (_try-match1328713336_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src13275_
                              _current-phi13279_
                              (foldl1 _fold-e13281_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx13278_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r13276_))))
                  (_export!13252_
                   (lambda (_rbody13265_)
                     (letrec* ((_current-ctx13267_
                                (gx#current-expander-context))
                               (_fold-e13268_
                                (lambda (_out13272_ _r13273_)
                                  (if (##structure-direct-instance-of?
                                       _out13272_
                                       'gx#module-export::t)
                                      (cons _out13272_ _r13273_)
                                      (if (##structure-direct-instance-of?
                                           _out13272_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r13273_
                                                  (##unchecked-structure-ref
                                                   _out13272_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r13273_)))))
                       (let ((_body13270_ (reverse _rbody13265_)))
                         (##unchecked-structure-set!
                          _current-ctx13267_
                          (foldl1 _fold-e13268_
                                  (##unchecked-structure-ref
                                   _current-ctx13267_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body13270_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body13270_))))
                  (_expanded-export?13253_
                   (lambda (_e13260_)
                     (let ((_$e13262_
                            (##structure-direct-instance-of?
                             _e13260_
                             'gx#module-export::t)))
                       (if _$e13262_
                           _$e13262_
                           (##structure-direct-instance-of?
                            _e13260_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?13247_)
              (let ((_rbody13258_
                     (gx#core-expand-import/export
                      _stx13246_
                      _expanded-export?13253_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand113250_)))
                (if _internal-expand?13247_
                    (reverse _rbody13258_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!13252_ _rbody13258_))
                     (gx#stx-source _stx13246_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx13246_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx13246_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx13731_)
        (let ((_internal-expand?13733_ '#f))
          (gx#core-expand-export%__% _stx13731_ _internal-expand?13733_))))
    (define gx#core-expand-export%
      (lambda _g16683_
        (let ((_g16682_ (##length _g16683_)))
          (cond ((##fx= _g16682_ 1)
                 (apply (lambda (_stx13731_)
                          (gx#core-expand-export%__0 _stx13731_))
                        _g16683_))
                ((##fx= _g16682_ 2)
                 (apply (lambda (_stx13735_ _internal-expand?13736_)
                          (gx#core-expand-export%__%
                           _stx13735_
                           _internal-expand?13736_))
                        _g16683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g16683_))))))
    (define gx#core-expand-export-source
      (lambda (_hd13243_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd13243_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx13213_)
        (let* ((_e1321413221_ _stx13213_)
               (_E1321613225_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1321413221_)))
               (_E1321513239_
                (lambda ()
                  (if (gx#stx-pair? _e1321413221_)
                      (let ((_e1321713229_ (gx#syntax-e _e1321413221_)))
                        (let ((_hd1321813232_ (##car _e1321713229_))
                              (_tl1321913234_ (##cdr _e1321713229_)))
                          (let ((_body13237_ _tl1321913234_))
                            (if (gx#identifier-list? _body13237_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body13237_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body13237_))
                                   (gx#stx-source _stx13213_)))
                                (_E1321613225_)))))
                      (_E1321613225_)))))
          (_E1321513239_))))
    (define gx#core-bind-feature!__%
      (lambda (_id13179_ _private?13180_ _phi13181_ _ctx13182_)
        (gx#core-bind-syntax!__%
         _id13179_
         ((if _private?13180_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id13179_))
         _private?13180_
         _phi13181_
         _ctx13182_)))
    (define gx#core-bind-feature!__0
      (lambda (_id13187_)
        (let* ((_private?13189_ '#f)
               (_phi13191_ (gx#current-expander-phi))
               (_ctx13193_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id13187_
           _private?13189_
           _phi13191_
           _ctx13193_))))
    (define gx#core-bind-feature!__1
      (lambda (_id13195_ _private?13196_)
        (let* ((_phi13198_ (gx#current-expander-phi))
               (_ctx13200_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id13195_
           _private?13196_
           _phi13198_
           _ctx13200_))))
    (define gx#core-bind-feature!__2
      (lambda (_id13202_ _private?13203_ _phi13204_)
        (let ((_ctx13206_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id13202_
           _private?13203_
           _phi13204_
           _ctx13206_))))
    (define gx#core-bind-feature!
      (lambda _g16685_
        (let ((_g16684_ (##length _g16685_)))
          (cond ((##fx= _g16684_ 1)
                 (apply (lambda (_id13187_)
                          (gx#core-bind-feature!__0 _id13187_))
                        _g16685_))
                ((##fx= _g16684_ 2)
                 (apply (lambda (_id13195_ _private?13196_)
                          (gx#core-bind-feature!__1 _id13195_ _private?13196_))
                        _g16685_))
                ((##fx= _g16684_ 3)
                 (apply (lambda (_id13202_ _private?13203_ _phi13204_)
                          (gx#core-bind-feature!__2
                           _id13202_
                           _private?13203_
                           _phi13204_))
                        _g16685_))
                ((##fx= _g16684_ 4)
                 (apply (lambda (_id13208_
                                 _private?13209_
                                 _phi13210_
                                 _ctx13211_)
                          (gx#core-bind-feature!__%
                           _id13208_
                           _private?13209_
                           _phi13210_
                           _ctx13211_))
                        _g16685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g16685_))))))))
