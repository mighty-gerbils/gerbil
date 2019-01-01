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
    (lambda _$args15970_
      (apply make-struct-instance gx#module-import::t _$args15970_)))
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
    (lambda _$args15967_
      (apply make-struct-instance gx#module-export::t _$args15967_)))
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
    (lambda _$args15964_
      (apply make-struct-instance gx#import-set::t _$args15964_)))
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
    (lambda _$args15961_
      (apply make-struct-instance gx#export-set::t _$args15961_)))
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
    (lambda _$args15958_
      (apply make-class-instance gx#import-expander::t _$args15958_)))
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
    (lambda _$args15955_
      (apply make-class-instance gx#export-expander::t _$args15955_)))
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
    (lambda _$args15952_
      (apply make-class-instance gx#import-export-expander::t _$args15952_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15946_ _id15947_ _super15948_ _ns15949_ _path15950_)
      (if (##fx< '11 (##vector-length _self15946_))
          (begin
            (##vector-set! _self15946_ '1 _id15947_)
            (##vector-set! _self15946_ '2 (make-table 'test: eq?))
            (##vector-set! _self15946_ '3 _super15948_)
            (##vector-set! _self15946_ '4 '#f)
            (##vector-set! _self15946_ '5 '#f)
            (##vector-set! _self15946_ '6 _ns15949_)
            (##vector-set! _self15946_ '7 _path15950_)
            (##vector-set! _self15946_ '8 '())
            (##vector-set! _self15946_ '9 '())
            (##vector-set! _self15946_ '10 '#f)
            (##vector-set! _self15946_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15946_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (define gx#prelude-context:::init!__%
    (lambda (_self15790_ _ctx15791_ _root15792_)
      (let ((_super15800_
             (let ((_$e15794_ _root15792_))
               (if _$e15794_
                   _$e15794_
                   (let ((_$e15797_ (gx#core-context-root__0)))
                     (if _$e15797_
                         _$e15797_
                         (make-struct-instance gx#root-context::t)))))))
        (if _ctx15791_
            (let ((_id15803_
                   (##structure-ref _ctx15791_ '1 gx#expander-context::t '#f))
                  (_path15804_
                   (##structure-ref _ctx15791_ '7 gx#module-context::t '#f))
                  (_in15805_
                   (map gx#core-module-export->import
                        (##structure-ref
                         _ctx15791_
                         '9
                         gx#module-context::t
                         '#f)))
                  (_e15806_
                   (##make-promise (lambda () (gx#eval-module _ctx15791_)))))
              (if (##fx< '8 (##vector-length _self15790_))
                  (begin
                    (##vector-set! _self15790_ '1 _id15803_)
                    (##vector-set!
                     _self15790_
                     '2
                     (make-table 'test: eq? 'size: (length _in15805_)))
                    (##vector-set! _self15790_ '3 _super15800_)
                    (##vector-set! _self15790_ '4 '#f)
                    (##vector-set! _self15790_ '5 '#f)
                    (##vector-set! _self15790_ '6 _path15804_)
                    (##vector-set! _self15790_ '7 _in15805_)
                    (##vector-set! _self15790_ '8 _e15806_))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self15790_))
              (for-each
               (lambda (_g1580715809_)
                 (gx#core-bind-weak-import!__% _g1580715809_ _self15790_))
               _in15805_))
            (if (##fx< '8 (##vector-length _self15790_))
                (begin
                  (##vector-set! _self15790_ '1 '#f)
                  (##vector-set! _self15790_ '2 (make-table 'test: eq?))
                  (##vector-set! _self15790_ '3 _super15800_)
                  (##vector-set! _self15790_ '4 '#f)
                  (##vector-set! _self15790_ '5 '#f)
                  (##vector-set! _self15790_ '6 '#f)
                  (##vector-set! _self15790_ '7 '())
                  (##vector-set! _self15790_ '8 '#f))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self15790_))))))
  (define gx#prelude-context:::init!__0
    (lambda (_self15815_ _ctx15816_)
      (let ((_root15818_ '#f))
        (gx#prelude-context:::init!__% _self15815_ _ctx15816_ _root15818_))))
  (define gx#prelude-context:::init!
    (lambda _g16010_
      (let ((_g16009_ (length _g16010_)))
        (cond ((##fx= _g16009_ 2)
               (apply gx#prelude-context:::init!__0 _g16010_))
              ((##fx= _g16009_ 3)
               (apply gx#prelude-context:::init!__% _g16010_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#prelude-context:::init!
                _g16010_))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15664_ _e15665_)
      (if (##fx< '3 (##vector-length _self15664_))
          (begin
            (##vector-set! _self15664_ '1 _e15665_)
            (##vector-set! _self15664_ '2 (gx#current-expander-context))
            (##vector-set! _self15664_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15664_))))
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
    (lambda (_g1529015293_ _g1529115295_)
      (gx#core-apply-user-expander__%
       _g1529015293_
       _g1529115295_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1516115164_ _g1516215166_)
      (gx#core-apply-user-expander__%
       _g1516115164_
       _g1516215166_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx15032_)
      (let* ((_path15034_
              (##structure-ref _ctx15032_ '7 gx#module-context::t '#f))
             (_path15036_
              (if (pair? _path15034_) (last _path15034_) _path15034_)))
        (if (string? _path15036_) _path15036_ '#f))))
  (define gx#import-module__%
    (lambda (_path15008_ _reload?15009_ _eval?15010_)
      (let ((_ctx15012_
             ((gx#current-expander-module-import) _path15008_ _reload?15009_)))
        (if (and _ctx15012_ _eval?15010_) (gx#eval-module _ctx15012_) '#!void)
        _ctx15012_)))
  (define gx#import-module__0
    (lambda (_path15017_)
      (let* ((_reload?15019_ '#f) (_eval?15021_ '#f))
        (gx#import-module__% _path15017_ _reload?15019_ _eval?15021_))))
  (define gx#import-module__1
    (lambda (_path15023_ _reload?15024_)
      (let ((_eval?15026_ '#f))
        (gx#import-module__% _path15023_ _reload?15024_ _eval?15026_))))
  (define gx#import-module
    (lambda _g16012_
      (let ((_g16011_ (length _g16012_)))
        (cond ((##fx= _g16011_ 1) (apply gx#import-module__0 _g16012_))
              ((##fx= _g16011_ 2) (apply gx#import-module__1 _g16012_))
              ((##fx= _g16011_ 3) (apply gx#import-module__% _g16012_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#import-module
                _g16012_))))))
  (define gx#eval-module
    (lambda (_mod15005_) ((gx#current-expander-module-eval) _mod15005_)))
  (define gx#core-eval-module
    (lambda (_obj14990_)
      (letrec ((_force-e14992_
                (lambda (_getf15001_ _e15002_)
                  (call-with-parameters
                   (lambda () (force (_getf15001_ _e15002_)))
                   gx#current-expander-context
                   _e15002_
                   gx#current-expander-phi
                   '0))))
        (let _recur14994_ ((_e14996_ _obj14990_))
          (if (##structure-instance-of? _e14996_ 'gx#module-context::t)
              (begin
                (let ((_$e14998_ (gx#core-context-prelude__% _e14996_)))
                  (if _$e14998_ (_recur14994_ _$e14998_) '#!void))
                (_force-e14992_ gx#module-context-e _e14996_))
              (if (##structure-instance-of? _e14996_ 'gx#prelude-context::t)
                  (_force-e14992_ gx#prelude-context-e _e14996_)
                  (if (gx#stx-string? _e14996_)
                      (_recur14994_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14996_)))
                      (if (gx#core-library-module-path? _e14996_)
                          (_recur14994_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14996_)))
                          (error '"Cannot eval module" _obj14990_)))))))))
  (define gx#core-context-prelude__%
    (lambda (_ctx14973_)
      (let _lp14975_ ((_e14977_ _ctx14973_))
        (if (or (##structure-instance-of? _e14977_ 'gx#module-context::t)
                (##structure-instance-of? _e14977_ 'gx#local-context::t))
            (_lp14975_
             (##unchecked-structure-ref _e14977_ '3 gx#phi-context::t '#f))
            (if (##structure-instance-of? _e14977_ 'gx#prelude-context::t)
                _e14977_
                '#f)))))
  (define gx#core-context-prelude__0
    (lambda ()
      (let ((_ctx14986_ (gx#current-expander-context)))
        (gx#core-context-prelude__% _ctx14986_))))
  (define gx#core-context-prelude
    (lambda _g16014_
      (let ((_g16013_ (length _g16014_)))
        (cond ((##fx= _g16013_ 0) (apply gx#core-context-prelude__0 _g16014_))
              ((##fx= _g16013_ 1) (apply gx#core-context-prelude__% _g16014_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-prelude
                _g16014_))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14963_)
      (let* ((_ht14965_ (gx#current-expander-module-registry))
             (_$e14967_ (table-ref _ht14965_ _ctx14963_ '#f)))
        (if _$e14967_
            (values _$e14967_)
            (let ((_pre14970_
                   (let ((__obj16005 (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj16005 _ctx14963_)
                     __obj16005)))
              (table-set! _ht14965_ _ctx14963_ _pre14970_)
              _pre14970_)))))
  (define gx#core-import-module__%
    (lambda (_rpath14844_ _reload?14845_)
      (letrec ((_import-source14847_
                (lambda (_path14932_)
                  (if (member _path14932_ (gx#current-expander-path))
                      (error '"Cyclic expansion" _path14932_)
                      '#!void)
                  (call-with-parameters
                   (lambda ()
                     (let ((_g16015_ (gx#core-read-module _path14932_)))
                       (begin
                         (let ((_g16016_
                                (if (##values? _g16015_)
                                    (##vector-length _g16015_)
                                    1)))
                           (if (not (##fx= _g16016_ 4))
                               (error "Context expects 4 values" _g16016_)))
                         (let ((_pre14935_ (##vector-ref _g16015_ 0))
                               (_id14936_ (##vector-ref _g16015_ 1))
                               (_ns14937_ (##vector-ref _g16015_ 2))
                               (_body14938_ (##vector-ref _g16015_ 3)))
                           (let* ((_prelude14943_
                                   (if (##structure-instance-of?
                                        _pre14935_
                                        'gx#prelude-context::t)
                                       _pre14935_
                                       (if (##structure-instance-of?
                                            _pre14935_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre14935_)
                                           (if (string? _pre14935_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre14935_))
                                               (if (not _pre14935_)
                                                   (let ((_$e14940_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e14940_
                                                         _$e14940_
                                                         (let ((__obj16006
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (gx#prelude-context:::init!__0 __obj16006 '#f)
                   __obj16006)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath14844_
                                                          _pre14935_))))))
                                  (_ctx14945_
                                   (let ((__obj16007
                                          (make-object
                                           gx#module-context::t
                                           '11)))
                                     (gx#module-context:::init!
                                      __obj16007
                                      _id14936_
                                      _prelude14943_
                                      _ns14937_
                                      _path14932_)
                                     __obj16007))
                                  (_body14947_
                                   (gx#core-expand-module-begin
                                    _body14938_
                                    _ctx14945_))
                                  (_body14949_
                                   (gx#core-quote-syntax__%
                                    (gx#core-cons '%#begin _body14947_)
                                    _path14932_
                                    _ctx14945_
                                    '())))
                             (##unchecked-structure-set!
                              _ctx14945_
                              (##make-promise
                               (lambda () (gx#eval-syntax* _body14949_)))
                              '10
                              gx#module-context::t
                              '#f)
                             (##unchecked-structure-set!
                              _ctx14945_
                              _body14949_
                              '11
                              gx#module-context::t
                              '#f)
                             (table-set!
                              (gx#current-expander-module-registry)
                              _path14932_
                              _ctx14945_)
                             (table-set!
                              (gx#current-expander-module-registry)
                              _id14936_
                              _ctx14945_)
                             _ctx14945_)))))
                   gx#current-expander-context
                   (gx#core-context-root__0)
                   gx#current-expander-marks
                   '()
                   gx#current-expander-phi
                   '0
                   gx#current-expander-path
                   (cons _path14932_ (gx#current-expander-path))
                   gx#current-import-expander-phi
                   '#f
                   gx#current-export-expander-phi
                   '#f)))
               (_import-submodule14848_
                (lambda (_rpath14860_)
                  (let* ((_rpath1486114868_ _rpath14860_)
                         (_E1486314872_
                          (lambda ()
                            (error '"No clause matching" _rpath1486114868_)))
                         (_K1486414920_
                          (lambda (_refs14875_ _origin14876_)
                            (let ((_ctx14878_
                                   (if _origin14876_
                                       (gx#core-import-module__%
                                        _origin14876_
                                        _reload?14845_)
                                       (gx#current-expander-context))))
                              (let _lp14880_ ((_rest14882_ _refs14875_)
                                              (_ctx14883_ _ctx14878_))
                                (let* ((_rest1488414892_ _rest14882_)
                                       (_else1488614900_
                                        (lambda () _ctx14883_))
                                       (_K1488814908_
                                        (lambda (_rest14903_ _id14904_)
                                          (let ((_bind14906_
                                                 (gx#resolve-identifier__%
                                                  _id14904_
                                                  '0
                                                  _ctx14883_)))
                                            (if (and (##structure-direct-instance-of?
                                                      _bind14906_
                                                      'gx#syntax-binding::t)
                                                     (##structure-instance-of?
                                                      (##unchecked-structure-ref
                                                       _bind14906_
                                                       '4
                                                       gx#syntax-binding::t
                                                       '#f)
                                                      'gx#module-context::t))
                                                (_lp14880_
                                                 _rest14903_
                                                 (##unchecked-structure-ref
                                                  _bind14906_
                                                  '4
                                                  gx#syntax-binding::t
                                                  '#f))
                                                (error '"Cannot import submodule; not bound as a module"
                                                       _rpath14860_
                                                       _id14904_
                                                       _bind14906_))))))
                                  (if (##pair? _rest1488414892_)
                                      (let ((_hd1488914911_
                                             (##car _rest1488414892_))
                                            (_tl1489014913_
                                             (##cdr _rest1488414892_)))
                                        (let* ((_id14916_ _hd1488914911_)
                                               (_rest14918_ _tl1489014913_))
                                          (_K1488814908_
                                           _rest14918_
                                           _id14916_)))
                                      (_else1488614900_))))))))
                    (if (##pair? _rpath1486114868_)
                        (let ((_hd1486514923_ (##car _rpath1486114868_))
                              (_tl1486614925_ (##cdr _rpath1486114868_)))
                          (let* ((_origin14928_ _hd1486514923_)
                                 (_refs14930_ _tl1486614925_))
                            (_K1486414920_ _refs14930_ _origin14928_)))
                        (_E1486314872_))))))
        (let ((_$e14850_
               (if (not _reload?14845_)
                   (table-ref
                    (gx#current-expander-module-registry)
                    _rpath14844_
                    '#f)
                   '#f)))
          (if _$e14850_
              (values _$e14850_)
              (if (list? _rpath14844_)
                  (_import-submodule14848_ _rpath14844_)
                  (if (gx#core-library-module-path? _rpath14844_)
                      (let ((_ctx14853_
                             (gx#core-import-module__%
                              (gx#core-resolve-library-module-path
                               _rpath14844_)
                              _reload?14845_)))
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath14844_
                         _ctx14853_)
                        _ctx14853_)
                      (let* ((_npath14855_ (path-normalize _rpath14844_))
                             (_$e14857_
                              (if (not _reload?14845_)
                                  (table-ref
                                   (gx#current-expander-module-registry)
                                   _npath14855_
                                   '#f)
                                  '#f)))
                        (if _$e14857_
                            (values _$e14857_)
                            (_import-source14847_ _npath14855_))))))))))
  (define gx#core-import-module__0
    (lambda (_rpath14956_)
      (let ((_reload?14958_ '#f))
        (gx#core-import-module__% _rpath14956_ _reload?14958_))))
  (define gx#core-import-module
    (lambda _g16018_
      (let ((_g16017_ (length _g16018_)))
        (cond ((##fx= _g16017_ 1) (apply gx#core-import-module__0 _g16018_))
              ((##fx= _g16017_ 2) (apply gx#core-import-module__% _g16018_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-import-module
                _g16018_))))))
  (define gx#core-read-module
    (lambda (_path14838_)
      (with-exception-catcher
       (lambda (_exn14840_)
         (if (and (datum-parsing-exception? _exn14840_)
                  (eq? (datum-parsing-exception-filepos _exn14840_) '0))
             (gx#core-read-module/lang _path14838_)
             (raise _exn14840_)))
       (lambda () (gx#core-read-module/sexp _path14838_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14698_)
      (let _lp14700_ ((_body14702_ (read-syntax-from-file _path14698_))
                      (_pre14703_ '#f)
                      (_ns14704_ '#f)
                      (_pkg14705_ '#f))
        (let* ((_e1470614730_ _body14702_)
               (_E1472214752_
                (lambda ()
                  (let ((_g16019_
                         (if _pkg14705_
                             (values _pre14703_ _ns14704_ _pkg14705_)
                             (gx#core-read-module-package
                              _path14698_
                              _pre14703_
                              _ns14704_))))
                    (begin
                      (let ((_g16020_
                             (if (##values? _g16019_)
                                 (##vector-length _g16019_)
                                 1)))
                        (if (not (##fx= _g16020_ 3))
                            (error "Context expects 3 values" _g16020_)))
                      (let ((_pre14734_ (##vector-ref _g16019_ 0))
                            (_ns14735_ (##vector-ref _g16019_ 1))
                            (_pkg14736_ (##vector-ref _g16019_ 2)))
                        (let* ((_prelude14738_
                                (if (gx#core-bound-module-prelude? _pre14734_)
                                    (gx#syntax-local-e__0 _pre14734_)
                                    (if (gx#core-library-module-path?
                                         _pre14734_)
                                        (gx#core-resolve-library-module-path
                                         _pre14734_)
                                        (if (gx#stx-string? _pre14734_)
                                            (gx#core-resolve-module-path__%
                                             _pre14734_
                                             _path14698_)
                                            (gx#stx-e _pre14734_)))))
                               (_path-id14740_
                                (gx#core-module-path->namespace _path14698_))
                               (_pkg-id14742_
                                (if _pkg14736_
                                    (string-append
                                     _pkg14736_
                                     '"/"
                                     _path-id14740_)
                                    _path-id14740_))
                               (_module-id14744_
                                (string->symbol _pkg-id14742_))
                               (_module-ns14749_
                                (let ((_$e14746_ _ns14735_))
                                  (if _$e14746_ _$e14746_ _pkg-id14742_))))
                          (values _prelude14738_
                                  _module-id14744_
                                  _module-ns14749_
                                  _body14702_)))))))
               (_E1471514781_
                (lambda ()
                  (if (gx#stx-pair? _e1470614730_)
                      (let ((_e1472314756_ (gx#syntax-e _e1470614730_)))
                        (let ((_hd1472414759_ (##car _e1472314756_))
                              (_tl1472514761_ (##cdr _e1472314756_)))
                          (if (eq? (gx#stx-e _hd1472414759_) 'package:)
                              (if (gx#stx-pair? _tl1472514761_)
                                  (let ((_e1472614764_
                                         (gx#syntax-e _tl1472514761_)))
                                    (let ((_hd1472714767_
                                           (##car _e1472614764_))
                                          (_tl1472814769_
                                           (##cdr _e1472614764_)))
                                      (let* ((_pkg14772_ _hd1472714767_)
                                             (_rest14774_ _tl1472814769_))
                                        (if '#t
                                            (let ((_pkg14779_
                                                   (if (gx#identifier?
                                                        _pkg14772_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14772_))
                                                       (if (or (gx#stx-string?
                                                                _pkg14772_)
                                                               (gx#stx-false?
                                                                _pkg14772_))
                                                           (gx#stx-e
                                                            _pkg14772_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; Illegal package name"
                                                            _pkg14772_)))))
                                              (_lp14700_
                                               _rest14774_
                                               _pre14703_
                                               _ns14704_
                                               _pkg14779_))
                                            (_E1472214752_)))))
                                  (_E1472214752_))
                              (_E1472214752_))))
                      (_E1472214752_))))
               (_E1470814810_
                (lambda ()
                  (if (gx#stx-pair? _e1470614730_)
                      (let ((_e1471614785_ (gx#syntax-e _e1470614730_)))
                        (let ((_hd1471714788_ (##car _e1471614785_))
                              (_tl1471814790_ (##cdr _e1471614785_)))
                          (if (eq? (gx#stx-e _hd1471714788_) 'namespace:)
                              (if (gx#stx-pair? _tl1471814790_)
                                  (let ((_e1471914793_
                                         (gx#syntax-e _tl1471814790_)))
                                    (let ((_hd1472014796_
                                           (##car _e1471914793_))
                                          (_tl1472114798_
                                           (##cdr _e1471914793_)))
                                      (let* ((_ns14801_ _hd1472014796_)
                                             (_rest14803_ _tl1472114798_))
                                        (if '#t
                                            (let ((_ns14808_
                                                   (if (gx#identifier?
                                                        _ns14801_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14801_))
                                                       (if (or (gx#stx-string?
                                                                _ns14801_)
                                                               (gx#stx-false?
                                                                _ns14801_))
                                                           (gx#stx-e _ns14801_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; illegal namespace"
                                                            _ns14801_)))))
                                              (_lp14700_
                                               _rest14803_
                                               _pre14703_
                                               _ns14808_
                                               _pkg14705_))
                                            (_E1471514781_)))))
                                  (_E1471514781_))
                              (_E1471514781_))))
                      (_E1471514781_))))
               (_E1470714834_
                (lambda ()
                  (if (gx#stx-pair? _e1470614730_)
                      (let ((_e1470914814_ (gx#syntax-e _e1470614730_)))
                        (let ((_hd1471014817_ (##car _e1470914814_))
                              (_tl1471114819_ (##cdr _e1470914814_)))
                          (if (eq? (gx#stx-e _hd1471014817_) 'prelude:)
                              (if (gx#stx-pair? _tl1471114819_)
                                  (let ((_e1471214822_
                                         (gx#syntax-e _tl1471114819_)))
                                    (let ((_hd1471314825_
                                           (##car _e1471214822_))
                                          (_tl1471414827_
                                           (##cdr _e1471214822_)))
                                      (let* ((_prelude14830_ _hd1471314825_)
                                             (_rest14832_ _tl1471414827_))
                                        (if '#t
                                            (_lp14700_
                                             _rest14832_
                                             _prelude14830_
                                             _ns14704_
                                             _pkg14705_)
                                            (_E1470814810_)))))
                                  (_E1470814810_))
                              (_E1470814810_))))
                      (_E1470814810_)))))
          (_E1470714834_)))))
  (define gx#core-read-module/lang
    (lambda (_path14525_)
      (letrec ((_default-read-module-body14527_
                (lambda (_inp14690_)
                  (let _lp14692_ ((_body14694_ '()))
                    (let ((_next14696_ (read-syntax _inp14690_)))
                      (if (eof-object? _next14696_)
                          (reverse _body14694_)
                          (_lp14692_ (cons _next14696_ _body14694_)))))))
               (_read-body14528_
                (lambda (_inp14609_
                         _pre14610_
                         _ns14611_
                         _pkg14612_
                         _args14613_)
                  (let ((_g16021_
                         (if _pkg14612_
                             (values _pre14610_ _ns14611_ _pkg14612_)
                             (gx#core-read-module-package
                              _path14525_
                              _pre14610_
                              _ns14611_))))
                    (begin
                      (let ((_g16022_
                             (if (##values? _g16021_)
                                 (##vector-length _g16021_)
                                 1)))
                        (if (not (##fx= _g16022_ 3))
                            (error "Context expects 3 values" _g16022_)))
                      (let ((_pre14615_ (##vector-ref _g16021_ 0))
                            (_ns14616_ (##vector-ref _g16021_ 1))
                            (_pkg14617_ (##vector-ref _g16021_ 2)))
                        (let* ((_prelude14619_
                                (gx#import-module__0 _pre14615_))
                               (_read-module-body14673_
                                (let ((_$e14665_
                                       (find (lambda (_e1462014622_)
                                               (let* ((_g1462414634_
                                                       _e1462014622_)
                                                      (_else1462614642_
                                                       (lambda () '#f))
                                                      (_K1462814646_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1462414634_
                                                      'gx#module-export::t)
                                                     (let* ((_e1462914649_
                                                             (##vector-ref
                                                              _g1462414634_
                                                              '1))
                                                            (_e1463014652_
                                                             (##vector-ref
                                                              _g1462414634_
                                                              '2))
                                                            (_e1463114655_
                                                             (##vector-ref
                                                              _g1462414634_
                                                              '3)))
                                                       (if (##eq? _e1463114655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1463214658_ (##vector-ref _g1462414634_ '4)))
                     (if ((lambda (_g1466014662_)
                            (eq? _g1466014662_ 'read-module-body))
                          _e1463214658_)
                         (_K1462814646_)
                         (_else1462614642_)))
                   (_else1462614642_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1462614642_))))
                                             (##unchecked-structure-ref
                                              _prelude14619_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14665_
                                      ((lambda (_xport14668_)
                                         (let ((_proc14671_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14668_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14671_)
                                               _proc14671_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14525_
                                                _pre14615_
                                                _proc14671_))))
                                       _$e14665_)
                                      _default-read-module-body14527_)))
                               (_path-id14675_
                                (gx#core-module-path->namespace _path14525_))
                               (_pkg-id14677_
                                (if _pkg14617_
                                    (string-append
                                     _pkg14617_
                                     '"/"
                                     _path-id14675_)
                                    _path-id14675_))
                               (_module-id14679_
                                (string->symbol _pkg-id14677_))
                               (_module-ns14684_
                                (let ((_$e14681_ _ns14616_))
                                  (if _$e14681_ _$e14681_ _pkg-id14677_)))
                               (_body14687_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14673_ _inp14609_))
                                 gx#current-module-reader-path
                                 _path14525_
                                 gx#current-module-reader-args
                                 _args14613_)))
                          (values _prelude14619_
                                  _module-id14679_
                                  _module-ns14684_
                                  _body14687_)))))))
               (_string-e14529_
                (lambda (_obj14606_ _what14607_)
                  (if (string? _obj14606_)
                      _obj14606_
                      (if (symbol? _obj14606_)
                          (symbol->string _obj14606_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14607_)
                           _path14525_
                           _obj14606_)))))
               (_read-lang-args14530_
                (lambda (_inp14561_ _args14562_)
                  (let* ((_args1456314571_ _args14562_)
                         (_else1456514579_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14525_)))
                         (_K1456714594_
                          (lambda (_args14582_ _prelude14583_)
                            (let* ((_pkg14585_ (pgetq 'package: _args14582_))
                                   (_pkg14587_
                                    (if _pkg14585_
                                        (_string-e14529_ _pkg14585_ '"package")
                                        '#f))
                                   (_ns14589_ (pgetq 'namespace: _args14582_))
                                   (_ns14591_
                                    (if _ns14589_
                                        (_string-e14529_
                                         _ns14589_
                                         '"namespace")
                                        '#f)))
                              (_read-body14528_
                               _inp14561_
                               _prelude14583_
                               _ns14591_
                               _pkg14587_
                               _args14582_)))))
                    (if (##pair? _args1456314571_)
                        (let ((_hd1456814597_ (##car _args1456314571_))
                              (_tl1456914599_ (##cdr _args1456314571_)))
                          (let* ((_prelude14602_ _hd1456814597_)
                                 (_args14604_ _tl1456914599_))
                            (_K1456714594_ _args14604_ _prelude14602_)))
                        (_else1456514579_)))))
               (_read-lang14531_
                (lambda (_inp14536_)
                  (let* ((_head14538_ (read-line _inp14536_))
                         (_$e14540_ (string-index _head14538_ '#\space)))
                    (if _$e14540_
                        ((lambda (_ix14543_)
                           (let ((_lang14545_
                                  (substring _head14538_ '0 _ix14543_)))
                             (if (equal? _lang14545_ '"#lang")
                                 (let* ((_rest14547_
                                         (substring
                                          _head14538_
                                          (fx+ _ix14543_ '1)
                                          (string-length _head14538_)))
                                        (_args14558_
                                         (with-exception-catcher
                                          (lambda (_g1454814550_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14525_
                                             _g1454814550_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14547_
                                             (lambda (_g1455314555_)
                                               (read-all
                                                _g1455314555_
                                                read)))))))
                                   (_read-lang-args14530_
                                    _inp14536_
                                    _args14558_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14525_))))
                         _$e14540_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14525_)))))
               (_read-e14532_
                (lambda (_inp14534_)
                  (if (eq? (peek-char _inp14534_) '#\#)
                      (_read-lang14531_ _inp14534_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14525_)))))
        (call-with-input-file _path14525_ _read-e14532_))))
  (define gx#core-read-module-package
    (lambda (_path14479_ _pre14480_ _ns14481_)
      (letrec ((_string-e14483_
                (lambda (_e14523_)
                  (if (symbol? _e14523_)
                      (symbol->string _e14523_)
                      (if (string? _e14523_)
                          _e14523_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14523_))))))
        (let _lp14485_ ((_dir14487_ (path-directory _path14479_))
                        (_pkg-path14488_ '()))
          (let ((_gerbil.pkg14490_ (path-expand '"gerbil.pkg" _dir14487_)))
            (if (file-exists? _gerbil.pkg14490_)
                (let ((_plist14492_
                       (gx#core-library-package-plist__% _dir14487_ '#t)))
                  (if (null? _plist14492_)
                      (let ((_pkg14494_
                             (if (not (null? _pkg-path14488_))
                                 (string-join _pkg-path14488_ '"/")
                                 '#f)))
                        (values _pre14480_ _ns14481_ _pkg14494_))
                      (if (list? _plist14492_)
                          (let* ((_root14496_ (pgetq 'package: _plist14492_))
                                 (_pkg14500_
                                  (let ((_pkg-path14498_
                                         (if _root14496_
                                             (cons (_string-e14483_
                                                    _root14496_)
                                                   _pkg-path14488_)
                                             _pkg-path14488_)))
                                    (if (not (null? _pkg-path14498_))
                                        (string-join _pkg-path14498_ '"/")
                                        '#f)))
                                 (_ns14507_
                                  (let ((_ns14505_
                                         (let ((_$e14502_ _ns14481_))
                                           (if _$e14502_
                                               _$e14502_
                                               (pgetq 'namespace:
                                                      _plist14492_)))))
                                    (if _ns14505_
                                        (_string-e14483_ _ns14505_)
                                        '#f)))
                                 (_pre14512_
                                  (let ((_$e14509_ _pre14480_))
                                    (if _$e14509_
                                        _$e14509_
                                        (pgetq 'prelude: _plist14492_)))))
                            (values _pre14512_ _ns14507_ _pkg14500_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14492_))))
                (let ((_dir*14515_
                       (path-strip-trailing-directory-separator _dir14487_)))
                  (if (or (string-empty? _dir*14515_)
                          (equal? _dir14487_ _dir*14515_))
                      (values _pre14480_ _ns14481_ '#f)
                      (let ((_xpath14520_ (path-strip-directory _dir*14515_))
                            (_xdir14521_ (path-directory _dir*14515_)))
                        (_lp14485_
                         _xdir14521_
                         (cons _xpath14520_ _pkg-path14488_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14477_)
      (path-strip-extension (path-strip-directory _path14477_))))
  (define gx#core-module-path->id
    (lambda (_path14475_)
      (string->symbol (gx#core-module-path->namespace _path14475_))))
  (define gx#core-resolve-module-path__%
    (lambda (_stx-path14454_ _rel14455_)
      (let* ((_path14457_ (gx#stx-e _stx-path14454_))
             (_path14459_
              (if (string-empty? (path-extension _path14457_))
                  (string-append _path14457_ '".ss")
                  _path14457_)))
        (gx#core-resolve-path__%
         _path14459_
         (let ((_$e14462_ (gx#stx-source _stx-path14454_)))
           (if _$e14462_ _$e14462_ _rel14455_))))))
  (define gx#core-resolve-module-path__0
    (lambda (_stx-path14468_)
      (let ((_rel14470_ '#f))
        (gx#core-resolve-module-path__% _stx-path14468_ _rel14470_))))
  (define gx#core-resolve-module-path
    (lambda _g16024_
      (let ((_g16023_ (length _g16024_)))
        (cond ((##fx= _g16023_ 1)
               (apply gx#core-resolve-module-path__0 _g16024_))
              ((##fx= _g16023_ 2)
               (apply gx#core-resolve-module-path__% _g16024_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-resolve-module-path
                _g16024_))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14381_)
      (let* ((_spath14383_ (symbol->string (gx#stx-e _libpath14381_)))
             (_spath14385_
              (substring _spath14383_ '1 (string-length _spath14383_)))
             (_ext14387_ (path-extension _spath14385_))
             (_ssi14389_
              (if (string-empty? _ext14387_)
                  (string-append _spath14385_ '".ssi")
                  (string-append (path-strip-extension _spath14385_) '".ssi")))
             (_src14391_
              (if (string-empty? _ext14387_)
                  (string-append _spath14385_ '".ss")
                  _spath14385_)))
        (let _lp14394_ ((_rest14396_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1439714406_ _rest14396_)
                 (_E1440014410_
                  (lambda () (error '"No clause matching" _rest1439714406_))))
            (let ((_K1440214441_
                   (lambda (_rest14421_ _dir14422_)
                     (letrec ((_resolve14424_
                               (lambda (_ssi14434_ _src14435_)
                                 (let ((_compiled-path14437_
                                        (path-expand _ssi14434_ _dir14422_)))
                                   (if (file-exists? _compiled-path14437_)
                                       (path-normalize _compiled-path14437_)
                                       (let ((_src-path14439_
                                              (path-expand
                                               _src14435_
                                               _dir14422_)))
                                         (if (file-exists? _src-path14439_)
                                             (path-normalize _src-path14439_)
                                             (_lp14394_ _rest14421_))))))))
                       (let ((_$e14426_
                              (gx#core-library-package-path-prefix
                               _dir14422_)))
                         (if _$e14426_
                             ((lambda (_prefix14429_)
                                (if (string-prefix? _spath14385_ _prefix14429_)
                                    (let ((_ssi14431_
                                           (substring
                                            _ssi14389_
                                            (string-length _prefix14429_)
                                            (string-length _ssi14389_)))
                                          (_src14432_
                                           (substring
                                            _src14391_
                                            (string-length _prefix14429_)
                                            (string-length _src14391_))))
                                      (_resolve14424_ _ssi14431_ _src14432_))
                                    (_lp14394_ _rest14421_)))
                              _$e14426_)
                             (_resolve14424_ _ssi14389_ _src14391_))))))
                  (_K1440114415_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14381_))))
              (let ((_try-match1439914418_
                     (lambda ()
                       (if (##null? _rest1439714406_)
                           (_K1440114415_)
                           (_E1440014410_)))))
                (if (##pair? _rest1439714406_)
                    (let ((_tl1440414446_ (##cdr _rest1439714406_))
                          (_hd1440314444_ (##car _rest1439714406_)))
                      (let ((_dir14449_ _hd1440314444_)
                            (_rest14451_ _tl1440414446_))
                        (_K1440214441_ _rest14451_ _dir14449_)))
                    (_try-match1439914418_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14374_)
      (let ((_$e14376_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14374_))))
        (if _$e14376_
            ((lambda (_pkg14379_)
               (string-append (symbol->string _pkg14379_) '"/"))
             _$e14376_)
            '#f))))
  (define gx#core-library-package-plist__%
    (lambda (_dir14346_ _exists?14347_)
      (let* ((_cache14349_ (gx#core-library-package-cache))
             (_$e14351_ (table-ref _cache14349_ _dir14346_ '#f)))
        (if _$e14351_
            (values _$e14351_)
            (let* ((_gerbil.pkg14354_ (path-expand '"gerbil.pkg" _dir14346_))
                   (_plist14361_
                    (if (or _exists?14347_ (file-exists? _gerbil.pkg14354_))
                        (let ((_e14359_
                               (call-with-input-file _gerbil.pkg14354_ read)))
                          (if (eof-object? _e14359_)
                              '()
                              (if (list? _e14359_)
                                  _e14359_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Malformed package info; unexpected datum"
                                   _gerbil.pkg14354_
                                   _e14359_))))
                        '())))
              (table-set! _cache14349_ _dir14346_ _plist14361_)
              _plist14361_)))))
  (define gx#core-library-package-plist__0
    (lambda (_dir14367_)
      (let ((_exists?14369_ '#f))
        (gx#core-library-package-plist__% _dir14367_ _exists?14369_))))
  (define gx#core-library-package-plist
    (lambda _g16026_
      (let ((_g16025_ (length _g16026_)))
        (cond ((##fx= _g16025_ 1)
               (apply gx#core-library-package-plist__0 _g16026_))
              ((##fx= _g16025_ 2)
               (apply gx#core-library-package-plist__% _g16026_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-library-package-plist
                _g16026_))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14340_ (gx#current-expander-module-library-package-cache)))
        (if _$e14340_
            (values _$e14340_)
            (let ((_cache14343_ (make-table)))
              (gx#current-expander-module-library-package-cache _cache14343_)
              _cache14343_)))))
  (define gx#core-library-module-path?
    (lambda (_stx14337_) (gx#core-special-module-path? _stx14337_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14332_ _char14333_)
      (if (gx#identifier? _stx14332_)
          (if (interned-symbol? (gx#stx-e _stx14332_))
              (let ((_str14335_ (symbol->string (gx#stx-e _stx14332_))))
                (if (fx> (string-length _str14335_) '1)
                    (eq? (string-ref _str14335_ '0) _char14333_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14326_)
      (gx#core-bound-identifier?__%
       _stx14326_
       (lambda (_g1432714329_)
         (gx#expander-binding?__% _g1432714329_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14320_)
      (gx#core-bound-identifier?__%
       _stx14320_
       (lambda (_g1432114323_)
         (gx#expander-binding?__% _g1432114323_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14307_)
      (letrec ((_module-prelude?14309_
                (lambda (_e14315_)
                  (let ((_$e14317_
                         (##structure-instance-of?
                          _e14315_
                          'gx#module-context::t)))
                    (if _$e14317_
                        _$e14317_
                        (##structure-instance-of?
                         _e14315_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14307_
         (lambda (_g1431014312_)
           (gx#expander-binding?__% _g1431014312_ _module-prelude?14309_))))))
  (define gx#core-bind-import!__%
    (lambda (_in14237_ _ctx14238_ _force-weak?14239_)
      (let* ((_in1424014249_ _in14237_)
             (_E1424214253_
              (lambda () (error '"No clause matching" _in1424014249_)))
             (_K1424314266_
              (lambda (_weak?14256_ _phi14257_ _key14258_ _source14259_)
                (gx#core-bind!__%
                 _key14258_
                 (let ((_e14261_
                        (gx#core-resolve-module-export _source14259_)))
                   (##structure
                    gx#import-binding::t
                    (##unchecked-structure-ref _e14261_ '1 gx#binding::t '#f)
                    _key14258_
                    _phi14257_
                    _e14261_
                    (##unchecked-structure-ref
                     _source14259_
                     '1
                     gx#module-export::t
                     '#f)
                    (let ((_$e14263_ _force-weak?14239_))
                      (if _$e14263_ _$e14263_ _weak?14256_))))
                 gx#core-context-rebind?
                 _phi14257_
                 _ctx14238_))))
        (if (##structure-direct-instance-of?
             _in1424014249_
             'gx#module-import::t)
            (let* ((_e1424414269_ (##vector-ref _in1424014249_ '1))
                   (_source14272_ _e1424414269_)
                   (_e1424514274_ (##vector-ref _in1424014249_ '2))
                   (_key14277_ _e1424514274_)
                   (_e1424614279_ (##vector-ref _in1424014249_ '3))
                   (_phi14282_ _e1424614279_)
                   (_e1424714284_ (##vector-ref _in1424014249_ '4))
                   (_weak?14287_ _e1424714284_))
              (_K1424314266_ _weak?14287_ _phi14282_ _key14277_ _source14272_))
            (_E1424214253_)))))
  (define gx#core-bind-import!__0
    (lambda (_in14292_)
      (let* ((_ctx14294_ (gx#current-expander-context))
             (_force-weak?14296_ '#f))
        (gx#core-bind-import!__% _in14292_ _ctx14294_ _force-weak?14296_))))
  (define gx#core-bind-import!__1
    (lambda (_in14298_ _ctx14299_)
      (let ((_force-weak?14301_ '#f))
        (gx#core-bind-import!__% _in14298_ _ctx14299_ _force-weak?14301_))))
  (define gx#core-bind-import!
    (lambda _g16028_
      (let ((_g16027_ (length _g16028_)))
        (cond ((##fx= _g16027_ 1) (apply gx#core-bind-import!__0 _g16028_))
              ((##fx= _g16027_ 2) (apply gx#core-bind-import!__1 _g16028_))
              ((##fx= _g16027_ 3) (apply gx#core-bind-import!__% _g16028_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-import!
                _g16028_))))))
  (define gx#core-bind-weak-import!__%
    (lambda (_in14223_ _ctx14224_)
      (gx#core-bind-import!__% _in14223_ _ctx14224_ '#t)))
  (define gx#core-bind-weak-import!__0
    (lambda (_in14229_)
      (let ((_ctx14231_ (gx#current-expander-context)))
        (gx#core-bind-weak-import!__% _in14229_ _ctx14231_))))
  (define gx#core-bind-weak-import!
    (lambda _g16030_
      (let ((_g16029_ (length _g16030_)))
        (cond ((##fx= _g16029_ 1)
               (apply gx#core-bind-weak-import!__0 _g16030_))
              ((##fx= _g16029_ 2)
               (apply gx#core-bind-weak-import!__% _g16030_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-weak-import!
                _g16030_))))))
  (define gx#core-resolve-module-export
    (lambda (_out14114_)
      (letrec ((_subst14116_
                (lambda (_key14162_)
                  (let* ((_key1416314171_ _key14162_)
                         (_else1416514179_ (lambda () _key14162_))
                         (_K1416714210_
                          (lambda (_mark14182_ _id14183_)
                            (let* ((_mark1418414190_ _mark14182_)
                                   (_E1418614194_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1418414190_)))
                                   (_K1418714202_
                                    (lambda (_subst14197_)
                                      (let ((_$e14199_
                                             (if _subst14197_
                                                 (table-ref
                                                  _subst14197_
                                                  _id14183_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14199_
                                            _$e14199_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14162_))))))
                              (if (##structure-instance-of?
                                   _mark1418414190_
                                   'gx#expander-mark::t)
                                  (let* ((_e1418814205_
                                          (##vector-ref _mark1418414190_ '1))
                                         (_subst14208_ _e1418814205_))
                                    (_K1418714202_ _subst14208_))
                                  (_E1418614194_))))))
                    (if (##pair? _key1416314171_)
                        (let ((_hd1416814213_ (##car _key1416314171_))
                              (_tl1416914215_ (##cdr _key1416314171_)))
                          (let* ((_id14218_ _hd1416814213_)
                                 (_mark14220_ _tl1416914215_))
                            (_K1416714210_ _mark14220_ _id14218_)))
                        (_else1416514179_))))))
        (let* ((_out1411714127_ _out14114_)
               (_E1411914131_
                (lambda () (error '"No clause matching" _out1411714127_)))
               (_K1412014138_
                (lambda (_phi14134_ _key14135_ _ctx14136_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14136_ _phi14134_)
                   (_subst14116_ _key14135_)))))
          (if (##structure-direct-instance-of?
               _out1411714127_
               'gx#module-export::t)
              (let* ((_e1412114141_ (##vector-ref _out1411714127_ '1))
                     (_ctx14144_ _e1412114141_)
                     (_e1412214146_ (##vector-ref _out1411714127_ '2))
                     (_key14149_ _e1412214146_)
                     (_e1412314151_ (##vector-ref _out1411714127_ '3))
                     (_phi14154_ _e1412314151_)
                     (_e1412414156_ (##vector-ref _out1411714127_ '4))
                     (_e1412514159_ (##vector-ref _out1411714127_ '5)))
                (_K1412014138_ _phi14154_ _key14149_ _ctx14144_))
              (_E1411914131_))))))
  (define gx#core-module-export->import__%
    (lambda (_out14039_ _rename14040_ _dphi14041_)
      (let* ((_out1404214052_ _out14039_)
             (_E1404414056_
              (lambda () (error '"No clause matching" _out1404214052_)))
             (_K1404514068_
              (lambda (_weak?14059_
                       _name14060_
                       _phi14061_
                       _key14062_
                       _ctx14063_)
                (##structure
                 gx#module-import::t
                 _out14039_
                 (let ((_$e14065_ _rename14040_))
                   (if _$e14065_ _$e14065_ _name14060_))
                 (fx+ _phi14061_ _dphi14041_)
                 _weak?14059_))))
        (if (##structure-direct-instance-of?
             _out1404214052_
             'gx#module-export::t)
            (let* ((_e1404614071_ (##vector-ref _out1404214052_ '1))
                   (_ctx14074_ _e1404614071_)
                   (_e1404714076_ (##vector-ref _out1404214052_ '2))
                   (_key14079_ _e1404714076_)
                   (_e1404814081_ (##vector-ref _out1404214052_ '3))
                   (_phi14084_ _e1404814081_)
                   (_e1404914086_ (##vector-ref _out1404214052_ '4))
                   (_name14089_ _e1404914086_)
                   (_e1405014091_ (##vector-ref _out1404214052_ '5))
                   (_weak?14094_ _e1405014091_))
              (_K1404514068_
               _weak?14094_
               _name14089_
               _phi14084_
               _key14079_
               _ctx14074_))
            (_E1404414056_)))))
  (define gx#core-module-export->import__0
    (lambda (_out14099_)
      (let* ((_rename14101_ '#f) (_dphi14103_ '0))
        (gx#core-module-export->import__%
         _out14099_
         _rename14101_
         _dphi14103_))))
  (define gx#core-module-export->import__1
    (lambda (_out14105_ _rename14106_)
      (let ((_dphi14108_ '0))
        (gx#core-module-export->import__%
         _out14105_
         _rename14106_
         _dphi14108_))))
  (define gx#core-module-export->import
    (lambda _g16032_
      (let ((_g16031_ (length _g16032_)))
        (cond ((##fx= _g16031_ 1)
               (apply gx#core-module-export->import__0 _g16032_))
              ((##fx= _g16031_ 2)
               (apply gx#core-module-export->import__1 _g16032_))
              ((##fx= _g16031_ 3)
               (apply gx#core-module-export->import__% _g16032_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-module-export->import
                _g16032_))))))
  (define gx#core-expand-module%
    (lambda (_stx13967_)
      (letrec ((_make-context13969_
                (lambda (_id14020_)
                  (let* ((_super14022_ (gx#current-expander-context))
                         (_bind-id14024_ (gx#stx-e _id14020_))
                         (_mod-id14026_
                          (if (##structure-instance-of?
                               _super14022_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super14022_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id14024_)
                              _bind-id14024_))
                         (_ns14028_ (symbol->string _mod-id14026_))
                         (_path14035_
                          (if (##structure-instance-of?
                               _super14022_
                               'gx#module-context::t)
                              (let ((_path14030_
                                     (##unchecked-structure-ref
                                      _super14022_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (or (pair? _path14030_)
                                        (null? _path14030_))
                                    (cons _bind-id14024_ _path14030_)
                                    (if (not _path14030_)
                                        _bind-id14024_
                                        (cons _bind-id14024_
                                              (cons _path14030_ '())))))
                              _bind-id14024_)))
                    (let ((__obj16008 (make-object gx#module-context::t '11)))
                      (gx#module-context:::init!
                       __obj16008
                       _mod-id14026_
                       _super14022_
                       _ns14028_
                       _path14035_)
                      __obj16008)))))
        (let* ((_e1397013980_ _stx13967_)
               (_E1397213984_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1397013980_)))
               (_E1397114016_
                (lambda ()
                  (if (gx#stx-pair? _e1397013980_)
                      (let ((_e1397313988_ (gx#syntax-e _e1397013980_)))
                        (let ((_hd1397413991_ (##car _e1397313988_))
                              (_tl1397513993_ (##cdr _e1397313988_)))
                          (if (gx#stx-pair? _tl1397513993_)
                              (let ((_e1397613996_
                                     (gx#syntax-e _tl1397513993_)))
                                (let ((_hd1397713999_ (##car _e1397613996_))
                                      (_tl1397814001_ (##cdr _e1397613996_)))
                                  (let* ((_id14004_ _hd1397713999_)
                                         (_body14006_ _tl1397814001_))
                                    (if (and (gx#identifier? _id14004_)
                                             (gx#stx-list? _body14006_))
                                        (let* ((_ctx14008_
                                                (_make-context13969_
                                                 _id14004_))
                                               (_body14010_
                                                (gx#core-expand-module-begin
                                                 _body14006_
                                                 _ctx14008_))
                                               (_body14012_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body14010_)
                                                 (gx#stx-source _stx13967_))))
                                          (##unchecked-structure-set!
                                           _ctx14008_
                                           (##make-promise
                                            (lambda ()
                                              (gx#eval-syntax* _body14012_)))
                                           '10
                                           gx#module-context::t
                                           '#f)
                                          (##unchecked-structure-set!
                                           _ctx14008_
                                           _body14012_
                                           '11
                                           gx#module-context::t
                                           '#f)
                                          (gx#core-bind-syntax!__0
                                           _id14004_
                                           _ctx14008_)
                                          (gx#core-quote-syntax__1
                                           (gx#core-list
                                            '%#module
                                            (gx#core-quote-syntax__0 _id14004_)
                                            _body14012_)
                                           (gx#stx-source _stx13967_)))
                                        (_E1397213984_)))))
                              (_E1397213984_))))
                      (_E1397213984_)))))
          (_E1397114016_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13933_ _ctx13934_)
      (call-with-parameters
       (lambda ()
         (gx#core-bind-feature!__1 'gerbil-module '#t)
         (let* ((_stx13937_
                 (gx#core-expand-head (cons '%%begin-module _body13933_)))
                (_e1393813945_ _stx13937_)
                (_E1394013949_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Illegal module body expansion"
                    _stx13937_)))
                (_E1393913963_
                 (lambda ()
                   (if (gx#stx-pair? _e1393813945_)
                       (let ((_e1394113953_ (gx#syntax-e _e1393813945_)))
                         (let ((_hd1394213956_ (##car _e1394113953_))
                               (_tl1394313958_ (##cdr _e1394113953_)))
                           (if (and (gx#identifier? _hd1394213956_)
                                    (gx#core-identifier=?
                                     _hd1394213956_
                                     '%#begin-module))
                               (let ((_body13961_ _tl1394313958_))
                                 (if '#t
                                     (if (gx#sealed-syntax? _stx13937_)
                                         _body13961_
                                         (gx#core-expand-module-body
                                          _body13961_))
                                     (_E1394013949_)))
                               (_E1394013949_))))
                       (_E1394013949_)))))
           (_E1393913963_)))
       gx#current-expander-context
       _ctx13934_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13729_)
      (letrec ((_expand-special13731_
                (lambda (_hd13860_ _K13861_ _rest13862_ _r13863_)
                  (let* ((_e1386413881_ _hd13860_)
                         (_E1387613885_
                          (lambda ()
                            (_K13861_
                             _rest13862_
                             (cons (gx#core-expand-top _hd13860_) _r13863_))))
                         (_E1386613897_
                          (lambda ()
                            (if (gx#stx-pair? _e1386413881_)
                                (let ((_e1387713889_
                                       (gx#syntax-e _e1386413881_)))
                                  (let ((_hd1387813892_ (##car _e1387713889_))
                                        (_tl1387913894_ (##cdr _e1387713889_)))
                                    (if (and (gx#identifier? _hd1387813892_)
                                             (gx#core-identifier=?
                                              _hd1387813892_
                                              '%#export))
                                        (if '#t
                                            (_K13861_
                                             _rest13862_
                                             (cons _hd13860_ _r13863_))
                                            (_E1387613885_))
                                        (_E1387613885_))))
                                (_E1387613885_))))
                         (_E1386513929_
                          (lambda ()
                            (if (gx#stx-pair? _e1386413881_)
                                (let ((_e1386713901_
                                       (gx#syntax-e _e1386413881_)))
                                  (let ((_hd1386813904_ (##car _e1386713901_))
                                        (_tl1386913906_ (##cdr _e1386713901_)))
                                    (if (and (gx#identifier? _hd1386813904_)
                                             (gx#core-identifier=?
                                              _hd1386813904_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1386913906_)
                                            (let ((_e1387013909_
                                                   (gx#syntax-e
                                                    _tl1386913906_)))
                                              (let ((_hd1387113912_
                                                     (##car _e1387013909_))
                                                    (_tl1387213914_
                                                     (##cdr _e1387013909_)))
                                                (let ((_hd-bind13917_
                                                       _hd1387113912_))
                                                  (if (gx#stx-pair?
                                                       _tl1387213914_)
                                                      (let ((_e1387313919_
                                                             (gx#syntax-e
                                                              _tl1387213914_)))
                                                        (let ((_hd1387413922_
                                                               (##car _e1387313919_))
                                                              (_tl1387513924_
                                                               (##cdr _e1387313919_)))
                                                          (let ((_expr13927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1387413922_))
                    (if (gx#stx-null? _tl1387513924_)
                        (if (gx#core-bind-values? _hd-bind13917_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13917_)
                              (_K13861_ _rest13862_ (cons _hd13860_ _r13863_)))
                            (_E1386613897_))
                        (_E1386613897_)))))
              (_E1386613897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1386613897_))
                                        (_E1386613897_))))
                                (_E1386613897_)))))
                    (_E1386513929_))))
               (_expand-body13732_
                (lambda (_rbody13734_)
                  (let _lp13736_ ((_rest13738_ _rbody13734_) (_body13739_ '()))
                    (let* ((_rest1374013748_ _rest13738_)
                           (_else1374213756_ (lambda () _body13739_))
                           (_K1374413848_
                            (lambda (_rest13759_ _hd13760_)
                              (let* ((_e1376113782_ _hd13760_)
                                     (_E1377713786_
                                      (lambda ()
                                        (_lp13736_
                                         _rest13759_
                                         (cons (gx#core-expand-expression
                                                _hd13760_)
                                               _body13739_))))
                                     (_E1377313800_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376113782_)
                                            (let ((_e1377813790_
                                                   (gx#syntax-e
                                                    _e1376113782_)))
                                              (let ((_hd1377913793_
                                                     (##car _e1377813790_))
                                                    (_tl1378013795_
                                                     (##cdr _e1377813790_)))
                                                (let ((_form13798_
                                                       _hd1377913793_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13798_
                                                       gx#special-form-binding?)
                                                      (_lp13736_
                                                       _rest13759_
                                                       (cons _hd13760_
                                                             _body13739_))
                                                      (_E1377713786_)))))
                                            (_E1377713786_))))
                                     (_E1376313812_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376113782_)
                                            (let ((_e1377413804_
                                                   (gx#syntax-e
                                                    _e1376113782_)))
                                              (let ((_hd1377513807_
                                                     (##car _e1377413804_))
                                                    (_tl1377613809_
                                                     (##cdr _e1377413804_)))
                                                (if (and (gx#identifier?
                                                          _hd1377513807_)
                                                         (gx#core-identifier=?
                                                          _hd1377513807_
                                                          '%#export))
                                                    (if '#t
                                                        (_lp13736_
                                                         _rest13759_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13760_)
                                                               _body13739_))
                                                        (_E1377313800_))
                                                    (_E1377313800_))))
                                            (_E1377313800_))))
                                     (_E1376213844_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376113782_)
                                            (let ((_e1376413816_
                                                   (gx#syntax-e
                                                    _e1376113782_)))
                                              (let ((_hd1376513819_
                                                     (##car _e1376413816_))
                                                    (_tl1376613821_
                                                     (##cdr _e1376413816_)))
                                                (if (and (gx#identifier?
                                                          _hd1376513819_)
                                                         (gx#core-identifier=?
                                                          _hd1376513819_
                                                          '%#define-values))
                                                    (if (gx#stx-pair?
                                                         _tl1376613821_)
                                                        (let ((_e1376713824_
                                                               (gx#syntax-e
                                                                _tl1376613821_)))
                                                          (let ((_hd1376813827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1376713824_))
                        (_tl1376913829_ (##cdr _e1376713824_)))
                    (let ((_hd-bind13832_ _hd1376813827_))
                      (if (gx#stx-pair? _tl1376913829_)
                          (let ((_e1377013834_ (gx#syntax-e _tl1376913829_)))
                            (let ((_hd1377113837_ (##car _e1377013834_))
                                  (_tl1377213839_ (##cdr _e1377013834_)))
                              (let ((_expr13842_ _hd1377113837_))
                                (if (gx#stx-null? _tl1377213839_)
                                    (if '#t
                                        (_lp13736_
                                         _rest13759_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13832_)
                                                 (gx#core-expand-expression
                                                  _expr13842_))
                                                (gx#stx-source _hd13760_))
                                               _body13739_))
                                        (_E1376313812_))
                                    (_E1376313812_)))))
                          (_E1376313812_)))))
                (_E1376313812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1376313812_))))
                                            (_E1376313812_)))))
                                (_E1376213844_)))))
                      (if (##pair? _rest1374013748_)
                          (let ((_hd1374513851_ (##car _rest1374013748_))
                                (_tl1374613853_ (##cdr _rest1374013748_)))
                            (let* ((_hd13856_ _hd1374513851_)
                                   (_rest13858_ _tl1374613853_))
                              (_K1374413848_ _rest13858_ _hd13856_)))
                          (_else1374213756_)))))))
        (_expand-body13732_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13729_)
          _expand-special13731_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13572_
             _expanded?13573_
             _method13574_
             _current-phi13575_
             _expand113576_)
      (letrec ((_K13578_
                (lambda (_rest13696_ _r13697_)
                  (let* ((_e1369813705_ _rest13696_)
                         (_E1370013709_ (lambda () _r13697_))
                         (_E1369913725_
                          (lambda ()
                            (if (gx#stx-pair? _e1369813705_)
                                (let ((_e1370113713_
                                       (gx#syntax-e _e1369813705_)))
                                  (let ((_hd1370213716_ (##car _e1370113713_))
                                        (_tl1370313718_ (##cdr _e1370113713_)))
                                    (let* ((_hd13721_ _hd1370213716_)
                                           (_rest13723_ _tl1370313718_))
                                      (if '#t
                                          (_step13579_
                                           _hd13721_
                                           _rest13723_
                                           _r13697_)
                                          (_E1370013709_)))))
                                (_E1370013709_)))))
                    (_E1369913725_))))
               (_step13579_
                (lambda (_hd13610_ _rest13611_ _r13612_)
                  (let* ((_e1361313631_ _hd13610_)
                         (_E1362613635_
                          (lambda ()
                            (if (_expanded?13573_ (gx#stx-e _hd13610_))
                                (_K13578_
                                 _rest13611_
                                 (cons (gx#stx-e _hd13610_) _r13612_))
                                (_expand113576_
                                 _hd13610_
                                 _K13578_
                                 _rest13611_
                                 _r13612_))))
                         (_E1362213651_
                          (lambda ()
                            (if (gx#stx-pair? _e1361313631_)
                                (let ((_e1362713639_
                                       (gx#syntax-e _e1361313631_)))
                                  (let ((_hd1362813642_ (##car _e1362713639_))
                                        (_tl1362913644_ (##cdr _e1362713639_)))
                                    (let* ((_macro13647_ _hd1362813642_)
                                           (_body13649_ _tl1362913644_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro13647_
                                           gx#syntax-binding?)
                                          (_K13578_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro13647_)
                                                  _hd13610_
                                                  _method13574_)
                                                 _rest13611_)
                                           _r13612_)
                                          (_E1362613635_)))))
                                (_E1362613635_))))
                         (_E1361513665_
                          (lambda ()
                            (if (gx#stx-pair? _e1361313631_)
                                (let ((_e1362313655_
                                       (gx#syntax-e _e1361313631_)))
                                  (let ((_hd1362413658_ (##car _e1362313655_))
                                        (_tl1362513660_ (##cdr _e1362313655_)))
                                    (if (eq? (gx#stx-e _hd1362413658_) 'begin:)
                                        (let ((_body13663_ _tl1362513660_))
                                          (if '#t
                                              (_K13578_
                                               (gx#stx-foldr
                                                cons
                                                _rest13611_
                                                _body13663_)
                                               _r13612_)
                                              (_E1362213651_)))
                                        (_E1362213651_))))
                                (_E1362213651_))))
                         (_E1361413692_
                          (lambda ()
                            (if (gx#stx-pair? _e1361313631_)
                                (let ((_e1361613669_
                                       (gx#syntax-e _e1361313631_)))
                                  (let ((_hd1361713672_ (##car _e1361613669_))
                                        (_tl1361813674_ (##cdr _e1361613669_)))
                                    (if (eq? (gx#stx-e _hd1361713672_) 'phi:)
                                        (if (gx#stx-pair? _tl1361813674_)
                                            (let ((_e1361913677_
                                                   (gx#syntax-e
                                                    _tl1361813674_)))
                                              (let ((_hd1362013680_
                                                     (##car _e1361913677_))
                                                    (_tl1362113682_
                                                     (##cdr _e1361913677_)))
                                                (let* ((_dphi13685_
                                                        _hd1362013680_)
                                                       (_body13687_
                                                        _tl1362113682_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi13685_)
                                                      (let ((_rbody13690_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K13578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body13687_
                         '()))
                      _current-phi13575_
                      (fx+ (gx#stx-e _dphi13685_) (_current-phi13575_)))))
                (_K13578_ _rest13611_ (foldr1 cons _r13612_ _rbody13690_)))
              (_E1361513665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1361513665_))
                                        (_E1361513665_))))
                                (_E1361513665_)))))
                    (_E1361413692_)))))
        (let* ((_e1358013587_ _stx13572_)
               (_E1358213591_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1358013587_)))
               (_E1358113606_
                (lambda ()
                  (if (gx#stx-pair? _e1358013587_)
                      (let ((_e1358313595_ (gx#syntax-e _e1358013587_)))
                        (let ((_hd1358413598_ (##car _e1358313595_))
                              (_tl1358513600_ (##cdr _e1358313595_)))
                          (let ((_body13603_ _tl1358513600_))
                            (if '#t
                                (if (_current-phi13575_)
                                    (_K13578_ _body13603_ '())
                                    (call-with-parameters
                                     (lambda () (_K13578_ _body13603_ '()))
                                     _current-phi13575_
                                     (gx#current-expander-phi)))
                                (_E1358213591_)))))
                      (_E1358213591_)))))
          (_E1358113606_)))))
  (define gx#core-expand-import%__%
    (lambda (_stx13239_ _internal-expand?13240_)
      (letrec ((_expand113242_
                (lambda (_hd13552_ _K13553_ _rest13554_ _r13555_)
                  (if (gx#core-bound-module? _hd13552_)
                      (_import113243_
                       (gx#syntax-local-e__0 _hd13552_)
                       _K13553_
                       _rest13554_
                       _r13555_)
                      (if (gx#core-library-module-path? _hd13552_)
                          (_import113243_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _hd13552_))
                           _K13553_
                           _rest13554_
                           _r13555_)
                          (let ((_e13557_ (gx#stx-e _hd13552_)))
                            (if (pair? _e13557_)
                                (let ((_$e13559_ (gx#stx-e (car _e13557_))))
                                  (if (eq? 'spec: _$e13559_)
                                      (_import-spec13246_
                                       _hd13552_
                                       _K13553_
                                       _rest13554_
                                       _r13555_)
                                      (if (eq? 'in: _$e13559_)
                                          (_import-submodule13244_
                                           _hd13552_
                                           _K13553_
                                           _rest13554_
                                           _r13555_)
                                          (if (eq? 'runtime: _$e13559_)
                                              (_import-runtime13245_
                                               _hd13552_
                                               _K13553_
                                               _rest13554_
                                               _r13555_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx13239_
                                               _hd13552_)))))
                                (if (string? _e13557_)
                                    (_import113243_
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__%
                                       _hd13552_
                                       (gx#stx-source _stx13239_)))
                                     _K13553_
                                     _rest13554_
                                     _r13555_)
                                    (if (##structure-instance-of?
                                         _e13557_
                                         'gx#module-context::t)
                                        (_K13553_
                                         _rest13554_
                                         (cons _e13557_ _r13555_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; illegal import"
                                         _stx13239_
                                         _hd13552_)))))))))
               (_import113243_
                (lambda (_ctx13541_ _K13542_ _rest13543_ _r13544_)
                  (let ((_dphi13546_
                         (fx- (gx#current-import-expander-phi)
                              (gx#current-expander-phi))))
                    (_K13542_
                     _rest13543_
                     (cons (##structure
                            gx#import-set::t
                            _ctx13541_
                            _dphi13546_
                            (map (lambda (_g1354713549_)
                                   (gx#core-module-export->import__%
                                    _g1354713549_
                                    '#f
                                    _dphi13546_))
                                 (##unchecked-structure-ref
                                  _ctx13541_
                                  '9
                                  gx#module-context::t
                                  '#f)))
                           _r13544_)))))
               (_import-submodule13244_
                (lambda (_hd13508_ _K13509_ _rest13510_ _r13511_)
                  (let* ((_e1351213519_ _hd13508_)
                         (_E1351413523_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1351213519_)))
                         (_E1351313537_
                          (lambda ()
                            (if (gx#stx-pair? _e1351213519_)
                                (let ((_e1351513527_
                                       (gx#syntax-e _e1351213519_)))
                                  (let ((_hd1351613530_ (##car _e1351513527_))
                                        (_tl1351713532_ (##cdr _e1351513527_)))
                                    (let ((_spath13535_ _tl1351713532_))
                                      (if '#t
                                          (_import113243_
                                           (_import-spec-source13247_
                                            _spath13535_)
                                           _K13509_
                                           _rest13510_
                                           _r13511_)
                                          (_E1351413523_)))))
                                (_E1351413523_)))))
                    (_E1351313537_))))
               (_import-runtime13245_
                (lambda (_hd13475_ _K13476_ _rest13477_ _r13478_)
                  (let* ((_e1347913486_ _hd13475_)
                         (_E1348113490_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1347913486_)))
                         (_E1348013504_
                          (lambda ()
                            (if (gx#stx-pair? _e1347913486_)
                                (let ((_e1348213494_
                                       (gx#syntax-e _e1347913486_)))
                                  (let ((_hd1348313497_ (##car _e1348213494_))
                                        (_tl1348413499_ (##cdr _e1348213494_)))
                                    (let ((_spath13502_ _tl1348413499_))
                                      (if '#t
                                          (_K13476_
                                           _rest13477_
                                           (cons (_import-spec-source13247_
                                                  _spath13502_)
                                                 _r13478_))
                                          (_E1348113490_)))))
                                (_E1348113490_)))))
                    (_E1348013504_))))
               (_import-spec13246_
                (lambda (_hd13314_ _K13315_ _rest13316_ _r13317_)
                  (let* ((_e1331813335_ _hd13314_)
                         (_E1332713339_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1331813335_)))
                         (_E1332013449_
                          (lambda ()
                            (if (gx#stx-pair? _e1331813335_)
                                (let ((_e1332813343_
                                       (gx#syntax-e _e1331813335_)))
                                  (let ((_hd1332913346_ (##car _e1332813343_))
                                        (_tl1333013348_ (##cdr _e1332813343_)))
                                    (if (gx#stx-pair? _tl1333013348_)
                                        (let ((_e1333113351_
                                               (gx#syntax-e _tl1333013348_)))
                                          (let ((_hd1333213354_
                                                 (##car _e1333113351_))
                                                (_tl1333313356_
                                                 (##cdr _e1333113351_)))
                                            (let* ((_path13359_ _hd1333213354_)
                                                   (_specs13361_
                                                    _tl1333313356_))
                                              (if '#t
                                                  (let ((_src-ctx13363_
                                                         (_import-spec-source13247_
                                                          _path13359_))
                                                        (_exports13364_
                                                         (make-table))
                                                        (_specs13365_
                                                         (gx#syntax->list
                                                          _specs13361_)))
                                                    (for-each
                                                     (lambda (_out13367_)
                                                       (table-set!
                                                        _exports13364_
                                                        (cons (##unchecked-structure-ref
                                                               _out13367_
                                                               '3
                                                               gx#module-export::t
                                                               '#f)
                                                              (##unchecked-structure-ref
                                                               _out13367_
                                                               '4
                                                               gx#module-export::t
                                                               '#f))
                                                        _out13367_))
                                                     (##unchecked-structure-ref
                                                      _src-ctx13363_
                                                      '9
                                                      gx#module-context::t
                                                      '#f))
                                                    (_K13315_
                                                     _rest13316_
                                                     (foldl1 (lambda (_spec13369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r13370_)
                       (let* ((_e1337113387_ _spec13369_)
                              (_E1337313391_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e1337113387_)))
                              (_E1337213445_
                               (lambda ()
                                 (if (gx#stx-pair? _e1337113387_)
                                     (let ((_e1337413395_
                                            (gx#syntax-e _e1337113387_)))
                                       (let ((_hd1337513398_
                                              (##car _e1337413395_))
                                             (_tl1337613400_
                                              (##cdr _e1337413395_)))
                                         (let ((_phi13403_ _hd1337513398_))
                                           (if (gx#stx-pair? _tl1337613400_)
                                               (let ((_e1337713405_
                                                      (gx#syntax-e
                                                       _tl1337613400_)))
                                                 (let ((_hd1337813408_
                                                        (##car _e1337713405_))
                                                       (_tl1337913410_
                                                        (##cdr _e1337713405_)))
                                                   (let ((_name13413_
                                                          _hd1337813408_))
                                                     (if (gx#stx-pair?
                                                          _tl1337913410_)
                                                         (let ((_e1338013415_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1337913410_)))
                   (let ((_hd1338113418_ (##car _e1338013415_))
                         (_tl1338213420_ (##cdr _e1338013415_)))
                     (let ((_src-phi13423_ _hd1338113418_))
                       (if (gx#stx-pair? _tl1338213420_)
                           (let ((_e1338313425_ (gx#syntax-e _tl1338213420_)))
                             (let ((_hd1338413428_ (##car _e1338313425_))
                                   (_tl1338513430_ (##cdr _e1338313425_)))
                               (let ((_src-name13433_ _hd1338413428_))
                                 (if (gx#stx-null? _tl1338513430_)
                                     (if (and (gx#stx-fixnum? _src-phi13423_)
                                              (gx#identifier? _src-name13433_)
                                              (gx#stx-fixnum? _phi13403_)
                                              (gx#identifier? _name13413_))
                                         (let ((_src-phi13435_
                                                (gx#stx-e _src-phi13423_))
                                               (_src-name13436_
                                                (gx#core-identifier-key
                                                 _src-name13433_))
                                               (_phi13437_
                                                (gx#stx-e _phi13403_))
                                               (_name13438_
                                                (gx#core-identifier-key
                                                 _name13413_)))
                                           (let ((_$e13440_
                                                  (table-ref
                                                   _exports13364_
                                                   (cons _src-phi13435_
                                                         _src-name13436_)
                                                   '#f)))
                                             (if _$e13440_
                                                 ((lambda (_out13443_)
                                                    (cons (gx#core-module-export->import__%
                                                           _out13443_
                                                           _name13438_
                                                           (fx- _phi13437_
                                                                _src-phi13435_))
                                                          _r13370_))
                                                  _$e13440_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; no matching export"
                                                  _stx13239_
                                                  _hd13314_))))
                                         (_E1337313391_))
                                     (_E1337313391_)))))
                           (_E1337313391_)))))
                 (_E1337313391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1337313391_)))))
                                     (_E1337313391_)))))
                         (_E1337213445_)))
                     _r13317_
                     _specs13365_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1332713339_)))))
                                        (_E1332713339_))))
                                (_E1332713339_))))
                         (_E1331913471_
                          (lambda ()
                            (if (gx#stx-pair? _e1331813335_)
                                (let ((_e1332113453_
                                       (gx#syntax-e _e1331813335_)))
                                  (let ((_hd1332213456_ (##car _e1332113453_))
                                        (_tl1332313458_ (##cdr _e1332113453_)))
                                    (if (gx#stx-pair? _tl1332313458_)
                                        (let ((_e1332413461_
                                               (gx#syntax-e _tl1332313458_)))
                                          (let ((_hd1332513464_
                                                 (##car _e1332413461_))
                                                (_tl1332613466_
                                                 (##cdr _e1332413461_)))
                                            (let ((_path13469_ _hd1332513464_))
                                              (if (gx#stx-null? _tl1332613466_)
                                                  (if '#t
                                                      (_K13315_
                                                       _rest13316_
                                                       (cons (_import-spec-source13247_
                                                              _path13469_)
                                                             _r13317_))
                                                      (_E1332013449_))
                                                  (_E1332013449_)))))
                                        (_E1332013449_))))
                                (_E1332013449_)))))
                    (_E1331913471_))))
               (_import-spec-source13247_
                (lambda (_spath13312_)
                  (gx#core-import-nested-module _spath13312_ _stx13239_)))
               (_import!13248_
                (lambda (_rbody13261_)
                  (letrec* ((_current-ctx13263_ (gx#current-expander-context))
                            (_deps13264_ (make-table 'test: eq?))
                            (_bind!13265_
                             (lambda (_hd13310_)
                               (gx#core-bind-import!__1
                                _hd13310_
                                _current-ctx13263_))))
                    (let _lp13267_ ((_rest13269_ _rbody13261_)
                                    (_body13270_ '()))
                      (let* ((_rest1327113279_ _rest13269_)
                             (_else1327313289_
                              (lambda ()
                                (if (##structure-instance-of?
                                     _current-ctx13263_
                                     'gx#module-context::t)
                                    (##unchecked-structure-set!
                                     _current-ctx13263_
                                     (foldl1 cons
                                             (##unchecked-structure-ref
                                              _current-ctx13263_
                                              '8
                                              gx#module-context::t
                                              '#f)
                                             _body13270_)
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    '#!void)
                                (table-for-each
                                 (lambda (_ctx13287_ _g16033_)
                                   (gx#eval-module _ctx13287_))
                                 _deps13264_)
                                _body13270_))
                             (_K1327513298_
                              (lambda (_rest13292_ _hd13293_)
                                (if (##structure-direct-instance-of?
                                     _hd13293_
                                     'gx#module-import::t)
                                    (begin
                                      (_bind!13265_ _hd13293_)
                                      (if (and (fxpositive?
                                                (##unchecked-structure-ref
                                                 _hd13293_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (fxzero? (##unchecked-structure-ref
                                                         (##unchecked-structure-ref
                                                          _hd13293_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '3
                                                         gx#module-export::t
                                                         '#f)))
                                          (table-set!
                                           _deps13264_
                                           (##unchecked-structure-ref
                                            (##unchecked-structure-ref
                                             _hd13293_
                                             '1
                                             gx#module-import::t
                                             '#f)
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           '#t)
                                          '#!void))
                                    (if (##structure-direct-instance-of?
                                         _hd13293_
                                         'gx#import-set::t)
                                        (begin
                                          (for-each
                                           _bind!13265_
                                           (##unchecked-structure-ref
                                            _hd13293_
                                            '3
                                            gx#import-set::t
                                            '#f))
                                          (if (fxpositive?
                                               (##unchecked-structure-ref
                                                _hd13293_
                                                '2
                                                gx#import-set::t
                                                '#f))
                                              (table-set!
                                               _deps13264_
                                               (##unchecked-structure-ref
                                                _hd13293_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (let ((_$e13295_
                                               (##structure-instance-of?
                                                _hd13293_
                                                'gx#module-context::t)))
                                          (if _$e13295_
                                              _$e13295_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Unexpected import"
                                               _stx13239_
                                               _hd13293_)))))
                                (_lp13267_
                                 _rest13292_
                                 (cons _hd13293_ _body13270_)))))
                        (if (##pair? _rest1327113279_)
                            (let ((_hd1327613301_ (##car _rest1327113279_))
                                  (_tl1327713303_ (##cdr _rest1327113279_)))
                              (let* ((_hd13306_ _hd1327613301_)
                                     (_rest13308_ _tl1327713303_))
                                (_K1327513298_ _rest13308_ _hd13306_)))
                            (_else1327313289_)))))))
               (_expanded-import?13249_
                (lambda (_e13253_)
                  (let ((_$e13255_
                         (##structure-direct-instance-of?
                          _e13253_
                          'gx#import-set::t)))
                    (if _$e13255_
                        _$e13255_
                        (let ((_$e13258_
                               (##structure-direct-instance-of?
                                _e13253_
                                'gx#module-import::t)))
                          (if _$e13258_
                              _$e13258_
                              (##structure-instance-of?
                               _e13253_
                               'gx#module-context::t))))))))
        (let ((_rbody13251_
               (gx#core-expand-import/export
                _stx13239_
                _expanded-import?13249_
                'apply-import-expander
                gx#current-import-expander-phi
                _expand113242_)))
          (if _internal-expand?13240_
              (reverse _rbody13251_)
              (gx#core-quote-syntax__1
               (gx#core-cons '%#import (_import!13248_ _rbody13251_))
               (gx#stx-source _stx13239_)))))))
  (define gx#core-expand-import%__0
    (lambda (_stx13565_)
      (let ((_internal-expand?13567_ '#f))
        (gx#core-expand-import%__% _stx13565_ _internal-expand?13567_))))
  (define gx#core-expand-import%
    (lambda _g16035_
      (let ((_g16034_ (length _g16035_)))
        (cond ((##fx= _g16034_ 1) (apply gx#core-expand-import%__0 _g16035_))
              ((##fx= _g16034_ 2) (apply gx#core-expand-import%__% _g16035_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-import%
                _g16035_))))))
  (define gx#core-import-nested-module
    (lambda (_spath13166_ _where13167_)
      (let* ((_e1316813175_ _spath13166_)
             (_E1317013179_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1316813175_)))
             (_E1316913234_
              (lambda ()
                (if (gx#stx-pair? _e1316813175_)
                    (let ((_e1317113183_ (gx#syntax-e _e1316813175_)))
                      (let ((_hd1317213186_ (##car _e1317113183_))
                            (_tl1317313188_ (##cdr _e1317113183_)))
                        (let* ((_origin13191_ _hd1317213186_)
                               (_sub13193_ _tl1317313188_))
                          (if '#t
                              (let ((_origin-ctx13195_
                                     (if (gx#stx-false? _origin13191_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13191_))))
                                (let _lp13197_ ((_rest13199_ _sub13193_)
                                                (_ctx13200_ _origin-ctx13195_))
                                  (let* ((_e1320113208_ _rest13199_)
                                         (_E1320313212_ (lambda () _ctx13200_))
                                         (_E1320213230_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1320113208_)
                                                (let ((_e1320413216_
                                                       (gx#syntax-e
                                                        _e1320113208_)))
                                                  (let ((_hd1320513219_
                                                         (##car _e1320413216_))
                                                        (_tl1320613221_
                                                         (##cdr _e1320413216_)))
                                                    (let* ((_id13224_
                                                            _hd1320513219_)
                                                           (_rest13226_
                                                            _tl1320613221_))
                                                      (if '#t
                                                          (let ((_bind13228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13224_ '0 _ctx13200_)))
                    (if (and (##structure-direct-instance-of?
                              _bind13228_
                              'gx#syntax-binding::t)
                             (##structure-instance-of?
                              (##unchecked-structure-ref
                               _bind13228_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              'gx#module-context::t))
                        '#!void
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; not bound as module"
                         _where13167_
                         _spath13166_
                         _id13224_))
                    (_lp13197_
                     _rest13226_
                     (##unchecked-structure-ref
                      _bind13228_
                      '4
                      gx#syntax-binding::t
                      '#f)))
                  (_E1320313212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1320313212_)))))
                                    (_E1320213230_))))
                              (_E1317013179_)))))
                    (_E1317013179_)))))
        (_E1316913234_))))
  (define gx#core-expand-import-source
    (lambda (_hd13164_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13164_ '()))
       '#t)))
  (define gx#core-expand-export%__%
    (lambda (_stx12675_ _internal-expand?12676_)
      (letrec* ((_make-export__1597315974_
                 (lambda (_bind13112_ _phi13113_ _ctx13114_ _name13115_)
                   (let* ((_key13117_
                           (##unchecked-structure-ref
                            _bind13112_
                            '2
                            gx#binding::t
                            '#f))
                          (_export-key13119_
                           (if _name13115_
                               (gx#core-identifier-key _name13115_)
                               _key13117_)))
                     (##structure
                      gx#module-export::t
                      _ctx13114_
                      _key13117_
                      _phi13113_
                      _export-key13119_
                      (let ((_$e13122_
                             (##structure-instance-of?
                              _bind13112_
                              'gx#extern-binding::t)))
                        (if _$e13122_
                            _$e13122_
                            (##structure-direct-instance-of?
                             _bind13112_
                             'gx#import-binding::t)))))))
                (_make-export__0__1597515978_
                 (lambda (_bind13128_)
                   (let* ((_phi13130_ (gx#current-export-expander-phi))
                          (_ctx13132_ (gx#current-expander-context))
                          (_name13134_ '#f))
                     (_make-export__1597315974_
                      _bind13128_
                      _phi13130_
                      _ctx13132_
                      _name13134_))))
                (_make-export__1__1597615979_
                 (lambda (_bind13136_ _phi13137_)
                   (let* ((_ctx13139_ (gx#current-expander-context))
                          (_name13141_ '#f))
                     (_make-export__1597315974_
                      _bind13136_
                      _phi13137_
                      _ctx13139_
                      _name13141_))))
                (_make-export__2__1597715980_
                 (lambda (_bind13143_ _phi13144_ _ctx13145_)
                   (let ((_name13147_ '#f))
                     (_make-export__1597315974_
                      _bind13143_
                      _phi13144_
                      _ctx13145_
                      _name13147_))))
                (_make-export12678_
                 (lambda _g16037_
                   (let ((_g16036_ (length _g16037_)))
                     (cond ((##fx= _g16036_ 1)
                            (apply _make-export__0__1597515978_ _g16037_))
                           ((##fx= _g16036_ 2)
                            (apply _make-export__1__1597615979_ _g16037_))
                           ((##fx= _g16036_ 3)
                            (apply _make-export__2__1597715980_ _g16037_))
                           ((##fx= _g16036_ 4)
                            (apply _make-export__1597315974_ _g16037_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g16037_))))))
                (_expand112679_
                 (lambda (_hd12825_ _K12826_ _rest12827_ _r12828_)
                   (let* ((_e1282912861_ _hd12825_)
                          (_E1285612865_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; illegal export"
                              _stx12675_
                              _hd12825_)))
                          (_E1284612944_
                           (lambda ()
                             (if (gx#stx-pair? _e1282912861_)
                                 (let ((_e1285712869_
                                        (gx#syntax-e _e1282912861_)))
                                   (let ((_hd1285812872_ (##car _e1285712869_))
                                         (_tl1285912874_
                                          (##cdr _e1285712869_)))
                                     (if (eq? (gx#stx-e _hd1285812872_)
                                              'import:)
                                         (let ((_in12877_ _tl1285912874_))
                                           (if (gx#stx-list? _in12877_)
                                               (let _lp12879_ ((_in-rest12881_
                                                                _in12877_)
                                                               (_r12882_
                                                                _r12828_))
                                                 (let* ((_e1288312890_
                                                         _in-rest12881_)
                                                        (_E1288512894_
                                                         (lambda ()
                                                           (_K12826_
                                                            _rest12827_
                                                            _r12882_)))
                                                        (_E1288412940_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                _e1288312890_)
                                                               (let ((_e1288612898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _e1288312890_)))
                         (let ((_hd1288712901_ (##car _e1288612898_))
                               (_tl1288812903_ (##cdr _e1288612898_)))
                           (let* ((_hd12906_ _hd1288712901_)
                                  (_in-rest12908_ _tl1288812903_))
                             (if '#t
                                 (let ((_src12938_
                                        (if (gx#core-bound-module? _hd12906_)
                                            (gx#syntax-local-e__0 _hd12906_)
                                            (if (gx#core-library-module-path?
                                                 _hd12906_)
                                                (gx#import-module__0
                                                 (gx#core-resolve-library-module-path
                                                  _hd12906_))
                                                (if (gx#stx-string? _hd12906_)
                                                    (gx#import-module__0
                                                     (gx#core-resolve-module-path__%
                                                      _hd12906_
                                                      (gx#stx-source
                                                       _stx12675_)))
                                                    (let* ((_e1290912916_
                                                            _hd12906_)
                                                           (_E1291112920_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; illegal re-export"
                                                               _stx12675_
                                                               _hd12906_)))
                                                           (_E1291012934_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1290912916_)
                          (let ((_e1291212924_ (gx#syntax-e _e1290912916_)))
                            (let ((_hd1291312927_ (##car _e1291212924_))
                                  (_tl1291412929_ (##cdr _e1291212924_)))
                              (if (eq? (gx#stx-e _hd1291312927_) 'in:)
                                  (let ((_spath12932_ _tl1291412929_))
                                    (if '#t
                                        (gx#core-import-nested-module
                                         _spath12932_
                                         _stx12675_)
                                        (_E1291112920_)))
                                  (_E1291112920_))))
                          (_E1291112920_)))))
              (_E1291012934_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_lp12879_
                                    _in-rest12908_
                                    (_export-imports12680_
                                     _src12938_
                                     _r12882_)))
                                 (_E1288512894_)))))
                       (_E1288512894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1288412940_)))
                                               (_E1285612865_)))
                                         (_E1285612865_))))
                                 (_E1285612865_))))
                          (_E1283312983_
                           (lambda ()
                             (if (gx#stx-pair? _e1282912861_)
                                 (let ((_e1284712948_
                                        (gx#syntax-e _e1282912861_)))
                                   (let ((_hd1284812951_ (##car _e1284712948_))
                                         (_tl1284912953_
                                          (##cdr _e1284712948_)))
                                     (if (eq? (gx#stx-e _hd1284812951_)
                                              'rename:)
                                         (if (gx#stx-pair? _tl1284912953_)
                                             (let ((_e1285012956_
                                                    (gx#syntax-e
                                                     _tl1284912953_)))
                                               (let ((_hd1285112959_
                                                      (##car _e1285012956_))
                                                     (_tl1285212961_
                                                      (##cdr _e1285012956_)))
                                                 (let ((_id12964_
                                                        _hd1285112959_))
                                                   (if (gx#stx-pair?
                                                        _tl1285212961_)
                                                       (let ((_e1285312966_
                                                              (gx#syntax-e
                                                               _tl1285212961_)))
                                                         (let ((_hd1285412969_
                                                                (##car _e1285312966_))
                                                               (_tl1285512971_
                                                                (##cdr _e1285312966_)))
                                                           (let ((_name12974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1285412969_))
                     (if (gx#stx-null? _tl1285512971_)
                         (if '#t
                             (let* ((_phi12976_
                                     (gx#current-export-expander-phi))
                                    (_$e12978_
                                     (gx#core-resolve-identifier__1
                                      _id12964_
                                      _phi12976_)))
                               (if _$e12978_
                                   ((lambda (_bind12981_)
                                      (_K12826_
                                       _rest12827_
                                       (cons (_make-export__1597315974_
                                              _bind12981_
                                              _phi12976_
                                              (gx#current-expander-context)
                                              _name12974_)
                                             _r12828_)))
                                    _$e12978_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx12675_
                                    _hd12825_
                                    _id12964_)))
                             (_E1284612944_))
                         (_E1284612944_)))))
               (_E1284612944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E1284612944_))
                                         (_E1284612944_))))
                                 (_E1284612944_))))
                          (_E1283213032_
                           (lambda ()
                             (if (gx#stx-pair? _e1282912861_)
                                 (let ((_e1283412987_
                                        (gx#syntax-e _e1282912861_)))
                                   (let ((_hd1283512990_ (##car _e1283412987_))
                                         (_tl1283612992_
                                          (##cdr _e1283412987_)))
                                     (if (eq? (gx#stx-e _hd1283512990_) 'spec:)
                                         (if (gx#stx-pair? _tl1283612992_)
                                             (let ((_e1283712995_
                                                    (gx#syntax-e
                                                     _tl1283612992_)))
                                               (let ((_hd1283812998_
                                                      (##car _e1283712995_))
                                                     (_tl1283913000_
                                                      (##cdr _e1283712995_)))
                                                 (let ((_phi13003_
                                                        _hd1283812998_))
                                                   (if (gx#stx-pair?
                                                        _tl1283913000_)
                                                       (let ((_e1284013005_
                                                              (gx#syntax-e
                                                               _tl1283913000_)))
                                                         (let ((_hd1284113008_
                                                                (##car _e1284013005_))
                                                               (_tl1284213010_
                                                                (##cdr _e1284013005_)))
                                                           (let ((_id13013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1284113008_))
                     (if (gx#stx-pair? _tl1284213010_)
                         (let ((_e1284313015_ (gx#syntax-e _tl1284213010_)))
                           (let ((_hd1284413018_ (##car _e1284313015_))
                                 (_tl1284513020_ (##cdr _e1284313015_)))
                             (let ((_name13023_ _hd1284413018_))
                               (if (gx#stx-null? _tl1284513020_)
                                   (if (and (gx#stx-fixnum? _phi13003_)
                                            (gx#identifier? _id13013_)
                                            (gx#identifier? _name13023_))
                                       (let* ((_phi13025_
                                               (gx#stx-e _phi13003_))
                                              (_$e13027_
                                               (gx#core-resolve-identifier__1
                                                _id13013_
                                                _phi13025_)))
                                         (if _$e13027_
                                             ((lambda (_bind13030_)
                                                (_K12826_
                                                 _rest12827_
                                                 (cons (_make-export__1597315974_
                                                        _bind13030_
                                                        _phi13025_
                                                        (gx#current-expander-context)
                                                        _name13023_)
                                                       _r12828_)))
                                              _$e13027_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _stx12675_
                                              _hd12825_
                                              _id13013_)))
                                       (_E1283312983_))
                                   (_E1283312983_)))))
                         (_E1283312983_)))))
               (_E1283312983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E1283312983_))
                                         (_E1283312983_))))
                                 (_E1283312983_))))
                          (_E1283113043_
                           (lambda ()
                             (let ((_id13036_ _e1282912861_))
                               (if (gx#identifier? _id13036_)
                                   (let ((_$e13038_
                                          (gx#core-resolve-identifier__1
                                           _id13036_
                                           (gx#current-export-expander-phi))))
                                     (if _$e13038_
                                         ((lambda (_bind13041_)
                                            (_K12826_
                                             _rest12827_
                                             (cons (_make-export__0__1597515978_
                                                    _bind13041_)
                                                   _r12828_)))
                                          _$e13038_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Reference to unbound identifier"
                                          _stx12675_
                                          _hd12825_)))
                                   (_E1283213032_)))))
                          (_E1283013107_
                           (lambda ()
                             (if (eq? (gx#stx-e _e1282912861_) '#t)
                                 (if '#t
                                     (let* ((_current-ctx13047_
                                             (gx#current-expander-context))
                                            (_current-phi13049_
                                             (gx#current-export-expander-phi))
                                            (_phi-ctx13051_
                                             (gx#core-context-shift
                                              _current-ctx13047_
                                              _current-phi13049_))
                                            (_phi-bind13053_
                                             (table->list
                                              (##unchecked-structure-ref
                                               _phi-ctx13051_
                                               '2
                                               gx#expander-context::t
                                               '#f))))
                                       (let _lp13056_ ((_bind-rest13058_
                                                        _phi-bind13053_)
                                                       (_set13059_ '()))
                                         (let* ((_bind-rest1306013070_
                                                 _bind-rest13058_)
                                                (_else1306213078_
                                                 (lambda ()
                                                   (_K12826_
                                                    _rest12827_
                                                    (cons (##structure
                                                           gx#export-set::t
                                                           '#f
                                                           _current-phi13049_
                                                           _set13059_)
                                                          _r12828_))))
                                                (_K1306413088_
                                                 (lambda (_bind-rest13081_
                                                          _bind13082_
                                                          _key13083_)
                                                   (if (or (##structure-direct-instance-of?
                                                            _bind13082_
                                                            'gx#import-binding::t)
                                                           (gx#private-feature-binding?
                                                            _bind13082_))
                                                       (_lp13056_
                                                        _bind-rest13081_
                                                        _set13059_)
                                                       (_lp13056_
                                                        _bind-rest13081_
                                                        (cons (_make-export__2__1597715980_
                                                               _bind13082_
                                                               _current-phi13049_
                                                               _current-ctx13047_)
                                                              _set13059_))))))
                                           (if (##pair? _bind-rest1306013070_)
                                               (let ((_hd1306513091_
                                                      (##car _bind-rest1306013070_))
                                                     (_tl1306613093_
                                                      (##cdr _bind-rest1306013070_)))
                                                 (if (##pair? _hd1306513091_)
                                                     (let ((_hd1306713096_
                                                            (##car _hd1306513091_))
                                                           (_tl1306813098_
                                                            (##cdr _hd1306513091_)))
                                                       (let* ((_key13101_
                                                               _hd1306713096_)
                                                              (_bind13103_
                                                               _tl1306813098_)
                                                              (_bind-rest13105_
                                                               _tl1306613093_))
                                                         (_K1306413088_
                                                          _bind-rest13105_
                                                          _bind13103_
                                                          _key13101_)))
                                                     (_else1306213078_)))
                                               (_else1306213078_)))))
                                     (_E1283113043_))
                                 (_E1283113043_)))))
                     (_E1283013107_))))
                (_export-imports12680_
                 (lambda (_src12701_ _r12702_)
                   (letrec* ((_current-ctx12704_ (gx#current-expander-context))
                             (_current-phi12705_
                              (gx#current-export-expander-phi))
                             (_import->export12706_
                              (lambda (_in12787_)
                                (let* ((_in1278812796_ _in12787_)
                                       (_E1279012800_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _in1278812796_)))
                                       (_K1279112807_
                                        (lambda (_phi12803_
                                                 _key12804_
                                                 _out12805_)
                                          (##structure
                                           gx#module-export::t
                                           _current-ctx12704_
                                           _key12804_
                                           _phi12803_
                                           _key12804_
                                           '#t))))
                                  (if (##structure-direct-instance-of?
                                       _in1278812796_
                                       'gx#module-import::t)
                                      (let* ((_e1279212810_
                                              (##vector-ref _in1278812796_ '1))
                                             (_out12813_ _e1279212810_)
                                             (_e1279312815_
                                              (##vector-ref _in1278812796_ '2))
                                             (_key12818_ _e1279312815_)
                                             (_e1279412820_
                                              (##vector-ref _in1278812796_ '3))
                                             (_phi12823_ _e1279412820_))
                                        (_K1279112807_
                                         _phi12823_
                                         _key12818_
                                         _out12813_))
                                      (_E1279012800_)))))
                             (_fold-e12707_
                              (lambda (_in12709_ _r12710_)
                                (let* ((_in1271112725_ _in12709_)
                                       (_else1271412733_ (lambda () _r12710_)))
                                  (let ((_K1272012769_
                                         (lambda (_phi12765_
                                                  _key12766_
                                                  _out12767_)
                                           (if (and (fx= _phi12765_
                                                         _current-phi12705_)
                                                    (eq? _src12701_
                                                         (##unchecked-structure-ref
                                                          _out12767_
                                                          '1
                                                          gx#module-export::t
                                                          '#f)))
                                               (cons (_import->export12706_
                                                      _in12709_)
                                                     _r12710_)
                                               _r12710_)))
                                        (_K1271612744_
                                         (lambda (_imports12737_
                                                  _phi12738_
                                                  _ctx12739_)
                                           (if (and (fx= _phi12738_
                                                         _current-phi12705_)
                                                    (eq? _src12701_
                                                         _ctx12739_))
                                               (foldl1 (lambda (_in12741_
                                                                _r12742_)
                                                         (cons (_import->export12706_
                                                                _in12741_)
                                                               _r12742_))
                                                       _r12710_
                                                       _imports12737_)
                                               _r12710_))))
                                    (let ((_try-match1271312762_
                                           (lambda ()
                                             (if (##structure-direct-instance-of?
                                                  _in1271112725_
                                                  'gx#import-set::t)
                                                 (let* ((_e1271712747_
                                                         (##vector-ref
                                                          _in1271112725_
                                                          '1))
                                                        (_e1271812752_
                                                         (##vector-ref
                                                          _in1271112725_
                                                          '2))
                                                        (_e1271912757_
                                                         (##vector-ref
                                                          _in1271112725_
                                                          '3)))
                                                   (let ((_ctx12750_
                                                          _e1271712747_)
                                                         (_phi12755_
                                                          _e1271812752_)
                                                         (_imports12760_
                                                          _e1271912757_))
                                                     (_K1271612744_
                                                      _imports12760_
                                                      _phi12755_
                                                      _ctx12750_)))
                                                 (_else1271412733_)))))
                                      (if (##structure-direct-instance-of?
                                           _in1271112725_
                                           'gx#module-import::t)
                                          (let* ((_e1272112772_
                                                  (##vector-ref
                                                   _in1271112725_
                                                   '1))
                                                 (_e1272212777_
                                                  (##vector-ref
                                                   _in1271112725_
                                                   '2))
                                                 (_e1272312782_
                                                  (##vector-ref
                                                   _in1271112725_
                                                   '3)))
                                            (let ((_out12775_ _e1272112772_)
                                                  (_key12780_ _e1272212777_)
                                                  (_phi12785_ _e1272312782_))
                                              (_K1272012769_
                                               _phi12785_
                                               _key12780_
                                               _out12775_)))
                                          (_try-match1271312762_))))))))
                     (cons (##structure
                            gx#export-set::t
                            _src12701_
                            _current-phi12705_
                            (foldl1 _fold-e12707_
                                    '()
                                    (##unchecked-structure-ref
                                     _current-ctx12704_
                                     '8
                                     gx#module-context::t
                                     '#f)))
                           _r12702_))))
                (_export!12681_
                 (lambda (_rbody12691_)
                   (letrec* ((_current-ctx12693_ (gx#current-expander-context))
                             (_fold-e12694_
                              (lambda (_out12698_ _r12699_)
                                (if (##structure-direct-instance-of?
                                     _out12698_
                                     'gx#module-export::t)
                                    (cons _out12698_ _r12699_)
                                    (if (##structure-direct-instance-of?
                                         _out12698_
                                         'gx#export-set::t)
                                        (foldl1 cons
                                                _r12699_
                                                (##unchecked-structure-ref
                                                 _out12698_
                                                 '3
                                                 gx#export-set::t
                                                 '#f))
                                        _r12699_)))))
                     (let ((_body12696_ (reverse _rbody12691_)))
                       (##unchecked-structure-set!
                        _current-ctx12693_
                        (foldl1 _fold-e12694_
                                (##unchecked-structure-ref
                                 _current-ctx12693_
                                 '9
                                 gx#module-context::t
                                 '#f)
                                _body12696_)
                        '9
                        gx#module-context::t
                        '#f)
                       _body12696_))))
                (_expanded-export?12682_
                 (lambda (_e12686_)
                   (let ((_$e12688_
                          (##structure-direct-instance-of?
                           _e12686_
                           'gx#module-export::t)))
                     (if _$e12688_
                         _$e12688_
                         (##structure-direct-instance-of?
                          _e12686_
                          'gx#export-set::t))))))
        (let ((_rbody12684_
               (gx#core-expand-import/export
                _stx12675_
                _expanded-export?12682_
                'apply-export-expander
                gx#current-export-expander-phi
                _expand112679_)))
          (if _internal-expand?12676_
              (reverse _rbody12684_)
              (gx#core-quote-syntax__1
               (gx#core-cons '%#export (_export!12681_ _rbody12684_))
               (gx#stx-source _stx12675_)))))))
  (define gx#core-expand-export%__0
    (lambda (_stx13157_)
      (let ((_internal-expand?13159_ '#f))
        (gx#core-expand-export%__% _stx13157_ _internal-expand?13159_))))
  (define gx#core-expand-export%
    (lambda _g16039_
      (let ((_g16038_ (length _g16039_)))
        (cond ((##fx= _g16038_ 1) (apply gx#core-expand-export%__0 _g16039_))
              ((##fx= _g16038_ 2) (apply gx#core-expand-export%__% _g16039_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-export%
                _g16039_))))))
  (define gx#core-expand-export-source
    (lambda (_hd12672_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12672_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12642_)
      (let* ((_e1264312650_ _stx12642_)
             (_E1264512654_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1264312650_)))
             (_E1264412668_
              (lambda ()
                (if (gx#stx-pair? _e1264312650_)
                    (let ((_e1264612658_ (gx#syntax-e _e1264312650_)))
                      (let ((_hd1264712661_ (##car _e1264612658_))
                            (_tl1264812663_ (##cdr _e1264612658_)))
                        (let ((_body12666_ _tl1264812663_))
                          (if (gx#identifier-list? _body12666_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12666_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12666_))
                                 (gx#stx-source _stx12642_)))
                              (_E1264512654_)))))
                    (_E1264512654_)))))
        (_E1264412668_))))
  (define gx#core-bind-feature!__%
    (lambda (_id12608_ _private?12609_ _phi12610_ _ctx12611_)
      (gx#core-bind-syntax!__%
       _id12608_
       ((if _private?12609_
            gx#make-private-feature-expander
            gx#make-feature-expander)
        (gx#stx-e _id12608_))
       _private?12609_
       _phi12610_
       _ctx12611_)))
  (define gx#core-bind-feature!__0
    (lambda (_id12616_)
      (let* ((_private?12618_ '#f)
             (_phi12620_ (gx#current-expander-phi))
             (_ctx12622_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12616_
         _private?12618_
         _phi12620_
         _ctx12622_))))
  (define gx#core-bind-feature!__1
    (lambda (_id12624_ _private?12625_)
      (let* ((_phi12627_ (gx#current-expander-phi))
             (_ctx12629_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12624_
         _private?12625_
         _phi12627_
         _ctx12629_))))
  (define gx#core-bind-feature!__2
    (lambda (_id12631_ _private?12632_ _phi12633_)
      (let ((_ctx12635_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12631_
         _private?12632_
         _phi12633_
         _ctx12635_))))
  (define gx#core-bind-feature!
    (lambda _g16041_
      (let ((_g16040_ (length _g16041_)))
        (cond ((##fx= _g16040_ 1) (apply gx#core-bind-feature!__0 _g16041_))
              ((##fx= _g16040_ 2) (apply gx#core-bind-feature!__1 _g16041_))
              ((##fx= _g16040_ 3) (apply gx#core-bind-feature!__2 _g16041_))
              ((##fx= _g16040_ 4) (apply gx#core-bind-feature!__% _g16041_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-feature!
                _g16041_)))))))
