(declare (block) (standard-bindings) (extended-bindings))
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
    (lambda _$args15973_
      (apply make-struct-instance gx#module-import::t _$args15973_)))
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
    (lambda _$args15970_
      (apply make-struct-instance gx#module-export::t _$args15970_)))
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
    (lambda _$args15967_
      (apply make-struct-instance gx#import-set::t _$args15967_)))
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
    (lambda _$args15964_
      (apply make-struct-instance gx#export-set::t _$args15964_)))
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
    (lambda _$args15961_
      (apply make-class-instance gx#import-expander::t _$args15961_)))
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
    (lambda _$args15958_
      (apply make-class-instance gx#export-expander::t _$args15958_)))
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
    (lambda _$args15955_
      (apply make-class-instance gx#import-export-expander::t _$args15955_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15949_ _id15950_ _super15951_ _ns15952_ _path15953_)
      (if (##fx< '11 (##vector-length _self15949_))
          (begin
            (##vector-set! _self15949_ '1 _id15950_)
            (##vector-set! _self15949_ '2 (make-table 'test: eq?))
            (##vector-set! _self15949_ '3 _super15951_)
            (##vector-set! _self15949_ '4 '#f)
            (##vector-set! _self15949_ '5 '#f)
            (##vector-set! _self15949_ '6 _ns15952_)
            (##vector-set! _self15949_ '7 _path15953_)
            (##vector-set! _self15949_ '8 '())
            (##vector-set! _self15949_ '9 '())
            (##vector-set! _self15949_ '10 '#f)
            (##vector-set! _self15949_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15949_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (define gx#prelude-context:::init!__%
    (lambda (_self15793_ _ctx15794_ _root15795_)
      (let ((_super15803_
             (let ((_$e15797_ _root15795_))
               (if _$e15797_
                   _$e15797_
                   (let ((_$e15800_ (gx#core-context-root__0)))
                     (if _$e15800_
                         _$e15800_
                         (make-struct-instance gx#root-context::t)))))))
        (if _ctx15794_
            (let ((_id15806_
                   (##structure-ref _ctx15794_ '1 gx#expander-context::t '#f))
                  (_path15807_
                   (##structure-ref _ctx15794_ '7 gx#module-context::t '#f))
                  (_in15808_
                   (map gx#core-module-export->import
                        (##structure-ref
                         _ctx15794_
                         '9
                         gx#module-context::t
                         '#f)))
                  (_e15809_
                   (make-promise (lambda () (gx#eval-module _ctx15794_)))))
              (if (##fx< '8 (##vector-length _self15793_))
                  (begin
                    (##vector-set! _self15793_ '1 _id15806_)
                    (##vector-set!
                     _self15793_
                     '2
                     (make-table 'test: eq? 'size: (length _in15808_)))
                    (##vector-set! _self15793_ '3 _super15803_)
                    (##vector-set! _self15793_ '4 '#f)
                    (##vector-set! _self15793_ '5 '#f)
                    (##vector-set! _self15793_ '6 _path15807_)
                    (##vector-set! _self15793_ '7 _in15808_)
                    (##vector-set! _self15793_ '8 _e15809_))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self15793_))
              (for-each
               (lambda (_g1581015812_)
                 (gx#core-bind-weak-import!__% _g1581015812_ _self15793_))
               _in15808_))
            (if (##fx< '8 (##vector-length _self15793_))
                (begin
                  (##vector-set! _self15793_ '1 '#f)
                  (##vector-set! _self15793_ '2 (make-table 'test: eq?))
                  (##vector-set! _self15793_ '3 _super15803_)
                  (##vector-set! _self15793_ '4 '#f)
                  (##vector-set! _self15793_ '5 '#f)
                  (##vector-set! _self15793_ '6 '#f)
                  (##vector-set! _self15793_ '7 '())
                  (##vector-set! _self15793_ '8 '#f))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self15793_))))))
  (define gx#prelude-context:::init!__0
    (lambda (_self15818_ _ctx15819_)
      (let ((_root15821_ '#f))
        (gx#prelude-context:::init!__% _self15818_ _ctx15819_ _root15821_))))
  (define gx#prelude-context:::init!
    (lambda _g16013_
      (let ((_g16012_ (length _g16013_)))
        (cond ((##fx= _g16012_ 2)
               (apply gx#prelude-context:::init!__0 _g16013_))
              ((##fx= _g16012_ 3)
               (apply gx#prelude-context:::init!__% _g16013_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#prelude-context:::init!
                _g16013_))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15667_ _e15668_)
      (if (##fx< '3 (##vector-length _self15667_))
          (begin
            (##vector-set! _self15667_ '1 _e15668_)
            (##vector-set! _self15667_ '2 (gx#current-expander-context))
            (##vector-set! _self15667_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15667_))))
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
    (lambda (_g1529315296_ _g1529415298_)
      (gx#core-apply-user-expander__%
       _g1529315296_
       _g1529415298_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1516415167_ _g1516515169_)
      (gx#core-apply-user-expander__%
       _g1516415167_
       _g1516515169_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx15035_)
      (let* ((_path15037_
              (##structure-ref _ctx15035_ '7 gx#module-context::t '#f))
             (_path15039_
              (if (pair? _path15037_) (last _path15037_) _path15037_)))
        (if (string? _path15039_) _path15039_ '#f))))
  (define gx#import-module__%
    (lambda (_path15011_ _reload?15012_ _eval?15013_)
      (let ((_ctx15015_
             ((gx#current-expander-module-import) _path15011_ _reload?15012_)))
        (if (and _ctx15015_ _eval?15013_) (gx#eval-module _ctx15015_) '#!void)
        _ctx15015_)))
  (define gx#import-module__0
    (lambda (_path15020_)
      (let* ((_reload?15022_ '#f) (_eval?15024_ '#f))
        (gx#import-module__% _path15020_ _reload?15022_ _eval?15024_))))
  (define gx#import-module__1
    (lambda (_path15026_ _reload?15027_)
      (let ((_eval?15029_ '#f))
        (gx#import-module__% _path15026_ _reload?15027_ _eval?15029_))))
  (define gx#import-module
    (lambda _g16015_
      (let ((_g16014_ (length _g16015_)))
        (cond ((##fx= _g16014_ 1) (apply gx#import-module__0 _g16015_))
              ((##fx= _g16014_ 2) (apply gx#import-module__1 _g16015_))
              ((##fx= _g16014_ 3) (apply gx#import-module__% _g16015_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#import-module
                _g16015_))))))
  (define gx#eval-module
    (lambda (_mod15008_) ((gx#current-expander-module-eval) _mod15008_)))
  (define gx#core-eval-module
    (lambda (_obj14993_)
      (letrec ((_force-e14995_
                (lambda (_getf15004_ _e15005_)
                  (call-with-parameters
                   (lambda () (force (_getf15004_ _e15005_)))
                   gx#current-expander-context
                   _e15005_
                   gx#current-expander-phi
                   '0))))
        (let _recur14997_ ((_e14999_ _obj14993_))
          (if (##structure-instance-of? _e14999_ 'gx#module-context::t)
              (begin
                (let ((_$e15001_ (gx#core-context-prelude__% _e14999_)))
                  (if _$e15001_ (_recur14997_ _$e15001_) '#!void))
                (_force-e14995_ gx#module-context-e _e14999_))
              (if (##structure-instance-of? _e14999_ 'gx#prelude-context::t)
                  (_force-e14995_ gx#prelude-context-e _e14999_)
                  (if (gx#stx-string? _e14999_)
                      (_recur14997_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14999_)))
                      (if (gx#core-library-module-path? _e14999_)
                          (_recur14997_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14999_)))
                          (error '"Cannot eval module" _obj14993_)))))))))
  (define gx#core-context-prelude__%
    (lambda (_ctx14976_)
      (let _lp14978_ ((_e14980_ _ctx14976_))
        (if (or (##structure-instance-of? _e14980_ 'gx#module-context::t)
                (##structure-instance-of? _e14980_ 'gx#local-context::t))
            (_lp14978_
             (##unchecked-structure-ref _e14980_ '3 gx#phi-context::t '#f))
            (if (##structure-instance-of? _e14980_ 'gx#prelude-context::t)
                _e14980_
                '#f)))))
  (define gx#core-context-prelude__0
    (lambda ()
      (let ((_ctx14989_ (gx#current-expander-context)))
        (gx#core-context-prelude__% _ctx14989_))))
  (define gx#core-context-prelude
    (lambda _g16017_
      (let ((_g16016_ (length _g16017_)))
        (cond ((##fx= _g16016_ 0) (apply gx#core-context-prelude__0 _g16017_))
              ((##fx= _g16016_ 1) (apply gx#core-context-prelude__% _g16017_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-prelude
                _g16017_))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14966_)
      (let* ((_ht14968_ (gx#current-expander-module-registry))
             (_$e14970_ (table-ref _ht14968_ _ctx14966_ '#f)))
        (if _$e14970_
            (values _$e14970_)
            (let ((_pre14973_
                   (let ((__obj16008 (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj16008 _ctx14966_)
                     __obj16008)))
              (table-set! _ht14968_ _ctx14966_ _pre14973_)
              _pre14973_)))))
  (define gx#core-import-module__%
    (lambda (_rpath14847_ _reload?14848_)
      (letrec ((_import-source14850_
                (lambda (_path14935_)
                  (if (member _path14935_ (gx#current-expander-path))
                      (error '"Cyclic expansion" _path14935_)
                      '#!void)
                  (call-with-parameters
                   (lambda ()
                     (let ((_g16018_ (gx#core-read-module _path14935_)))
                       (begin
                         (let ((_g16019_
                                (if (##values? _g16018_)
                                    (##vector-length _g16018_)
                                    1)))
                           (if (not (##fx= _g16019_ 4))
                               (error "Context expects 4 values" _g16019_)))
                         (let ((_pre14938_ (##vector-ref _g16018_ 0))
                               (_id14939_ (##vector-ref _g16018_ 1))
                               (_ns14940_ (##vector-ref _g16018_ 2))
                               (_body14941_ (##vector-ref _g16018_ 3)))
                           (let* ((_prelude14946_
                                   (if (##structure-instance-of?
                                        _pre14938_
                                        'gx#prelude-context::t)
                                       _pre14938_
                                       (if (##structure-instance-of?
                                            _pre14938_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre14938_)
                                           (if (string? _pre14938_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre14938_))
                                               (if (not _pre14938_)
                                                   (let ((_$e14943_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e14943_
                                                         _$e14943_
                                                         (let ((__obj16009
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (gx#prelude-context:::init!__0 __obj16009 '#f)
                   __obj16009)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath14847_
                                                          _pre14938_))))))
                                  (_ctx14948_
                                   (let ((__obj16010
                                          (make-object
                                           gx#module-context::t
                                           '11)))
                                     (gx#module-context:::init!
                                      __obj16010
                                      _id14939_
                                      _prelude14946_
                                      _ns14940_
                                      _path14935_)
                                     __obj16010))
                                  (_body14950_
                                   (gx#core-expand-module-begin
                                    _body14941_
                                    _ctx14948_))
                                  (_body14952_
                                   (gx#core-quote-syntax__%
                                    (gx#core-cons '%#begin _body14950_)
                                    _path14935_
                                    _ctx14948_
                                    '())))
                             (##unchecked-structure-set!
                              _ctx14948_
                              (make-promise
                               (lambda () (gx#eval-syntax* _body14952_)))
                              '10
                              gx#module-context::t
                              '#f)
                             (##unchecked-structure-set!
                              _ctx14948_
                              _body14952_
                              '11
                              gx#module-context::t
                              '#f)
                             (table-set!
                              (gx#current-expander-module-registry)
                              _path14935_
                              _ctx14948_)
                             (table-set!
                              (gx#current-expander-module-registry)
                              _id14939_
                              _ctx14948_)
                             _ctx14948_)))))
                   gx#current-expander-context
                   (gx#core-context-root__0)
                   gx#current-expander-marks
                   '()
                   gx#current-expander-phi
                   '0
                   gx#current-expander-path
                   (cons _path14935_ (gx#current-expander-path))
                   gx#current-import-expander-phi
                   '#f
                   gx#current-export-expander-phi
                   '#f)))
               (_import-submodule14851_
                (lambda (_rpath14863_)
                  (let* ((_rpath1486414871_ _rpath14863_)
                         (_E1486614875_
                          (lambda ()
                            (error '"No clause matching" _rpath1486414871_)))
                         (_K1486714923_
                          (lambda (_refs14878_ _origin14879_)
                            (let ((_ctx14881_
                                   (if _origin14879_
                                       (gx#core-import-module__%
                                        _origin14879_
                                        _reload?14848_)
                                       (gx#current-expander-context))))
                              (let _lp14883_ ((_rest14885_ _refs14878_)
                                              (_ctx14886_ _ctx14881_))
                                (let* ((_rest1488714895_ _rest14885_)
                                       (_else1488914903_
                                        (lambda () _ctx14886_))
                                       (_K1489114911_
                                        (lambda (_rest14906_ _id14907_)
                                          (let ((_bind14909_
                                                 (gx#resolve-identifier__%
                                                  _id14907_
                                                  '0
                                                  _ctx14886_)))
                                            (if (and (##structure-direct-instance-of?
                                                      _bind14909_
                                                      'gx#syntax-binding::t)
                                                     (##structure-instance-of?
                                                      (##unchecked-structure-ref
                                                       _bind14909_
                                                       '4
                                                       gx#syntax-binding::t
                                                       '#f)
                                                      'gx#module-context::t))
                                                (_lp14883_
                                                 _rest14906_
                                                 (##unchecked-structure-ref
                                                  _bind14909_
                                                  '4
                                                  gx#syntax-binding::t
                                                  '#f))
                                                (error '"Cannot import submodule; not bound as a module"
                                                       _rpath14863_
                                                       _id14907_
                                                       _bind14909_))))))
                                  (if (##pair? _rest1488714895_)
                                      (let ((_hd1489214914_
                                             (##car _rest1488714895_))
                                            (_tl1489314916_
                                             (##cdr _rest1488714895_)))
                                        (let* ((_id14919_ _hd1489214914_)
                                               (_rest14921_ _tl1489314916_))
                                          (_K1489114911_
                                           _rest14921_
                                           _id14919_)))
                                      (_else1488914903_))))))))
                    (if (##pair? _rpath1486414871_)
                        (let ((_hd1486814926_ (##car _rpath1486414871_))
                              (_tl1486914928_ (##cdr _rpath1486414871_)))
                          (let* ((_origin14931_ _hd1486814926_)
                                 (_refs14933_ _tl1486914928_))
                            (_K1486714923_ _refs14933_ _origin14931_)))
                        (_E1486614875_))))))
        (let ((_$e14853_
               (if (not _reload?14848_)
                   (table-ref
                    (gx#current-expander-module-registry)
                    _rpath14847_
                    '#f)
                   '#f)))
          (if _$e14853_
              (values _$e14853_)
              (if (list? _rpath14847_)
                  (_import-submodule14851_ _rpath14847_)
                  (if (gx#core-library-module-path? _rpath14847_)
                      (let ((_ctx14856_
                             (gx#core-import-module__%
                              (gx#core-resolve-library-module-path
                               _rpath14847_)
                              _reload?14848_)))
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath14847_
                         _ctx14856_)
                        _ctx14856_)
                      (let* ((_npath14858_ (path-normalize _rpath14847_))
                             (_$e14860_
                              (if (not _reload?14848_)
                                  (table-ref
                                   (gx#current-expander-module-registry)
                                   _npath14858_
                                   '#f)
                                  '#f)))
                        (if _$e14860_
                            (values _$e14860_)
                            (_import-source14850_ _npath14858_))))))))))
  (define gx#core-import-module__0
    (lambda (_rpath14959_)
      (let ((_reload?14961_ '#f))
        (gx#core-import-module__% _rpath14959_ _reload?14961_))))
  (define gx#core-import-module
    (lambda _g16021_
      (let ((_g16020_ (length _g16021_)))
        (cond ((##fx= _g16020_ 1) (apply gx#core-import-module__0 _g16021_))
              ((##fx= _g16020_ 2) (apply gx#core-import-module__% _g16021_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-import-module
                _g16021_))))))
  (define gx#core-read-module
    (lambda (_path14841_)
      (with-exception-catcher
       (lambda (_exn14843_)
         (if (and (datum-parsing-exception? _exn14843_)
                  (eq? (datum-parsing-exception-filepos _exn14843_) '0))
             (gx#core-read-module/lang _path14841_)
             (raise _exn14843_)))
       (lambda () (gx#core-read-module/sexp _path14841_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14701_)
      (let _lp14703_ ((_body14705_ (read-syntax-from-file _path14701_))
                      (_pre14706_ '#f)
                      (_ns14707_ '#f)
                      (_pkg14708_ '#f))
        (let* ((_e1470914733_ _body14705_)
               (_E1472514755_
                (lambda ()
                  (let ((_g16022_
                         (if _pkg14708_
                             (values _pre14706_ _ns14707_ _pkg14708_)
                             (gx#core-read-module-package
                              _path14701_
                              _pre14706_
                              _ns14707_))))
                    (begin
                      (let ((_g16023_
                             (if (##values? _g16022_)
                                 (##vector-length _g16022_)
                                 1)))
                        (if (not (##fx= _g16023_ 3))
                            (error "Context expects 3 values" _g16023_)))
                      (let ((_pre14737_ (##vector-ref _g16022_ 0))
                            (_ns14738_ (##vector-ref _g16022_ 1))
                            (_pkg14739_ (##vector-ref _g16022_ 2)))
                        (let* ((_prelude14741_
                                (if (gx#core-bound-module-prelude? _pre14737_)
                                    (gx#syntax-local-e__0 _pre14737_)
                                    (if (gx#core-library-module-path?
                                         _pre14737_)
                                        (gx#core-resolve-library-module-path
                                         _pre14737_)
                                        (if (gx#stx-string? _pre14737_)
                                            (gx#core-resolve-module-path__%
                                             _pre14737_
                                             _path14701_)
                                            (gx#stx-e _pre14737_)))))
                               (_path-id14743_
                                (gx#core-module-path->namespace _path14701_))
                               (_pkg-id14745_
                                (if _pkg14739_
                                    (string-append
                                     _pkg14739_
                                     '"/"
                                     _path-id14743_)
                                    _path-id14743_))
                               (_module-id14747_
                                (string->symbol _pkg-id14745_))
                               (_module-ns14752_
                                (let ((_$e14749_ _ns14738_))
                                  (if _$e14749_ _$e14749_ _pkg-id14745_))))
                          (values _prelude14741_
                                  _module-id14747_
                                  _module-ns14752_
                                  _body14705_)))))))
               (_E1471814784_
                (lambda ()
                  (if (gx#stx-pair? _e1470914733_)
                      (let ((_e1472614759_ (gx#syntax-e _e1470914733_)))
                        (let ((_hd1472714762_ (##car _e1472614759_))
                              (_tl1472814764_ (##cdr _e1472614759_)))
                          (if (eq? (gx#stx-e _hd1472714762_) 'package:)
                              (if (gx#stx-pair? _tl1472814764_)
                                  (let ((_e1472914767_
                                         (gx#syntax-e _tl1472814764_)))
                                    (let ((_hd1473014770_
                                           (##car _e1472914767_))
                                          (_tl1473114772_
                                           (##cdr _e1472914767_)))
                                      (let* ((_pkg14775_ _hd1473014770_)
                                             (_rest14777_ _tl1473114772_))
                                        (if '#t
                                            (let ((_pkg14782_
                                                   (if (gx#identifier?
                                                        _pkg14775_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14775_))
                                                       (if (or (gx#stx-string?
                                                                _pkg14775_)
                                                               (gx#stx-false?
                                                                _pkg14775_))
                                                           (gx#stx-e
                                                            _pkg14775_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; Illegal package name"
                                                            _pkg14775_)))))
                                              (_lp14703_
                                               _rest14777_
                                               _pre14706_
                                               _ns14707_
                                               _pkg14782_))
                                            (_E1472514755_)))))
                                  (_E1472514755_))
                              (_E1472514755_))))
                      (_E1472514755_))))
               (_E1471114813_
                (lambda ()
                  (if (gx#stx-pair? _e1470914733_)
                      (let ((_e1471914788_ (gx#syntax-e _e1470914733_)))
                        (let ((_hd1472014791_ (##car _e1471914788_))
                              (_tl1472114793_ (##cdr _e1471914788_)))
                          (if (eq? (gx#stx-e _hd1472014791_) 'namespace:)
                              (if (gx#stx-pair? _tl1472114793_)
                                  (let ((_e1472214796_
                                         (gx#syntax-e _tl1472114793_)))
                                    (let ((_hd1472314799_
                                           (##car _e1472214796_))
                                          (_tl1472414801_
                                           (##cdr _e1472214796_)))
                                      (let* ((_ns14804_ _hd1472314799_)
                                             (_rest14806_ _tl1472414801_))
                                        (if '#t
                                            (let ((_ns14811_
                                                   (if (gx#identifier?
                                                        _ns14804_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14804_))
                                                       (if (or (gx#stx-string?
                                                                _ns14804_)
                                                               (gx#stx-false?
                                                                _ns14804_))
                                                           (gx#stx-e _ns14804_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; illegal namespace"
                                                            _ns14804_)))))
                                              (_lp14703_
                                               _rest14806_
                                               _pre14706_
                                               _ns14811_
                                               _pkg14708_))
                                            (_E1471814784_)))))
                                  (_E1471814784_))
                              (_E1471814784_))))
                      (_E1471814784_))))
               (_E1471014837_
                (lambda ()
                  (if (gx#stx-pair? _e1470914733_)
                      (let ((_e1471214817_ (gx#syntax-e _e1470914733_)))
                        (let ((_hd1471314820_ (##car _e1471214817_))
                              (_tl1471414822_ (##cdr _e1471214817_)))
                          (if (eq? (gx#stx-e _hd1471314820_) 'prelude:)
                              (if (gx#stx-pair? _tl1471414822_)
                                  (let ((_e1471514825_
                                         (gx#syntax-e _tl1471414822_)))
                                    (let ((_hd1471614828_
                                           (##car _e1471514825_))
                                          (_tl1471714830_
                                           (##cdr _e1471514825_)))
                                      (let* ((_prelude14833_ _hd1471614828_)
                                             (_rest14835_ _tl1471714830_))
                                        (if '#t
                                            (_lp14703_
                                             _rest14835_
                                             _prelude14833_
                                             _ns14707_
                                             _pkg14708_)
                                            (_E1471114813_)))))
                                  (_E1471114813_))
                              (_E1471114813_))))
                      (_E1471114813_)))))
          (_E1471014837_)))))
  (define gx#core-read-module/lang
    (lambda (_path14528_)
      (letrec ((_default-read-module-body14530_
                (lambda (_inp14693_)
                  (let _lp14695_ ((_body14697_ '()))
                    (let ((_next14699_ (read-syntax _inp14693_)))
                      (if (eof-object? _next14699_)
                          (reverse _body14697_)
                          (_lp14695_ (cons _next14699_ _body14697_)))))))
               (_read-body14531_
                (lambda (_inp14612_
                         _pre14613_
                         _ns14614_
                         _pkg14615_
                         _args14616_)
                  (let ((_g16024_
                         (if _pkg14615_
                             (values _pre14613_ _ns14614_ _pkg14615_)
                             (gx#core-read-module-package
                              _path14528_
                              _pre14613_
                              _ns14614_))))
                    (begin
                      (let ((_g16025_
                             (if (##values? _g16024_)
                                 (##vector-length _g16024_)
                                 1)))
                        (if (not (##fx= _g16025_ 3))
                            (error "Context expects 3 values" _g16025_)))
                      (let ((_pre14618_ (##vector-ref _g16024_ 0))
                            (_ns14619_ (##vector-ref _g16024_ 1))
                            (_pkg14620_ (##vector-ref _g16024_ 2)))
                        (let* ((_prelude14622_
                                (gx#import-module__0 _pre14618_))
                               (_read-module-body14676_
                                (let ((_$e14668_
                                       (find (lambda (_e1462314625_)
                                               (let* ((_g1462714637_
                                                       _e1462314625_)
                                                      (_else1462914645_
                                                       (lambda () '#f))
                                                      (_K1463114649_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1462714637_
                                                      'gx#module-export::t)
                                                     (let* ((_e1463214652_
                                                             (##vector-ref
                                                              _g1462714637_
                                                              '1))
                                                            (_e1463314655_
                                                             (##vector-ref
                                                              _g1462714637_
                                                              '2))
                                                            (_e1463414658_
                                                             (##vector-ref
                                                              _g1462714637_
                                                              '3)))
                                                       (if (##eq? _e1463414658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1463514661_ (##vector-ref _g1462714637_ '4)))
                     (if ((lambda (_g1466314665_)
                            (eq? _g1466314665_ 'read-module-body))
                          _e1463514661_)
                         (_K1463114649_)
                         (_else1462914645_)))
                   (_else1462914645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1462914645_))))
                                             (##unchecked-structure-ref
                                              _prelude14622_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14668_
                                      ((lambda (_xport14671_)
                                         (let ((_proc14674_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14671_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14674_)
                                               _proc14674_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14528_
                                                _pre14618_
                                                _proc14674_))))
                                       _$e14668_)
                                      _default-read-module-body14530_)))
                               (_path-id14678_
                                (gx#core-module-path->namespace _path14528_))
                               (_pkg-id14680_
                                (if _pkg14620_
                                    (string-append
                                     _pkg14620_
                                     '"/"
                                     _path-id14678_)
                                    _path-id14678_))
                               (_module-id14682_
                                (string->symbol _pkg-id14680_))
                               (_module-ns14687_
                                (let ((_$e14684_ _ns14619_))
                                  (if _$e14684_ _$e14684_ _pkg-id14680_)))
                               (_body14690_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14676_ _inp14612_))
                                 gx#current-module-reader-path
                                 _path14528_
                                 gx#current-module-reader-args
                                 _args14616_)))
                          (values _prelude14622_
                                  _module-id14682_
                                  _module-ns14687_
                                  _body14690_)))))))
               (_string-e14532_
                (lambda (_obj14609_ _what14610_)
                  (if (string? _obj14609_)
                      _obj14609_
                      (if (symbol? _obj14609_)
                          (symbol->string _obj14609_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14610_)
                           _path14528_
                           _obj14609_)))))
               (_read-lang-args14533_
                (lambda (_inp14564_ _args14565_)
                  (let* ((_args1456614574_ _args14565_)
                         (_else1456814582_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14528_)))
                         (_K1457014597_
                          (lambda (_args14585_ _prelude14586_)
                            (let* ((_pkg14588_ (pgetq 'package: _args14585_))
                                   (_pkg14590_
                                    (if _pkg14588_
                                        (_string-e14532_ _pkg14588_ '"package")
                                        '#f))
                                   (_ns14592_ (pgetq 'namespace: _args14585_))
                                   (_ns14594_
                                    (if _ns14592_
                                        (_string-e14532_
                                         _ns14592_
                                         '"namespace")
                                        '#f)))
                              (_read-body14531_
                               _inp14564_
                               _prelude14586_
                               _ns14594_
                               _pkg14590_
                               _args14585_)))))
                    (if (##pair? _args1456614574_)
                        (let ((_hd1457114600_ (##car _args1456614574_))
                              (_tl1457214602_ (##cdr _args1456614574_)))
                          (let* ((_prelude14605_ _hd1457114600_)
                                 (_args14607_ _tl1457214602_))
                            (_K1457014597_ _args14607_ _prelude14605_)))
                        (_else1456814582_)))))
               (_read-lang14534_
                (lambda (_inp14539_)
                  (let* ((_head14541_ (read-line _inp14539_))
                         (_$e14543_ (string-index _head14541_ '#\space)))
                    (if _$e14543_
                        ((lambda (_ix14546_)
                           (let ((_lang14548_
                                  (substring _head14541_ '0 _ix14546_)))
                             (if (equal? _lang14548_ '"#lang")
                                 (let* ((_rest14550_
                                         (substring
                                          _head14541_
                                          (fx+ _ix14546_ '1)
                                          (string-length _head14541_)))
                                        (_args14561_
                                         (with-exception-catcher
                                          (lambda (_g1455114553_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14528_
                                             _g1455114553_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14550_
                                             (lambda (_g1455614558_)
                                               (read-all
                                                _g1455614558_
                                                read)))))))
                                   (_read-lang-args14533_
                                    _inp14539_
                                    _args14561_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14528_))))
                         _$e14543_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14528_)))))
               (_read-e14535_
                (lambda (_inp14537_)
                  (if (eq? (peek-char _inp14537_) '#\#)
                      (_read-lang14534_ _inp14537_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14528_)))))
        (call-with-input-file _path14528_ _read-e14535_))))
  (define gx#core-read-module-package
    (lambda (_path14482_ _pre14483_ _ns14484_)
      (letrec ((_string-e14486_
                (lambda (_e14526_)
                  (if (symbol? _e14526_)
                      (symbol->string _e14526_)
                      (if (string? _e14526_)
                          _e14526_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14526_))))))
        (let _lp14488_ ((_dir14490_ (path-directory _path14482_))
                        (_pkg-path14491_ '()))
          (let ((_gerbil.pkg14493_ (path-expand '"gerbil.pkg" _dir14490_)))
            (if (file-exists? _gerbil.pkg14493_)
                (let ((_plist14495_
                       (gx#core-library-package-plist__% _dir14490_ '#t)))
                  (if (null? _plist14495_)
                      (let ((_pkg14497_
                             (if (not (null? _pkg-path14491_))
                                 (string-join _pkg-path14491_ '"/")
                                 '#f)))
                        (values _pre14483_ _ns14484_ _pkg14497_))
                      (if (list? _plist14495_)
                          (let* ((_root14499_ (pgetq 'package: _plist14495_))
                                 (_pkg14503_
                                  (let ((_pkg-path14501_
                                         (if _root14499_
                                             (cons (_string-e14486_
                                                    _root14499_)
                                                   _pkg-path14491_)
                                             _pkg-path14491_)))
                                    (if (not (null? _pkg-path14501_))
                                        (string-join _pkg-path14501_ '"/")
                                        '#f)))
                                 (_ns14510_
                                  (let ((_ns14508_
                                         (let ((_$e14505_ _ns14484_))
                                           (if _$e14505_
                                               _$e14505_
                                               (pgetq 'namespace:
                                                      _plist14495_)))))
                                    (if _ns14508_
                                        (_string-e14486_ _ns14508_)
                                        '#f)))
                                 (_pre14515_
                                  (let ((_$e14512_ _pre14483_))
                                    (if _$e14512_
                                        _$e14512_
                                        (pgetq 'prelude: _plist14495_)))))
                            (values _pre14515_ _ns14510_ _pkg14503_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14495_))))
                (let ((_dir*14518_
                       (path-strip-trailing-directory-separator _dir14490_)))
                  (if (or (string-empty? _dir*14518_)
                          (equal? _dir14490_ _dir*14518_))
                      (values _pre14483_ _ns14484_ '#f)
                      (let ((_xpath14523_ (path-strip-directory _dir*14518_))
                            (_xdir14524_ (path-directory _dir*14518_)))
                        (_lp14488_
                         _xdir14524_
                         (cons _xpath14523_ _pkg-path14491_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14480_)
      (path-strip-extension (path-strip-directory _path14480_))))
  (define gx#core-module-path->id
    (lambda (_path14478_)
      (string->symbol (gx#core-module-path->namespace _path14478_))))
  (define gx#core-resolve-module-path__%
    (lambda (_stx-path14457_ _rel14458_)
      (let* ((_path14460_ (gx#stx-e _stx-path14457_))
             (_path14462_
              (if (string-empty? (path-extension _path14460_))
                  (string-append _path14460_ '".ss")
                  _path14460_)))
        (gx#core-resolve-path__%
         _path14462_
         (let ((_$e14465_ (gx#stx-source _stx-path14457_)))
           (if _$e14465_ _$e14465_ _rel14458_))))))
  (define gx#core-resolve-module-path__0
    (lambda (_stx-path14471_)
      (let ((_rel14473_ '#f))
        (gx#core-resolve-module-path__% _stx-path14471_ _rel14473_))))
  (define gx#core-resolve-module-path
    (lambda _g16027_
      (let ((_g16026_ (length _g16027_)))
        (cond ((##fx= _g16026_ 1)
               (apply gx#core-resolve-module-path__0 _g16027_))
              ((##fx= _g16026_ 2)
               (apply gx#core-resolve-module-path__% _g16027_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-resolve-module-path
                _g16027_))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14384_)
      (let* ((_spath14386_ (symbol->string (gx#stx-e _libpath14384_)))
             (_spath14388_
              (substring _spath14386_ '1 (string-length _spath14386_)))
             (_ext14390_ (path-extension _spath14388_))
             (_ssi14392_
              (if (string-empty? _ext14390_)
                  (string-append _spath14388_ '".ssi")
                  (string-append (path-strip-extension _spath14388_) '".ssi")))
             (_src14394_
              (if (string-empty? _ext14390_)
                  (string-append _spath14388_ '".ss")
                  _spath14388_)))
        (let _lp14397_ ((_rest14399_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1440014409_ _rest14399_)
                 (_E1440314413_
                  (lambda () (error '"No clause matching" _rest1440014409_))))
            (let ((_K1440514444_
                   (lambda (_rest14424_ _dir14425_)
                     (letrec ((_resolve14427_
                               (lambda (_ssi14437_ _src14438_)
                                 (let ((_compiled-path14440_
                                        (path-expand _ssi14437_ _dir14425_)))
                                   (if (file-exists? _compiled-path14440_)
                                       (path-normalize _compiled-path14440_)
                                       (let ((_src-path14442_
                                              (path-expand
                                               _src14438_
                                               _dir14425_)))
                                         (if (file-exists? _src-path14442_)
                                             (path-normalize _src-path14442_)
                                             (_lp14397_ _rest14424_))))))))
                       (let ((_$e14429_
                              (gx#core-library-package-path-prefix
                               _dir14425_)))
                         (if _$e14429_
                             ((lambda (_prefix14432_)
                                (if (string-prefix? _prefix14432_ _spath14388_)
                                    (let ((_ssi14434_
                                           (substring
                                            _ssi14392_
                                            (string-length _prefix14432_)
                                            (string-length _ssi14392_)))
                                          (_src14435_
                                           (substring
                                            _src14394_
                                            (string-length _prefix14432_)
                                            (string-length _src14394_))))
                                      (_resolve14427_ _ssi14434_ _src14435_))
                                    (_lp14397_ _rest14424_)))
                              _$e14429_)
                             (_resolve14427_ _ssi14392_ _src14394_))))))
                  (_K1440414418_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14384_))))
              (let ((_try-match1440214421_
                     (lambda ()
                       (if (##null? _rest1440014409_)
                           (_K1440414418_)
                           (_E1440314413_)))))
                (if (##pair? _rest1440014409_)
                    (let ((_tl1440714449_ (##cdr _rest1440014409_))
                          (_hd1440614447_ (##car _rest1440014409_)))
                      (let ((_dir14452_ _hd1440614447_)
                            (_rest14454_ _tl1440714449_))
                        (_K1440514444_ _rest14454_ _dir14452_)))
                    (_try-match1440214421_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14377_)
      (let ((_$e14379_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14377_))))
        (if _$e14379_
            ((lambda (_pkg14382_)
               (string-append (symbol->string _pkg14382_) '"/"))
             _$e14379_)
            '#f))))
  (define gx#core-library-package-plist__%
    (lambda (_dir14349_ _exists?14350_)
      (let* ((_cache14352_ (gx#core-library-package-cache))
             (_$e14354_ (table-ref _cache14352_ _dir14349_ '#f)))
        (if _$e14354_
            (values _$e14354_)
            (let* ((_gerbil.pkg14357_ (path-expand '"gerbil.pkg" _dir14349_))
                   (_plist14364_
                    (if (or _exists?14350_ (file-exists? _gerbil.pkg14357_))
                        (let ((_e14362_
                               (call-with-input-file _gerbil.pkg14357_ read)))
                          (if (eof-object? _e14362_)
                              '()
                              (if (list? _e14362_)
                                  _e14362_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Malformed package info; unexpected datum"
                                   _gerbil.pkg14357_
                                   _e14362_))))
                        '())))
              (table-set! _cache14352_ _dir14349_ _plist14364_)
              _plist14364_)))))
  (define gx#core-library-package-plist__0
    (lambda (_dir14370_)
      (let ((_exists?14372_ '#f))
        (gx#core-library-package-plist__% _dir14370_ _exists?14372_))))
  (define gx#core-library-package-plist
    (lambda _g16029_
      (let ((_g16028_ (length _g16029_)))
        (cond ((##fx= _g16028_ 1)
               (apply gx#core-library-package-plist__0 _g16029_))
              ((##fx= _g16028_ 2)
               (apply gx#core-library-package-plist__% _g16029_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-library-package-plist
                _g16029_))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14343_ (gx#current-expander-module-library-package-cache)))
        (if _$e14343_
            (values _$e14343_)
            (let ((_cache14346_ (make-table)))
              (gx#current-expander-module-library-package-cache _cache14346_)
              _cache14346_)))))
  (define gx#core-library-module-path?
    (lambda (_stx14340_) (gx#core-special-module-path? _stx14340_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14335_ _char14336_)
      (if (gx#identifier? _stx14335_)
          (if (interned-symbol? (gx#stx-e _stx14335_))
              (let ((_str14338_ (symbol->string (gx#stx-e _stx14335_))))
                (if (fx> (string-length _str14338_) '1)
                    (eq? (string-ref _str14338_ '0) _char14336_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14329_)
      (gx#core-bound-identifier?__%
       _stx14329_
       (lambda (_g1433014332_)
         (gx#expander-binding?__% _g1433014332_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14323_)
      (gx#core-bound-identifier?__%
       _stx14323_
       (lambda (_g1432414326_)
         (gx#expander-binding?__% _g1432414326_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14310_)
      (letrec ((_module-prelude?14312_
                (lambda (_e14318_)
                  (let ((_$e14320_
                         (##structure-instance-of?
                          _e14318_
                          'gx#module-context::t)))
                    (if _$e14320_
                        _$e14320_
                        (##structure-instance-of?
                         _e14318_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14310_
         (lambda (_g1431314315_)
           (gx#expander-binding?__% _g1431314315_ _module-prelude?14312_))))))
  (define gx#core-bind-import!__%
    (lambda (_in14240_ _ctx14241_ _force-weak?14242_)
      (let* ((_in1424314252_ _in14240_)
             (_E1424514256_
              (lambda () (error '"No clause matching" _in1424314252_)))
             (_K1424614269_
              (lambda (_weak?14259_ _phi14260_ _key14261_ _source14262_)
                (gx#core-bind!__%
                 _key14261_
                 (let ((_e14264_
                        (gx#core-resolve-module-export _source14262_)))
                   (##structure
                    gx#import-binding::t
                    (##unchecked-structure-ref _e14264_ '1 gx#binding::t '#f)
                    _key14261_
                    _phi14260_
                    _e14264_
                    (##unchecked-structure-ref
                     _source14262_
                     '1
                     gx#module-export::t
                     '#f)
                    (let ((_$e14266_ _force-weak?14242_))
                      (if _$e14266_ _$e14266_ _weak?14259_))))
                 gx#core-context-rebind?
                 _phi14260_
                 _ctx14241_))))
        (if (##structure-direct-instance-of?
             _in1424314252_
             'gx#module-import::t)
            (let* ((_e1424714272_ (##vector-ref _in1424314252_ '1))
                   (_source14275_ _e1424714272_)
                   (_e1424814277_ (##vector-ref _in1424314252_ '2))
                   (_key14280_ _e1424814277_)
                   (_e1424914282_ (##vector-ref _in1424314252_ '3))
                   (_phi14285_ _e1424914282_)
                   (_e1425014287_ (##vector-ref _in1424314252_ '4))
                   (_weak?14290_ _e1425014287_))
              (_K1424614269_ _weak?14290_ _phi14285_ _key14280_ _source14275_))
            (_E1424514256_)))))
  (define gx#core-bind-import!__0
    (lambda (_in14295_)
      (let* ((_ctx14297_ (gx#current-expander-context))
             (_force-weak?14299_ '#f))
        (gx#core-bind-import!__% _in14295_ _ctx14297_ _force-weak?14299_))))
  (define gx#core-bind-import!__1
    (lambda (_in14301_ _ctx14302_)
      (let ((_force-weak?14304_ '#f))
        (gx#core-bind-import!__% _in14301_ _ctx14302_ _force-weak?14304_))))
  (define gx#core-bind-import!
    (lambda _g16031_
      (let ((_g16030_ (length _g16031_)))
        (cond ((##fx= _g16030_ 1) (apply gx#core-bind-import!__0 _g16031_))
              ((##fx= _g16030_ 2) (apply gx#core-bind-import!__1 _g16031_))
              ((##fx= _g16030_ 3) (apply gx#core-bind-import!__% _g16031_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-import!
                _g16031_))))))
  (define gx#core-bind-weak-import!__%
    (lambda (_in14226_ _ctx14227_)
      (gx#core-bind-import!__% _in14226_ _ctx14227_ '#t)))
  (define gx#core-bind-weak-import!__0
    (lambda (_in14232_)
      (let ((_ctx14234_ (gx#current-expander-context)))
        (gx#core-bind-weak-import!__% _in14232_ _ctx14234_))))
  (define gx#core-bind-weak-import!
    (lambda _g16033_
      (let ((_g16032_ (length _g16033_)))
        (cond ((##fx= _g16032_ 1)
               (apply gx#core-bind-weak-import!__0 _g16033_))
              ((##fx= _g16032_ 2)
               (apply gx#core-bind-weak-import!__% _g16033_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-weak-import!
                _g16033_))))))
  (define gx#core-resolve-module-export
    (lambda (_out14117_)
      (letrec ((_subst14119_
                (lambda (_key14165_)
                  (let* ((_key1416614174_ _key14165_)
                         (_else1416814182_ (lambda () _key14165_))
                         (_K1417014213_
                          (lambda (_mark14185_ _id14186_)
                            (let* ((_mark1418714193_ _mark14185_)
                                   (_E1418914197_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1418714193_)))
                                   (_K1419014205_
                                    (lambda (_subst14200_)
                                      (let ((_$e14202_
                                             (if _subst14200_
                                                 (table-ref
                                                  _subst14200_
                                                  _id14186_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14202_
                                            _$e14202_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14165_))))))
                              (if (##structure-instance-of?
                                   _mark1418714193_
                                   'gx#expander-mark::t)
                                  (let* ((_e1419114208_
                                          (##vector-ref _mark1418714193_ '1))
                                         (_subst14211_ _e1419114208_))
                                    (_K1419014205_ _subst14211_))
                                  (_E1418914197_))))))
                    (if (##pair? _key1416614174_)
                        (let ((_hd1417114216_ (##car _key1416614174_))
                              (_tl1417214218_ (##cdr _key1416614174_)))
                          (let* ((_id14221_ _hd1417114216_)
                                 (_mark14223_ _tl1417214218_))
                            (_K1417014213_ _mark14223_ _id14221_)))
                        (_else1416814182_))))))
        (let* ((_out1412014130_ _out14117_)
               (_E1412214134_
                (lambda () (error '"No clause matching" _out1412014130_)))
               (_K1412314141_
                (lambda (_phi14137_ _key14138_ _ctx14139_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14139_ _phi14137_)
                   (_subst14119_ _key14138_)))))
          (if (##structure-direct-instance-of?
               _out1412014130_
               'gx#module-export::t)
              (let* ((_e1412414144_ (##vector-ref _out1412014130_ '1))
                     (_ctx14147_ _e1412414144_)
                     (_e1412514149_ (##vector-ref _out1412014130_ '2))
                     (_key14152_ _e1412514149_)
                     (_e1412614154_ (##vector-ref _out1412014130_ '3))
                     (_phi14157_ _e1412614154_)
                     (_e1412714159_ (##vector-ref _out1412014130_ '4))
                     (_e1412814162_ (##vector-ref _out1412014130_ '5)))
                (_K1412314141_ _phi14157_ _key14152_ _ctx14147_))
              (_E1412214134_))))))
  (define gx#core-module-export->import__%
    (lambda (_out14042_ _rename14043_ _dphi14044_)
      (let* ((_out1404514055_ _out14042_)
             (_E1404714059_
              (lambda () (error '"No clause matching" _out1404514055_)))
             (_K1404814071_
              (lambda (_weak?14062_
                       _name14063_
                       _phi14064_
                       _key14065_
                       _ctx14066_)
                (##structure
                 gx#module-import::t
                 _out14042_
                 (let ((_$e14068_ _rename14043_))
                   (if _$e14068_ _$e14068_ _name14063_))
                 (fx+ _phi14064_ _dphi14044_)
                 _weak?14062_))))
        (if (##structure-direct-instance-of?
             _out1404514055_
             'gx#module-export::t)
            (let* ((_e1404914074_ (##vector-ref _out1404514055_ '1))
                   (_ctx14077_ _e1404914074_)
                   (_e1405014079_ (##vector-ref _out1404514055_ '2))
                   (_key14082_ _e1405014079_)
                   (_e1405114084_ (##vector-ref _out1404514055_ '3))
                   (_phi14087_ _e1405114084_)
                   (_e1405214089_ (##vector-ref _out1404514055_ '4))
                   (_name14092_ _e1405214089_)
                   (_e1405314094_ (##vector-ref _out1404514055_ '5))
                   (_weak?14097_ _e1405314094_))
              (_K1404814071_
               _weak?14097_
               _name14092_
               _phi14087_
               _key14082_
               _ctx14077_))
            (_E1404714059_)))))
  (define gx#core-module-export->import__0
    (lambda (_out14102_)
      (let* ((_rename14104_ '#f) (_dphi14106_ '0))
        (gx#core-module-export->import__%
         _out14102_
         _rename14104_
         _dphi14106_))))
  (define gx#core-module-export->import__1
    (lambda (_out14108_ _rename14109_)
      (let ((_dphi14111_ '0))
        (gx#core-module-export->import__%
         _out14108_
         _rename14109_
         _dphi14111_))))
  (define gx#core-module-export->import
    (lambda _g16035_
      (let ((_g16034_ (length _g16035_)))
        (cond ((##fx= _g16034_ 1)
               (apply gx#core-module-export->import__0 _g16035_))
              ((##fx= _g16034_ 2)
               (apply gx#core-module-export->import__1 _g16035_))
              ((##fx= _g16034_ 3)
               (apply gx#core-module-export->import__% _g16035_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-module-export->import
                _g16035_))))))
  (define gx#core-expand-module%
    (lambda (_stx13970_)
      (letrec ((_make-context13972_
                (lambda (_id14023_)
                  (let* ((_super14025_ (gx#current-expander-context))
                         (_bind-id14027_ (gx#stx-e _id14023_))
                         (_mod-id14029_
                          (if (##structure-instance-of?
                               _super14025_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super14025_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id14027_)
                              _bind-id14027_))
                         (_ns14031_ (symbol->string _mod-id14029_))
                         (_path14038_
                          (if (##structure-instance-of?
                               _super14025_
                               'gx#module-context::t)
                              (let ((_path14033_
                                     (##unchecked-structure-ref
                                      _super14025_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (or (pair? _path14033_)
                                        (null? _path14033_))
                                    (cons _bind-id14027_ _path14033_)
                                    (if (not _path14033_)
                                        _bind-id14027_
                                        (cons _bind-id14027_
                                              (cons _path14033_ '())))))
                              _bind-id14027_)))
                    (let ((__obj16011 (make-object gx#module-context::t '11)))
                      (gx#module-context:::init!
                       __obj16011
                       _mod-id14029_
                       _super14025_
                       _ns14031_
                       _path14038_)
                      __obj16011)))))
        (let* ((_e1397313983_ _stx13970_)
               (_E1397513987_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1397313983_)))
               (_E1397414019_
                (lambda ()
                  (if (gx#stx-pair? _e1397313983_)
                      (let ((_e1397613991_ (gx#syntax-e _e1397313983_)))
                        (let ((_hd1397713994_ (##car _e1397613991_))
                              (_tl1397813996_ (##cdr _e1397613991_)))
                          (if (gx#stx-pair? _tl1397813996_)
                              (let ((_e1397913999_
                                     (gx#syntax-e _tl1397813996_)))
                                (let ((_hd1398014002_ (##car _e1397913999_))
                                      (_tl1398114004_ (##cdr _e1397913999_)))
                                  (let* ((_id14007_ _hd1398014002_)
                                         (_body14009_ _tl1398114004_))
                                    (if (and (gx#identifier? _id14007_)
                                             (gx#stx-list? _body14009_))
                                        (let* ((_ctx14011_
                                                (_make-context13972_
                                                 _id14007_))
                                               (_body14013_
                                                (gx#core-expand-module-begin
                                                 _body14009_
                                                 _ctx14011_))
                                               (_body14015_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body14013_)
                                                 (gx#stx-source _stx13970_))))
                                          (##unchecked-structure-set!
                                           _ctx14011_
                                           (make-promise
                                            (lambda ()
                                              (gx#eval-syntax* _body14015_)))
                                           '10
                                           gx#module-context::t
                                           '#f)
                                          (##unchecked-structure-set!
                                           _ctx14011_
                                           _body14015_
                                           '11
                                           gx#module-context::t
                                           '#f)
                                          (gx#core-bind-syntax!__0
                                           _id14007_
                                           _ctx14011_)
                                          (gx#core-quote-syntax__1
                                           (gx#core-list
                                            '%#module
                                            (gx#core-quote-syntax__0 _id14007_)
                                            _body14015_)
                                           (gx#stx-source _stx13970_)))
                                        (_E1397513987_)))))
                              (_E1397513987_))))
                      (_E1397513987_)))))
          (_E1397414019_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13936_ _ctx13937_)
      (call-with-parameters
       (lambda ()
         (gx#core-bind-feature!__1 'gerbil-module '#t)
         (let* ((_stx13940_
                 (gx#core-expand-head (cons '%%begin-module _body13936_)))
                (_e1394113948_ _stx13940_)
                (_E1394313952_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Illegal module body expansion"
                    _stx13940_)))
                (_E1394213966_
                 (lambda ()
                   (if (gx#stx-pair? _e1394113948_)
                       (let ((_e1394413956_ (gx#syntax-e _e1394113948_)))
                         (let ((_hd1394513959_ (##car _e1394413956_))
                               (_tl1394613961_ (##cdr _e1394413956_)))
                           (if (and (gx#identifier? _hd1394513959_)
                                    (gx#core-identifier=?
                                     _hd1394513959_
                                     '%#begin-module))
                               (let ((_body13964_ _tl1394613961_))
                                 (if '#t
                                     (if (gx#sealed-syntax? _stx13940_)
                                         _body13964_
                                         (gx#core-expand-module-body
                                          _body13964_))
                                     (_E1394313952_)))
                               (_E1394313952_))))
                       (_E1394313952_)))))
           (_E1394213966_)))
       gx#current-expander-context
       _ctx13937_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13732_)
      (letrec ((_expand-special13734_
                (lambda (_hd13863_ _K13864_ _rest13865_ _r13866_)
                  (let* ((_e1386713884_ _hd13863_)
                         (_E1387913888_
                          (lambda ()
                            (_K13864_
                             _rest13865_
                             (cons (gx#core-expand-top _hd13863_) _r13866_))))
                         (_E1386913900_
                          (lambda ()
                            (if (gx#stx-pair? _e1386713884_)
                                (let ((_e1388013892_
                                       (gx#syntax-e _e1386713884_)))
                                  (let ((_hd1388113895_ (##car _e1388013892_))
                                        (_tl1388213897_ (##cdr _e1388013892_)))
                                    (if (and (gx#identifier? _hd1388113895_)
                                             (gx#core-identifier=?
                                              _hd1388113895_
                                              '%#export))
                                        (if '#t
                                            (_K13864_
                                             _rest13865_
                                             (cons _hd13863_ _r13866_))
                                            (_E1387913888_))
                                        (_E1387913888_))))
                                (_E1387913888_))))
                         (_E1386813932_
                          (lambda ()
                            (if (gx#stx-pair? _e1386713884_)
                                (let ((_e1387013904_
                                       (gx#syntax-e _e1386713884_)))
                                  (let ((_hd1387113907_ (##car _e1387013904_))
                                        (_tl1387213909_ (##cdr _e1387013904_)))
                                    (if (and (gx#identifier? _hd1387113907_)
                                             (gx#core-identifier=?
                                              _hd1387113907_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1387213909_)
                                            (let ((_e1387313912_
                                                   (gx#syntax-e
                                                    _tl1387213909_)))
                                              (let ((_hd1387413915_
                                                     (##car _e1387313912_))
                                                    (_tl1387513917_
                                                     (##cdr _e1387313912_)))
                                                (let ((_hd-bind13920_
                                                       _hd1387413915_))
                                                  (if (gx#stx-pair?
                                                       _tl1387513917_)
                                                      (let ((_e1387613922_
                                                             (gx#syntax-e
                                                              _tl1387513917_)))
                                                        (let ((_hd1387713925_
                                                               (##car _e1387613922_))
                                                              (_tl1387813927_
                                                               (##cdr _e1387613922_)))
                                                          (let ((_expr13930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1387713925_))
                    (if (gx#stx-null? _tl1387813927_)
                        (if (gx#core-bind-values? _hd-bind13920_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13920_)
                              (_K13864_ _rest13865_ (cons _hd13863_ _r13866_)))
                            (_E1386913900_))
                        (_E1386913900_)))))
              (_E1386913900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1386913900_))
                                        (_E1386913900_))))
                                (_E1386913900_)))))
                    (_E1386813932_))))
               (_expand-body13735_
                (lambda (_rbody13737_)
                  (let _lp13739_ ((_rest13741_ _rbody13737_) (_body13742_ '()))
                    (let* ((_rest1374313751_ _rest13741_)
                           (_else1374513759_ (lambda () _body13742_))
                           (_K1374713851_
                            (lambda (_rest13762_ _hd13763_)
                              (let* ((_e1376413785_ _hd13763_)
                                     (_E1378013789_
                                      (lambda ()
                                        (_lp13739_
                                         _rest13762_
                                         (cons (gx#core-expand-expression
                                                _hd13763_)
                                               _body13742_))))
                                     (_E1377613803_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376413785_)
                                            (let ((_e1378113793_
                                                   (gx#syntax-e
                                                    _e1376413785_)))
                                              (let ((_hd1378213796_
                                                     (##car _e1378113793_))
                                                    (_tl1378313798_
                                                     (##cdr _e1378113793_)))
                                                (let ((_form13801_
                                                       _hd1378213796_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13801_
                                                       gx#special-form-binding?)
                                                      (_lp13739_
                                                       _rest13762_
                                                       (cons _hd13763_
                                                             _body13742_))
                                                      (_E1378013789_)))))
                                            (_E1378013789_))))
                                     (_E1376613815_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376413785_)
                                            (let ((_e1377713807_
                                                   (gx#syntax-e
                                                    _e1376413785_)))
                                              (let ((_hd1377813810_
                                                     (##car _e1377713807_))
                                                    (_tl1377913812_
                                                     (##cdr _e1377713807_)))
                                                (if (and (gx#identifier?
                                                          _hd1377813810_)
                                                         (gx#core-identifier=?
                                                          _hd1377813810_
                                                          '%#export))
                                                    (if '#t
                                                        (_lp13739_
                                                         _rest13762_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13763_)
                                                               _body13742_))
                                                        (_E1377613803_))
                                                    (_E1377613803_))))
                                            (_E1377613803_))))
                                     (_E1376513847_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376413785_)
                                            (let ((_e1376713819_
                                                   (gx#syntax-e
                                                    _e1376413785_)))
                                              (let ((_hd1376813822_
                                                     (##car _e1376713819_))
                                                    (_tl1376913824_
                                                     (##cdr _e1376713819_)))
                                                (if (and (gx#identifier?
                                                          _hd1376813822_)
                                                         (gx#core-identifier=?
                                                          _hd1376813822_
                                                          '%#define-values))
                                                    (if (gx#stx-pair?
                                                         _tl1376913824_)
                                                        (let ((_e1377013827_
                                                               (gx#syntax-e
                                                                _tl1376913824_)))
                                                          (let ((_hd1377113830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1377013827_))
                        (_tl1377213832_ (##cdr _e1377013827_)))
                    (let ((_hd-bind13835_ _hd1377113830_))
                      (if (gx#stx-pair? _tl1377213832_)
                          (let ((_e1377313837_ (gx#syntax-e _tl1377213832_)))
                            (let ((_hd1377413840_ (##car _e1377313837_))
                                  (_tl1377513842_ (##cdr _e1377313837_)))
                              (let ((_expr13845_ _hd1377413840_))
                                (if (gx#stx-null? _tl1377513842_)
                                    (if '#t
                                        (_lp13739_
                                         _rest13762_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13835_)
                                                 (gx#core-expand-expression
                                                  _expr13845_))
                                                (gx#stx-source _hd13763_))
                                               _body13742_))
                                        (_E1376613815_))
                                    (_E1376613815_)))))
                          (_E1376613815_)))))
                (_E1376613815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1376613815_))))
                                            (_E1376613815_)))))
                                (_E1376513847_)))))
                      (if (##pair? _rest1374313751_)
                          (let ((_hd1374813854_ (##car _rest1374313751_))
                                (_tl1374913856_ (##cdr _rest1374313751_)))
                            (let* ((_hd13859_ _hd1374813854_)
                                   (_rest13861_ _tl1374913856_))
                              (_K1374713851_ _rest13861_ _hd13859_)))
                          (_else1374513759_)))))))
        (_expand-body13735_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13732_)
          _expand-special13734_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13575_
             _expanded?13576_
             _method13577_
             _current-phi13578_
             _expand113579_)
      (letrec ((_K13581_
                (lambda (_rest13699_ _r13700_)
                  (let* ((_e1370113708_ _rest13699_)
                         (_E1370313712_ (lambda () _r13700_))
                         (_E1370213728_
                          (lambda ()
                            (if (gx#stx-pair? _e1370113708_)
                                (let ((_e1370413716_
                                       (gx#syntax-e _e1370113708_)))
                                  (let ((_hd1370513719_ (##car _e1370413716_))
                                        (_tl1370613721_ (##cdr _e1370413716_)))
                                    (let* ((_hd13724_ _hd1370513719_)
                                           (_rest13726_ _tl1370613721_))
                                      (if '#t
                                          (_step13582_
                                           _hd13724_
                                           _rest13726_
                                           _r13700_)
                                          (_E1370313712_)))))
                                (_E1370313712_)))))
                    (_E1370213728_))))
               (_step13582_
                (lambda (_hd13613_ _rest13614_ _r13615_)
                  (let* ((_e1361613634_ _hd13613_)
                         (_E1362913638_
                          (lambda ()
                            (if (_expanded?13576_ (gx#stx-e _hd13613_))
                                (_K13581_
                                 _rest13614_
                                 (cons (gx#stx-e _hd13613_) _r13615_))
                                (_expand113579_
                                 _hd13613_
                                 _K13581_
                                 _rest13614_
                                 _r13615_))))
                         (_E1362513654_
                          (lambda ()
                            (if (gx#stx-pair? _e1361613634_)
                                (let ((_e1363013642_
                                       (gx#syntax-e _e1361613634_)))
                                  (let ((_hd1363113645_ (##car _e1363013642_))
                                        (_tl1363213647_ (##cdr _e1363013642_)))
                                    (let* ((_macro13650_ _hd1363113645_)
                                           (_body13652_ _tl1363213647_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro13650_
                                           gx#syntax-binding?)
                                          (_K13581_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro13650_)
                                                  _hd13613_
                                                  _method13577_)
                                                 _rest13614_)
                                           _r13615_)
                                          (_E1362913638_)))))
                                (_E1362913638_))))
                         (_E1361813668_
                          (lambda ()
                            (if (gx#stx-pair? _e1361613634_)
                                (let ((_e1362613658_
                                       (gx#syntax-e _e1361613634_)))
                                  (let ((_hd1362713661_ (##car _e1362613658_))
                                        (_tl1362813663_ (##cdr _e1362613658_)))
                                    (if (eq? (gx#stx-e _hd1362713661_) 'begin:)
                                        (let ((_body13666_ _tl1362813663_))
                                          (if '#t
                                              (_K13581_
                                               (gx#stx-foldr
                                                cons
                                                _rest13614_
                                                _body13666_)
                                               _r13615_)
                                              (_E1362513654_)))
                                        (_E1362513654_))))
                                (_E1362513654_))))
                         (_E1361713695_
                          (lambda ()
                            (if (gx#stx-pair? _e1361613634_)
                                (let ((_e1361913672_
                                       (gx#syntax-e _e1361613634_)))
                                  (let ((_hd1362013675_ (##car _e1361913672_))
                                        (_tl1362113677_ (##cdr _e1361913672_)))
                                    (if (eq? (gx#stx-e _hd1362013675_) 'phi:)
                                        (if (gx#stx-pair? _tl1362113677_)
                                            (let ((_e1362213680_
                                                   (gx#syntax-e
                                                    _tl1362113677_)))
                                              (let ((_hd1362313683_
                                                     (##car _e1362213680_))
                                                    (_tl1362413685_
                                                     (##cdr _e1362213680_)))
                                                (let* ((_dphi13688_
                                                        _hd1362313683_)
                                                       (_body13690_
                                                        _tl1362413685_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi13688_)
                                                      (let ((_rbody13693_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K13581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body13690_
                         '()))
                      _current-phi13578_
                      (fx+ (gx#stx-e _dphi13688_) (_current-phi13578_)))))
                (_K13581_ _rest13614_ (foldr1 cons _r13615_ _rbody13693_)))
              (_E1361813668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1361813668_))
                                        (_E1361813668_))))
                                (_E1361813668_)))))
                    (_E1361713695_)))))
        (let* ((_e1358313590_ _stx13575_)
               (_E1358513594_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1358313590_)))
               (_E1358413609_
                (lambda ()
                  (if (gx#stx-pair? _e1358313590_)
                      (let ((_e1358613598_ (gx#syntax-e _e1358313590_)))
                        (let ((_hd1358713601_ (##car _e1358613598_))
                              (_tl1358813603_ (##cdr _e1358613598_)))
                          (let ((_body13606_ _tl1358813603_))
                            (if '#t
                                (if (_current-phi13578_)
                                    (_K13581_ _body13606_ '())
                                    (call-with-parameters
                                     (lambda () (_K13581_ _body13606_ '()))
                                     _current-phi13578_
                                     (gx#current-expander-phi)))
                                (_E1358513594_)))))
                      (_E1358513594_)))))
          (_E1358413609_)))))
  (define gx#core-expand-import%__%
    (lambda (_stx13242_ _internal-expand?13243_)
      (letrec ((_expand113245_
                (lambda (_hd13555_ _K13556_ _rest13557_ _r13558_)
                  (if (gx#core-bound-module? _hd13555_)
                      (_import113246_
                       (gx#syntax-local-e__0 _hd13555_)
                       _K13556_
                       _rest13557_
                       _r13558_)
                      (if (gx#core-library-module-path? _hd13555_)
                          (_import113246_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _hd13555_))
                           _K13556_
                           _rest13557_
                           _r13558_)
                          (let ((_e13560_ (gx#stx-e _hd13555_)))
                            (if (pair? _e13560_)
                                (let ((_$e13562_ (gx#stx-e (car _e13560_))))
                                  (if (eq? 'spec: _$e13562_)
                                      (_import-spec13249_
                                       _hd13555_
                                       _K13556_
                                       _rest13557_
                                       _r13558_)
                                      (if (eq? 'in: _$e13562_)
                                          (_import-submodule13247_
                                           _hd13555_
                                           _K13556_
                                           _rest13557_
                                           _r13558_)
                                          (if (eq? 'runtime: _$e13562_)
                                              (_import-runtime13248_
                                               _hd13555_
                                               _K13556_
                                               _rest13557_
                                               _r13558_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx13242_
                                               _hd13555_)))))
                                (if (string? _e13560_)
                                    (_import113246_
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__%
                                       _hd13555_
                                       (gx#stx-source _stx13242_)))
                                     _K13556_
                                     _rest13557_
                                     _r13558_)
                                    (if (##structure-instance-of?
                                         _e13560_
                                         'gx#module-context::t)
                                        (_K13556_
                                         _rest13557_
                                         (cons _e13560_ _r13558_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; illegal import"
                                         _stx13242_
                                         _hd13555_)))))))))
               (_import113246_
                (lambda (_ctx13544_ _K13545_ _rest13546_ _r13547_)
                  (let ((_dphi13549_
                         (fx- (gx#current-import-expander-phi)
                              (gx#current-expander-phi))))
                    (_K13545_
                     _rest13546_
                     (cons (##structure
                            gx#import-set::t
                            _ctx13544_
                            _dphi13549_
                            (map (lambda (_g1355013552_)
                                   (gx#core-module-export->import__%
                                    _g1355013552_
                                    '#f
                                    _dphi13549_))
                                 (##unchecked-structure-ref
                                  _ctx13544_
                                  '9
                                  gx#module-context::t
                                  '#f)))
                           _r13547_)))))
               (_import-submodule13247_
                (lambda (_hd13511_ _K13512_ _rest13513_ _r13514_)
                  (let* ((_e1351513522_ _hd13511_)
                         (_E1351713526_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1351513522_)))
                         (_E1351613540_
                          (lambda ()
                            (if (gx#stx-pair? _e1351513522_)
                                (let ((_e1351813530_
                                       (gx#syntax-e _e1351513522_)))
                                  (let ((_hd1351913533_ (##car _e1351813530_))
                                        (_tl1352013535_ (##cdr _e1351813530_)))
                                    (let ((_spath13538_ _tl1352013535_))
                                      (if '#t
                                          (_import113246_
                                           (_import-spec-source13250_
                                            _spath13538_)
                                           _K13512_
                                           _rest13513_
                                           _r13514_)
                                          (_E1351713526_)))))
                                (_E1351713526_)))))
                    (_E1351613540_))))
               (_import-runtime13248_
                (lambda (_hd13478_ _K13479_ _rest13480_ _r13481_)
                  (let* ((_e1348213489_ _hd13478_)
                         (_E1348413493_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1348213489_)))
                         (_E1348313507_
                          (lambda ()
                            (if (gx#stx-pair? _e1348213489_)
                                (let ((_e1348513497_
                                       (gx#syntax-e _e1348213489_)))
                                  (let ((_hd1348613500_ (##car _e1348513497_))
                                        (_tl1348713502_ (##cdr _e1348513497_)))
                                    (let ((_spath13505_ _tl1348713502_))
                                      (if '#t
                                          (_K13479_
                                           _rest13480_
                                           (cons (_import-spec-source13250_
                                                  _spath13505_)
                                                 _r13481_))
                                          (_E1348413493_)))))
                                (_E1348413493_)))))
                    (_E1348313507_))))
               (_import-spec13249_
                (lambda (_hd13317_ _K13318_ _rest13319_ _r13320_)
                  (let* ((_e1332113338_ _hd13317_)
                         (_E1333013342_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1332113338_)))
                         (_E1332313452_
                          (lambda ()
                            (if (gx#stx-pair? _e1332113338_)
                                (let ((_e1333113346_
                                       (gx#syntax-e _e1332113338_)))
                                  (let ((_hd1333213349_ (##car _e1333113346_))
                                        (_tl1333313351_ (##cdr _e1333113346_)))
                                    (if (gx#stx-pair? _tl1333313351_)
                                        (let ((_e1333413354_
                                               (gx#syntax-e _tl1333313351_)))
                                          (let ((_hd1333513357_
                                                 (##car _e1333413354_))
                                                (_tl1333613359_
                                                 (##cdr _e1333413354_)))
                                            (let* ((_path13362_ _hd1333513357_)
                                                   (_specs13364_
                                                    _tl1333613359_))
                                              (if '#t
                                                  (let ((_src-ctx13366_
                                                         (_import-spec-source13250_
                                                          _path13362_))
                                                        (_exports13367_
                                                         (make-table))
                                                        (_specs13368_
                                                         (gx#syntax->list
                                                          _specs13364_)))
                                                    (for-each
                                                     (lambda (_out13370_)
                                                       (table-set!
                                                        _exports13367_
                                                        (cons (##unchecked-structure-ref
                                                               _out13370_
                                                               '3
                                                               gx#module-export::t
                                                               '#f)
                                                              (##unchecked-structure-ref
                                                               _out13370_
                                                               '4
                                                               gx#module-export::t
                                                               '#f))
                                                        _out13370_))
                                                     (##unchecked-structure-ref
                                                      _src-ctx13366_
                                                      '9
                                                      gx#module-context::t
                                                      '#f))
                                                    (_K13318_
                                                     _rest13319_
                                                     (foldl1 (lambda (_spec13372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r13373_)
                       (let* ((_e1337413390_ _spec13372_)
                              (_E1337613394_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e1337413390_)))
                              (_E1337513448_
                               (lambda ()
                                 (if (gx#stx-pair? _e1337413390_)
                                     (let ((_e1337713398_
                                            (gx#syntax-e _e1337413390_)))
                                       (let ((_hd1337813401_
                                              (##car _e1337713398_))
                                             (_tl1337913403_
                                              (##cdr _e1337713398_)))
                                         (let ((_phi13406_ _hd1337813401_))
                                           (if (gx#stx-pair? _tl1337913403_)
                                               (let ((_e1338013408_
                                                      (gx#syntax-e
                                                       _tl1337913403_)))
                                                 (let ((_hd1338113411_
                                                        (##car _e1338013408_))
                                                       (_tl1338213413_
                                                        (##cdr _e1338013408_)))
                                                   (let ((_name13416_
                                                          _hd1338113411_))
                                                     (if (gx#stx-pair?
                                                          _tl1338213413_)
                                                         (let ((_e1338313418_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1338213413_)))
                   (let ((_hd1338413421_ (##car _e1338313418_))
                         (_tl1338513423_ (##cdr _e1338313418_)))
                     (let ((_src-phi13426_ _hd1338413421_))
                       (if (gx#stx-pair? _tl1338513423_)
                           (let ((_e1338613428_ (gx#syntax-e _tl1338513423_)))
                             (let ((_hd1338713431_ (##car _e1338613428_))
                                   (_tl1338813433_ (##cdr _e1338613428_)))
                               (let ((_src-name13436_ _hd1338713431_))
                                 (if (gx#stx-null? _tl1338813433_)
                                     (if (and (gx#stx-fixnum? _src-phi13426_)
                                              (gx#identifier? _src-name13436_)
                                              (gx#stx-fixnum? _phi13406_)
                                              (gx#identifier? _name13416_))
                                         (let ((_src-phi13438_
                                                (gx#stx-e _src-phi13426_))
                                               (_src-name13439_
                                                (gx#core-identifier-key
                                                 _src-name13436_))
                                               (_phi13440_
                                                (gx#stx-e _phi13406_))
                                               (_name13441_
                                                (gx#core-identifier-key
                                                 _name13416_)))
                                           (let ((_$e13443_
                                                  (table-ref
                                                   _exports13367_
                                                   (cons _src-phi13438_
                                                         _src-name13439_)
                                                   '#f)))
                                             (if _$e13443_
                                                 ((lambda (_out13446_)
                                                    (cons (gx#core-module-export->import__%
                                                           _out13446_
                                                           _name13441_
                                                           (fx- _phi13440_
                                                                _src-phi13438_))
                                                          _r13373_))
                                                  _$e13443_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; no matching export"
                                                  _stx13242_
                                                  _hd13317_))))
                                         (_E1337613394_))
                                     (_E1337613394_)))))
                           (_E1337613394_)))))
                 (_E1337613394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1337613394_)))))
                                     (_E1337613394_)))))
                         (_E1337513448_)))
                     _r13320_
                     _specs13368_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1333013342_)))))
                                        (_E1333013342_))))
                                (_E1333013342_))))
                         (_E1332213474_
                          (lambda ()
                            (if (gx#stx-pair? _e1332113338_)
                                (let ((_e1332413456_
                                       (gx#syntax-e _e1332113338_)))
                                  (let ((_hd1332513459_ (##car _e1332413456_))
                                        (_tl1332613461_ (##cdr _e1332413456_)))
                                    (if (gx#stx-pair? _tl1332613461_)
                                        (let ((_e1332713464_
                                               (gx#syntax-e _tl1332613461_)))
                                          (let ((_hd1332813467_
                                                 (##car _e1332713464_))
                                                (_tl1332913469_
                                                 (##cdr _e1332713464_)))
                                            (let ((_path13472_ _hd1332813467_))
                                              (if (gx#stx-null? _tl1332913469_)
                                                  (if '#t
                                                      (_K13318_
                                                       _rest13319_
                                                       (cons (_import-spec-source13250_
                                                              _path13472_)
                                                             _r13320_))
                                                      (_E1332313452_))
                                                  (_E1332313452_)))))
                                        (_E1332313452_))))
                                (_E1332313452_)))))
                    (_E1332213474_))))
               (_import-spec-source13250_
                (lambda (_spath13315_)
                  (gx#core-import-nested-module _spath13315_ _stx13242_)))
               (_import!13251_
                (lambda (_rbody13264_)
                  (letrec* ((_current-ctx13266_ (gx#current-expander-context))
                            (_deps13267_ (make-table 'test: eq?))
                            (_bind!13268_
                             (lambda (_hd13313_)
                               (gx#core-bind-import!__1
                                _hd13313_
                                _current-ctx13266_))))
                    (let _lp13270_ ((_rest13272_ _rbody13264_)
                                    (_body13273_ '()))
                      (let* ((_rest1327413282_ _rest13272_)
                             (_else1327613292_
                              (lambda ()
                                (if (##structure-instance-of?
                                     _current-ctx13266_
                                     'gx#module-context::t)
                                    (##unchecked-structure-set!
                                     _current-ctx13266_
                                     (foldl1 cons
                                             (##unchecked-structure-ref
                                              _current-ctx13266_
                                              '8
                                              gx#module-context::t
                                              '#f)
                                             _body13273_)
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    '#!void)
                                (table-for-each
                                 (lambda (_ctx13290_ _g16036_)
                                   (gx#eval-module _ctx13290_))
                                 _deps13267_)
                                _body13273_))
                             (_K1327813301_
                              (lambda (_rest13295_ _hd13296_)
                                (if (##structure-direct-instance-of?
                                     _hd13296_
                                     'gx#module-import::t)
                                    (begin
                                      (_bind!13268_ _hd13296_)
                                      (if (and (fxpositive?
                                                (##unchecked-structure-ref
                                                 _hd13296_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (fxzero? (##unchecked-structure-ref
                                                         (##unchecked-structure-ref
                                                          _hd13296_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '3
                                                         gx#module-export::t
                                                         '#f)))
                                          (table-set!
                                           _deps13267_
                                           (##unchecked-structure-ref
                                            (##unchecked-structure-ref
                                             _hd13296_
                                             '1
                                             gx#module-import::t
                                             '#f)
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           '#t)
                                          '#!void))
                                    (if (##structure-direct-instance-of?
                                         _hd13296_
                                         'gx#import-set::t)
                                        (begin
                                          (for-each
                                           _bind!13268_
                                           (##unchecked-structure-ref
                                            _hd13296_
                                            '3
                                            gx#import-set::t
                                            '#f))
                                          (if (fxpositive?
                                               (##unchecked-structure-ref
                                                _hd13296_
                                                '2
                                                gx#import-set::t
                                                '#f))
                                              (table-set!
                                               _deps13267_
                                               (##unchecked-structure-ref
                                                _hd13296_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (let ((_$e13298_
                                               (##structure-instance-of?
                                                _hd13296_
                                                'gx#module-context::t)))
                                          (if _$e13298_
                                              _$e13298_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Unexpected import"
                                               _stx13242_
                                               _hd13296_)))))
                                (_lp13270_
                                 _rest13295_
                                 (cons _hd13296_ _body13273_)))))
                        (if (##pair? _rest1327413282_)
                            (let ((_hd1327913304_ (##car _rest1327413282_))
                                  (_tl1328013306_ (##cdr _rest1327413282_)))
                              (let* ((_hd13309_ _hd1327913304_)
                                     (_rest13311_ _tl1328013306_))
                                (_K1327813301_ _rest13311_ _hd13309_)))
                            (_else1327613292_)))))))
               (_expanded-import?13252_
                (lambda (_e13256_)
                  (let ((_$e13258_
                         (##structure-direct-instance-of?
                          _e13256_
                          'gx#import-set::t)))
                    (if _$e13258_
                        _$e13258_
                        (let ((_$e13261_
                               (##structure-direct-instance-of?
                                _e13256_
                                'gx#module-import::t)))
                          (if _$e13261_
                              _$e13261_
                              (##structure-instance-of?
                               _e13256_
                               'gx#module-context::t))))))))
        (let ((_rbody13254_
               (gx#core-expand-import/export
                _stx13242_
                _expanded-import?13252_
                'apply-import-expander
                gx#current-import-expander-phi
                _expand113245_)))
          (if _internal-expand?13243_
              (reverse _rbody13254_)
              (gx#core-quote-syntax__1
               (gx#core-cons '%#import (_import!13251_ _rbody13254_))
               (gx#stx-source _stx13242_)))))))
  (define gx#core-expand-import%__0
    (lambda (_stx13568_)
      (let ((_internal-expand?13570_ '#f))
        (gx#core-expand-import%__% _stx13568_ _internal-expand?13570_))))
  (define gx#core-expand-import%
    (lambda _g16038_
      (let ((_g16037_ (length _g16038_)))
        (cond ((##fx= _g16037_ 1) (apply gx#core-expand-import%__0 _g16038_))
              ((##fx= _g16037_ 2) (apply gx#core-expand-import%__% _g16038_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-import%
                _g16038_))))))
  (define gx#core-import-nested-module
    (lambda (_spath13169_ _where13170_)
      (let* ((_e1317113178_ _spath13169_)
             (_E1317313182_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1317113178_)))
             (_E1317213237_
              (lambda ()
                (if (gx#stx-pair? _e1317113178_)
                    (let ((_e1317413186_ (gx#syntax-e _e1317113178_)))
                      (let ((_hd1317513189_ (##car _e1317413186_))
                            (_tl1317613191_ (##cdr _e1317413186_)))
                        (let* ((_origin13194_ _hd1317513189_)
                               (_sub13196_ _tl1317613191_))
                          (if '#t
                              (let ((_origin-ctx13198_
                                     (if (gx#stx-false? _origin13194_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13194_))))
                                (let _lp13200_ ((_rest13202_ _sub13196_)
                                                (_ctx13203_ _origin-ctx13198_))
                                  (let* ((_e1320413211_ _rest13202_)
                                         (_E1320613215_ (lambda () _ctx13203_))
                                         (_E1320513233_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1320413211_)
                                                (let ((_e1320713219_
                                                       (gx#syntax-e
                                                        _e1320413211_)))
                                                  (let ((_hd1320813222_
                                                         (##car _e1320713219_))
                                                        (_tl1320913224_
                                                         (##cdr _e1320713219_)))
                                                    (let* ((_id13227_
                                                            _hd1320813222_)
                                                           (_rest13229_
                                                            _tl1320913224_))
                                                      (if '#t
                                                          (let ((_bind13231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13227_ '0 _ctx13203_)))
                    (if (and (##structure-direct-instance-of?
                              _bind13231_
                              'gx#syntax-binding::t)
                             (##structure-instance-of?
                              (##unchecked-structure-ref
                               _bind13231_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              'gx#module-context::t))
                        '#!void
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; not bound as module"
                         _where13170_
                         _spath13169_
                         _id13227_))
                    (_lp13200_
                     _rest13229_
                     (##unchecked-structure-ref
                      _bind13231_
                      '4
                      gx#syntax-binding::t
                      '#f)))
                  (_E1320613215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1320613215_)))))
                                    (_E1320513233_))))
                              (_E1317313182_)))))
                    (_E1317313182_)))))
        (_E1317213237_))))
  (define gx#core-expand-import-source
    (lambda (_hd13167_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13167_ '()))
       '#t)))
  (define gx#core-expand-export%__%
    (lambda (_stx12678_ _internal-expand?12679_)
      (letrec* ((_make-export__1597615977_
                 (lambda (_bind13115_ _phi13116_ _ctx13117_ _name13118_)
                   (let* ((_key13120_
                           (##unchecked-structure-ref
                            _bind13115_
                            '2
                            gx#binding::t
                            '#f))
                          (_export-key13122_
                           (if _name13118_
                               (gx#core-identifier-key _name13118_)
                               _key13120_)))
                     (##structure
                      gx#module-export::t
                      _ctx13117_
                      _key13120_
                      _phi13116_
                      _export-key13122_
                      (let ((_$e13125_
                             (##structure-instance-of?
                              _bind13115_
                              'gx#extern-binding::t)))
                        (if _$e13125_
                            _$e13125_
                            (##structure-direct-instance-of?
                             _bind13115_
                             'gx#import-binding::t)))))))
                (_make-export__0__1597815981_
                 (lambda (_bind13131_)
                   (let* ((_phi13133_ (gx#current-export-expander-phi))
                          (_ctx13135_ (gx#current-expander-context))
                          (_name13137_ '#f))
                     (_make-export__1597615977_
                      _bind13131_
                      _phi13133_
                      _ctx13135_
                      _name13137_))))
                (_make-export__1__1597915982_
                 (lambda (_bind13139_ _phi13140_)
                   (let* ((_ctx13142_ (gx#current-expander-context))
                          (_name13144_ '#f))
                     (_make-export__1597615977_
                      _bind13139_
                      _phi13140_
                      _ctx13142_
                      _name13144_))))
                (_make-export__2__1598015983_
                 (lambda (_bind13146_ _phi13147_ _ctx13148_)
                   (let ((_name13150_ '#f))
                     (_make-export__1597615977_
                      _bind13146_
                      _phi13147_
                      _ctx13148_
                      _name13150_))))
                (_make-export12681_
                 (lambda _g16040_
                   (let ((_g16039_ (length _g16040_)))
                     (cond ((##fx= _g16039_ 1)
                            (apply _make-export__0__1597815981_ _g16040_))
                           ((##fx= _g16039_ 2)
                            (apply _make-export__1__1597915982_ _g16040_))
                           ((##fx= _g16039_ 3)
                            (apply _make-export__2__1598015983_ _g16040_))
                           ((##fx= _g16039_ 4)
                            (apply _make-export__1597615977_ _g16040_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g16040_))))))
                (_expand112682_
                 (lambda (_hd12828_ _K12829_ _rest12830_ _r12831_)
                   (let* ((_e1283212864_ _hd12828_)
                          (_E1285912868_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; illegal export"
                              _stx12678_
                              _hd12828_)))
                          (_E1284912947_
                           (lambda ()
                             (if (gx#stx-pair? _e1283212864_)
                                 (let ((_e1286012872_
                                        (gx#syntax-e _e1283212864_)))
                                   (let ((_hd1286112875_ (##car _e1286012872_))
                                         (_tl1286212877_
                                          (##cdr _e1286012872_)))
                                     (if (eq? (gx#stx-e _hd1286112875_)
                                              'import:)
                                         (let ((_in12880_ _tl1286212877_))
                                           (if (gx#stx-list? _in12880_)
                                               (let _lp12882_ ((_in-rest12884_
                                                                _in12880_)
                                                               (_r12885_
                                                                _r12831_))
                                                 (let* ((_e1288612893_
                                                         _in-rest12884_)
                                                        (_E1288812897_
                                                         (lambda ()
                                                           (_K12829_
                                                            _rest12830_
                                                            _r12885_)))
                                                        (_E1288712943_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                _e1288612893_)
                                                               (let ((_e1288912901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _e1288612893_)))
                         (let ((_hd1289012904_ (##car _e1288912901_))
                               (_tl1289112906_ (##cdr _e1288912901_)))
                           (let* ((_hd12909_ _hd1289012904_)
                                  (_in-rest12911_ _tl1289112906_))
                             (if '#t
                                 (let ((_src12941_
                                        (if (gx#core-bound-module? _hd12909_)
                                            (gx#syntax-local-e__0 _hd12909_)
                                            (if (gx#core-library-module-path?
                                                 _hd12909_)
                                                (gx#import-module__0
                                                 (gx#core-resolve-library-module-path
                                                  _hd12909_))
                                                (if (gx#stx-string? _hd12909_)
                                                    (gx#import-module__0
                                                     (gx#core-resolve-module-path__%
                                                      _hd12909_
                                                      (gx#stx-source
                                                       _stx12678_)))
                                                    (let* ((_e1291212919_
                                                            _hd12909_)
                                                           (_E1291412923_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; illegal re-export"
                                                               _stx12678_
                                                               _hd12909_)))
                                                           (_E1291312937_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1291212919_)
                          (let ((_e1291512927_ (gx#syntax-e _e1291212919_)))
                            (let ((_hd1291612930_ (##car _e1291512927_))
                                  (_tl1291712932_ (##cdr _e1291512927_)))
                              (if (eq? (gx#stx-e _hd1291612930_) 'in:)
                                  (let ((_spath12935_ _tl1291712932_))
                                    (if '#t
                                        (gx#core-import-nested-module
                                         _spath12935_
                                         _stx12678_)
                                        (_E1291412923_)))
                                  (_E1291412923_))))
                          (_E1291412923_)))))
              (_E1291312937_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_lp12882_
                                    _in-rest12911_
                                    (_export-imports12683_
                                     _src12941_
                                     _r12885_)))
                                 (_E1288812897_)))))
                       (_E1288812897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1288712943_)))
                                               (_E1285912868_)))
                                         (_E1285912868_))))
                                 (_E1285912868_))))
                          (_E1283612986_
                           (lambda ()
                             (if (gx#stx-pair? _e1283212864_)
                                 (let ((_e1285012951_
                                        (gx#syntax-e _e1283212864_)))
                                   (let ((_hd1285112954_ (##car _e1285012951_))
                                         (_tl1285212956_
                                          (##cdr _e1285012951_)))
                                     (if (eq? (gx#stx-e _hd1285112954_)
                                              'rename:)
                                         (if (gx#stx-pair? _tl1285212956_)
                                             (let ((_e1285312959_
                                                    (gx#syntax-e
                                                     _tl1285212956_)))
                                               (let ((_hd1285412962_
                                                      (##car _e1285312959_))
                                                     (_tl1285512964_
                                                      (##cdr _e1285312959_)))
                                                 (let ((_id12967_
                                                        _hd1285412962_))
                                                   (if (gx#stx-pair?
                                                        _tl1285512964_)
                                                       (let ((_e1285612969_
                                                              (gx#syntax-e
                                                               _tl1285512964_)))
                                                         (let ((_hd1285712972_
                                                                (##car _e1285612969_))
                                                               (_tl1285812974_
                                                                (##cdr _e1285612969_)))
                                                           (let ((_name12977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1285712972_))
                     (if (gx#stx-null? _tl1285812974_)
                         (if '#t
                             (let* ((_phi12979_
                                     (gx#current-export-expander-phi))
                                    (_$e12981_
                                     (gx#core-resolve-identifier__1
                                      _id12967_
                                      _phi12979_)))
                               (if _$e12981_
                                   ((lambda (_bind12984_)
                                      (_K12829_
                                       _rest12830_
                                       (cons (_make-export__1597615977_
                                              _bind12984_
                                              _phi12979_
                                              (gx#current-expander-context)
                                              _name12977_)
                                             _r12831_)))
                                    _$e12981_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx12678_
                                    _hd12828_
                                    _id12967_)))
                             (_E1284912947_))
                         (_E1284912947_)))))
               (_E1284912947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E1284912947_))
                                         (_E1284912947_))))
                                 (_E1284912947_))))
                          (_E1283513035_
                           (lambda ()
                             (if (gx#stx-pair? _e1283212864_)
                                 (let ((_e1283712990_
                                        (gx#syntax-e _e1283212864_)))
                                   (let ((_hd1283812993_ (##car _e1283712990_))
                                         (_tl1283912995_
                                          (##cdr _e1283712990_)))
                                     (if (eq? (gx#stx-e _hd1283812993_) 'spec:)
                                         (if (gx#stx-pair? _tl1283912995_)
                                             (let ((_e1284012998_
                                                    (gx#syntax-e
                                                     _tl1283912995_)))
                                               (let ((_hd1284113001_
                                                      (##car _e1284012998_))
                                                     (_tl1284213003_
                                                      (##cdr _e1284012998_)))
                                                 (let ((_phi13006_
                                                        _hd1284113001_))
                                                   (if (gx#stx-pair?
                                                        _tl1284213003_)
                                                       (let ((_e1284313008_
                                                              (gx#syntax-e
                                                               _tl1284213003_)))
                                                         (let ((_hd1284413011_
                                                                (##car _e1284313008_))
                                                               (_tl1284513013_
                                                                (##cdr _e1284313008_)))
                                                           (let ((_id13016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1284413011_))
                     (if (gx#stx-pair? _tl1284513013_)
                         (let ((_e1284613018_ (gx#syntax-e _tl1284513013_)))
                           (let ((_hd1284713021_ (##car _e1284613018_))
                                 (_tl1284813023_ (##cdr _e1284613018_)))
                             (let ((_name13026_ _hd1284713021_))
                               (if (gx#stx-null? _tl1284813023_)
                                   (if (and (gx#stx-fixnum? _phi13006_)
                                            (gx#identifier? _id13016_)
                                            (gx#identifier? _name13026_))
                                       (let* ((_phi13028_
                                               (gx#stx-e _phi13006_))
                                              (_$e13030_
                                               (gx#core-resolve-identifier__1
                                                _id13016_
                                                _phi13028_)))
                                         (if _$e13030_
                                             ((lambda (_bind13033_)
                                                (_K12829_
                                                 _rest12830_
                                                 (cons (_make-export__1597615977_
                                                        _bind13033_
                                                        _phi13028_
                                                        (gx#current-expander-context)
                                                        _name13026_)
                                                       _r12831_)))
                                              _$e13030_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _stx12678_
                                              _hd12828_
                                              _id13016_)))
                                       (_E1283612986_))
                                   (_E1283612986_)))))
                         (_E1283612986_)))))
               (_E1283612986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E1283612986_))
                                         (_E1283612986_))))
                                 (_E1283612986_))))
                          (_E1283413046_
                           (lambda ()
                             (let ((_id13039_ _e1283212864_))
                               (if (gx#identifier? _id13039_)
                                   (let ((_$e13041_
                                          (gx#core-resolve-identifier__1
                                           _id13039_
                                           (gx#current-export-expander-phi))))
                                     (if _$e13041_
                                         ((lambda (_bind13044_)
                                            (_K12829_
                                             _rest12830_
                                             (cons (_make-export__0__1597815981_
                                                    _bind13044_)
                                                   _r12831_)))
                                          _$e13041_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Reference to unbound identifier"
                                          _stx12678_
                                          _hd12828_)))
                                   (_E1283513035_)))))
                          (_E1283313110_
                           (lambda ()
                             (if (eq? (gx#stx-e _e1283212864_) '#t)
                                 (if '#t
                                     (let* ((_current-ctx13050_
                                             (gx#current-expander-context))
                                            (_current-phi13052_
                                             (gx#current-export-expander-phi))
                                            (_phi-ctx13054_
                                             (gx#core-context-shift
                                              _current-ctx13050_
                                              _current-phi13052_))
                                            (_phi-bind13056_
                                             (table->list
                                              (##unchecked-structure-ref
                                               _phi-ctx13054_
                                               '2
                                               gx#expander-context::t
                                               '#f))))
                                       (let _lp13059_ ((_bind-rest13061_
                                                        _phi-bind13056_)
                                                       (_set13062_ '()))
                                         (let* ((_bind-rest1306313073_
                                                 _bind-rest13061_)
                                                (_else1306513081_
                                                 (lambda ()
                                                   (_K12829_
                                                    _rest12830_
                                                    (cons (##structure
                                                           gx#export-set::t
                                                           '#f
                                                           _current-phi13052_
                                                           _set13062_)
                                                          _r12831_))))
                                                (_K1306713091_
                                                 (lambda (_bind-rest13084_
                                                          _bind13085_
                                                          _key13086_)
                                                   (if (or (##structure-direct-instance-of?
                                                            _bind13085_
                                                            'gx#import-binding::t)
                                                           (gx#private-feature-binding?
                                                            _bind13085_))
                                                       (_lp13059_
                                                        _bind-rest13084_
                                                        _set13062_)
                                                       (_lp13059_
                                                        _bind-rest13084_
                                                        (cons (_make-export__2__1598015983_
                                                               _bind13085_
                                                               _current-phi13052_
                                                               _current-ctx13050_)
                                                              _set13062_))))))
                                           (if (##pair? _bind-rest1306313073_)
                                               (let ((_hd1306813094_
                                                      (##car _bind-rest1306313073_))
                                                     (_tl1306913096_
                                                      (##cdr _bind-rest1306313073_)))
                                                 (if (##pair? _hd1306813094_)
                                                     (let ((_hd1307013099_
                                                            (##car _hd1306813094_))
                                                           (_tl1307113101_
                                                            (##cdr _hd1306813094_)))
                                                       (let* ((_key13104_
                                                               _hd1307013099_)
                                                              (_bind13106_
                                                               _tl1307113101_)
                                                              (_bind-rest13108_
                                                               _tl1306913096_))
                                                         (_K1306713091_
                                                          _bind-rest13108_
                                                          _bind13106_
                                                          _key13104_)))
                                                     (_else1306513081_)))
                                               (_else1306513081_)))))
                                     (_E1283413046_))
                                 (_E1283413046_)))))
                     (_E1283313110_))))
                (_export-imports12683_
                 (lambda (_src12704_ _r12705_)
                   (letrec* ((_current-ctx12707_ (gx#current-expander-context))
                             (_current-phi12708_
                              (gx#current-export-expander-phi))
                             (_import->export12709_
                              (lambda (_in12790_)
                                (let* ((_in1279112799_ _in12790_)
                                       (_E1279312803_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _in1279112799_)))
                                       (_K1279412810_
                                        (lambda (_phi12806_
                                                 _key12807_
                                                 _out12808_)
                                          (##structure
                                           gx#module-export::t
                                           _current-ctx12707_
                                           _key12807_
                                           _phi12806_
                                           _key12807_
                                           '#t))))
                                  (if (##structure-direct-instance-of?
                                       _in1279112799_
                                       'gx#module-import::t)
                                      (let* ((_e1279512813_
                                              (##vector-ref _in1279112799_ '1))
                                             (_out12816_ _e1279512813_)
                                             (_e1279612818_
                                              (##vector-ref _in1279112799_ '2))
                                             (_key12821_ _e1279612818_)
                                             (_e1279712823_
                                              (##vector-ref _in1279112799_ '3))
                                             (_phi12826_ _e1279712823_))
                                        (_K1279412810_
                                         _phi12826_
                                         _key12821_
                                         _out12816_))
                                      (_E1279312803_)))))
                             (_fold-e12710_
                              (lambda (_in12712_ _r12713_)
                                (let* ((_in1271412728_ _in12712_)
                                       (_else1271712736_ (lambda () _r12713_)))
                                  (let ((_K1272312772_
                                         (lambda (_phi12768_
                                                  _key12769_
                                                  _out12770_)
                                           (if (and (fx= _phi12768_
                                                         _current-phi12708_)
                                                    (eq? _src12704_
                                                         (##unchecked-structure-ref
                                                          _out12770_
                                                          '1
                                                          gx#module-export::t
                                                          '#f)))
                                               (cons (_import->export12709_
                                                      _in12712_)
                                                     _r12713_)
                                               _r12713_)))
                                        (_K1271912747_
                                         (lambda (_imports12740_
                                                  _phi12741_
                                                  _ctx12742_)
                                           (if (and (fx= _phi12741_
                                                         _current-phi12708_)
                                                    (eq? _src12704_
                                                         _ctx12742_))
                                               (foldl1 (lambda (_in12744_
                                                                _r12745_)
                                                         (cons (_import->export12709_
                                                                _in12744_)
                                                               _r12745_))
                                                       _r12713_
                                                       _imports12740_)
                                               _r12713_))))
                                    (let ((_try-match1271612765_
                                           (lambda ()
                                             (if (##structure-direct-instance-of?
                                                  _in1271412728_
                                                  'gx#import-set::t)
                                                 (let* ((_e1272012750_
                                                         (##vector-ref
                                                          _in1271412728_
                                                          '1))
                                                        (_e1272112755_
                                                         (##vector-ref
                                                          _in1271412728_
                                                          '2))
                                                        (_e1272212760_
                                                         (##vector-ref
                                                          _in1271412728_
                                                          '3)))
                                                   (let ((_ctx12753_
                                                          _e1272012750_)
                                                         (_phi12758_
                                                          _e1272112755_)
                                                         (_imports12763_
                                                          _e1272212760_))
                                                     (_K1271912747_
                                                      _imports12763_
                                                      _phi12758_
                                                      _ctx12753_)))
                                                 (_else1271712736_)))))
                                      (if (##structure-direct-instance-of?
                                           _in1271412728_
                                           'gx#module-import::t)
                                          (let* ((_e1272412775_
                                                  (##vector-ref
                                                   _in1271412728_
                                                   '1))
                                                 (_e1272512780_
                                                  (##vector-ref
                                                   _in1271412728_
                                                   '2))
                                                 (_e1272612785_
                                                  (##vector-ref
                                                   _in1271412728_
                                                   '3)))
                                            (let ((_out12778_ _e1272412775_)
                                                  (_key12783_ _e1272512780_)
                                                  (_phi12788_ _e1272612785_))
                                              (_K1272312772_
                                               _phi12788_
                                               _key12783_
                                               _out12778_)))
                                          (_try-match1271612765_))))))))
                     (cons (##structure
                            gx#export-set::t
                            _src12704_
                            _current-phi12708_
                            (foldl1 _fold-e12710_
                                    '()
                                    (##unchecked-structure-ref
                                     _current-ctx12707_
                                     '8
                                     gx#module-context::t
                                     '#f)))
                           _r12705_))))
                (_export!12684_
                 (lambda (_rbody12694_)
                   (letrec* ((_current-ctx12696_ (gx#current-expander-context))
                             (_fold-e12697_
                              (lambda (_out12701_ _r12702_)
                                (if (##structure-direct-instance-of?
                                     _out12701_
                                     'gx#module-export::t)
                                    (cons _out12701_ _r12702_)
                                    (if (##structure-direct-instance-of?
                                         _out12701_
                                         'gx#export-set::t)
                                        (foldl1 cons
                                                _r12702_
                                                (##unchecked-structure-ref
                                                 _out12701_
                                                 '3
                                                 gx#export-set::t
                                                 '#f))
                                        _r12702_)))))
                     (let ((_body12699_ (reverse _rbody12694_)))
                       (##unchecked-structure-set!
                        _current-ctx12696_
                        (foldl1 _fold-e12697_
                                (##unchecked-structure-ref
                                 _current-ctx12696_
                                 '9
                                 gx#module-context::t
                                 '#f)
                                _body12699_)
                        '9
                        gx#module-context::t
                        '#f)
                       _body12699_))))
                (_expanded-export?12685_
                 (lambda (_e12689_)
                   (let ((_$e12691_
                          (##structure-direct-instance-of?
                           _e12689_
                           'gx#module-export::t)))
                     (if _$e12691_
                         _$e12691_
                         (##structure-direct-instance-of?
                          _e12689_
                          'gx#export-set::t))))))
        (let ((_rbody12687_
               (gx#core-expand-import/export
                _stx12678_
                _expanded-export?12685_
                'apply-export-expander
                gx#current-export-expander-phi
                _expand112682_)))
          (if _internal-expand?12679_
              (reverse _rbody12687_)
              (gx#core-quote-syntax__1
               (gx#core-cons '%#export (_export!12684_ _rbody12687_))
               (gx#stx-source _stx12678_)))))))
  (define gx#core-expand-export%__0
    (lambda (_stx13160_)
      (let ((_internal-expand?13162_ '#f))
        (gx#core-expand-export%__% _stx13160_ _internal-expand?13162_))))
  (define gx#core-expand-export%
    (lambda _g16042_
      (let ((_g16041_ (length _g16042_)))
        (cond ((##fx= _g16041_ 1) (apply gx#core-expand-export%__0 _g16042_))
              ((##fx= _g16041_ 2) (apply gx#core-expand-export%__% _g16042_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-export%
                _g16042_))))))
  (define gx#core-expand-export-source
    (lambda (_hd12675_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12675_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12645_)
      (let* ((_e1264612653_ _stx12645_)
             (_E1264812657_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1264612653_)))
             (_E1264712671_
              (lambda ()
                (if (gx#stx-pair? _e1264612653_)
                    (let ((_e1264912661_ (gx#syntax-e _e1264612653_)))
                      (let ((_hd1265012664_ (##car _e1264912661_))
                            (_tl1265112666_ (##cdr _e1264912661_)))
                        (let ((_body12669_ _tl1265112666_))
                          (if (gx#identifier-list? _body12669_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12669_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12669_))
                                 (gx#stx-source _stx12645_)))
                              (_E1264812657_)))))
                    (_E1264812657_)))))
        (_E1264712671_))))
  (define gx#core-bind-feature!__%
    (lambda (_id12611_ _private?12612_ _phi12613_ _ctx12614_)
      (gx#core-bind-syntax!__%
       _id12611_
       ((if _private?12612_
            gx#make-private-feature-expander
            gx#make-feature-expander)
        (gx#stx-e _id12611_))
       _private?12612_
       _phi12613_
       _ctx12614_)))
  (define gx#core-bind-feature!__0
    (lambda (_id12619_)
      (let* ((_private?12621_ '#f)
             (_phi12623_ (gx#current-expander-phi))
             (_ctx12625_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12619_
         _private?12621_
         _phi12623_
         _ctx12625_))))
  (define gx#core-bind-feature!__1
    (lambda (_id12627_ _private?12628_)
      (let* ((_phi12630_ (gx#current-expander-phi))
             (_ctx12632_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12627_
         _private?12628_
         _phi12630_
         _ctx12632_))))
  (define gx#core-bind-feature!__2
    (lambda (_id12634_ _private?12635_ _phi12636_)
      (let ((_ctx12638_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12634_
         _private?12635_
         _phi12636_
         _ctx12638_))))
  (define gx#core-bind-feature!
    (lambda _g16044_
      (let ((_g16043_ (length _g16044_)))
        (cond ((##fx= _g16043_ 1) (apply gx#core-bind-feature!__0 _g16044_))
              ((##fx= _g16043_ 2) (apply gx#core-bind-feature!__1 _g16044_))
              ((##fx= _g16043_ 3) (apply gx#core-bind-feature!__2 _g16044_))
              ((##fx= _g16043_ 4) (apply gx#core-bind-feature!__% _g16044_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-feature!
                _g16044_)))))))
