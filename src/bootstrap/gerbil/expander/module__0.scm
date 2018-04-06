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
    (lambda _$args15905_
      (apply make-struct-instance gx#module-import::t _$args15905_)))
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
    (lambda _$args15902_
      (apply make-struct-instance gx#module-export::t _$args15902_)))
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
    (lambda _$args15899_
      (apply make-struct-instance gx#import-set::t _$args15899_)))
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
    (lambda _$args15896_
      (apply make-struct-instance gx#export-set::t _$args15896_)))
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
    (lambda _$args15893_
      (apply make-class-instance gx#import-expander::t _$args15893_)))
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
    (lambda _$args15890_
      (apply make-class-instance gx#export-expander::t _$args15890_)))
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
    (lambda _$args15887_
      (apply make-class-instance gx#import-export-expander::t _$args15887_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15881_ _id15882_ _super15883_ _ns15884_ _path15885_)
      (struct-instance-init!
       _self15881_
       _id15882_
       (make-table 'test: eq?)
       _super15883_
       '#f
       '#f
       _ns15884_
       _path15885_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self15725_ _ctx15726_ _root15727_)
        (let ((_super15735_
               (let ((_$e15729_ _root15727_))
                 (if _$e15729_
                     _$e15729_
                     (let ((_$e15732_ (gx#core-context-root__0)))
                       (if _$e15732_
                           _$e15732_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx15726_
              (let ((_id15738_
                     (##structure-ref
                      _ctx15726_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path15739_
                     (##structure-ref _ctx15726_ '7 gx#module-context::t '#f))
                    (_in15740_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx15726_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e15741_
                     (##make-promise (lambda () (gx#eval-module _ctx15726_)))))
                (begin
                  (struct-instance-init!
                   _self15725_
                   _id15738_
                   (make-table 'test: eq? 'size: (length _in15740_))
                   _super15735_
                   '#f
                   '#f
                   _path15739_
                   _in15740_
                   _e15741_)
                  (for-each
                   (lambda (_g1574215744_)
                     (gx#core-bind-weak-import!__% _g1574215744_ _self15725_))
                   _in15740_)))
              (struct-instance-init!
               _self15725_
               '#f
               (make-table 'test: eq?)
               _super15735_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self15750_ _ctx15751_)
          (let ((_root15753_ '#f))
            (gx#prelude-context:::init!__%
             _self15750_
             _ctx15751_
             _root15753_))))
      (define gx#prelude-context:::init!
        (lambda _g15945_
          (let ((_g15944_ (length _g15945_)))
            (cond ((##fx= _g15944_ 2)
                   (apply gx#prelude-context:::init!__0 _g15945_))
                  ((##fx= _g15944_ 3)
                   (apply gx#prelude-context:::init!__% _g15945_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g15945_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15599_ _e15600_)
      (struct-instance-init!
       _self15599_
       _e15600_
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
    (lambda (_g1522515228_ _g1522615230_)
      (gx#core-apply-user-expander__%
       _g1522515228_
       _g1522615230_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1509615099_ _g1509715101_)
      (gx#core-apply-user-expander__%
       _g1509615099_
       _g1509715101_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx14967_)
      (let* ((_path14969_
              (##structure-ref _ctx14967_ '7 gx#module-context::t '#f))
             (_path14971_
              (if (pair? _path14969_) (last _path14969_) _path14969_)))
        (if (string? _path14971_) _path14971_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path14943_ _reload?14944_ _eval?14945_)
        (let ((_ctx14947_
               ((gx#current-expander-module-import)
                _path14943_
                _reload?14944_)))
          (begin
            (if (if _ctx14947_ _eval?14945_ '#f)
                (gx#eval-module _ctx14947_)
                '#!void)
            _ctx14947_))))
    (begin
      (define gx#import-module__0
        (lambda (_path14952_)
          (let* ((_reload?14954_ '#f) (_eval?14956_ '#f))
            (gx#import-module__% _path14952_ _reload?14954_ _eval?14956_))))
      (define gx#import-module__1
        (lambda (_path14958_ _reload?14959_)
          (let ((_eval?14961_ '#f))
            (gx#import-module__% _path14958_ _reload?14959_ _eval?14961_))))
      (define gx#import-module
        (lambda _g15947_
          (let ((_g15946_ (length _g15947_)))
            (cond ((##fx= _g15946_ 1) (apply gx#import-module__0 _g15947_))
                  ((##fx= _g15946_ 2) (apply gx#import-module__1 _g15947_))
                  ((##fx= _g15946_ 3) (apply gx#import-module__% _g15947_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g15947_))))))))
  (define gx#eval-module
    (lambda (_mod14940_) ((gx#current-expander-module-eval) _mod14940_)))
  (define gx#core-eval-module
    (lambda (_obj14925_)
      (letrec ((_force-e14927_
                (lambda (_getf14936_ _e14937_)
                  (call-with-parameters
                   (lambda () (force (_getf14936_ _e14937_)))
                   gx#current-expander-context
                   _e14937_
                   gx#current-expander-phi
                   '0))))
        (let _recur14929_ ((_e14931_ _obj14925_))
          (if (##structure-instance-of? _e14931_ 'gx#module-context::t)
              (begin
                (let ((_$e14933_ (gx#core-context-prelude__% _e14931_)))
                  (if _$e14933_ (_recur14929_ _$e14933_) '#!void))
                (_force-e14927_ gx#module-context-e _e14931_))
              (if (##structure-instance-of? _e14931_ 'gx#prelude-context::t)
                  (_force-e14927_ gx#prelude-context-e _e14931_)
                  (if (gx#stx-string? _e14931_)
                      (_recur14929_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14931_)))
                      (if (gx#core-library-module-path? _e14931_)
                          (_recur14929_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14931_)))
                          (error '"Cannot eval module" _obj14925_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx14908_)
        (let _lp14910_ ((_e14912_ _ctx14908_))
          (if (let ((_$e14914_
                     (##structure-instance-of?
                      _e14912_
                      'gx#module-context::t)))
                (if _$e14914_
                    _$e14914_
                    (##structure-instance-of? _e14912_ 'gx#local-context::t)))
              (_lp14910_
               (##unchecked-structure-ref _e14912_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e14912_ 'gx#prelude-context::t)
                  _e14912_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx14921_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx14921_))))
      (define gx#core-context-prelude
        (lambda _g15949_
          (let ((_g15948_ (length _g15949_)))
            (cond ((##fx= _g15948_ 0)
                   (apply gx#core-context-prelude__0 _g15949_))
                  ((##fx= _g15948_ 1)
                   (apply gx#core-context-prelude__% _g15949_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g15949_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14898_)
      (let* ((_ht14900_ (gx#current-expander-module-registry))
             (_$e14902_ (table-ref _ht14900_ _ctx14898_ '#f)))
        (if _$e14902_
            (values _$e14902_)
            (let ((_pre14905_
                   (let ((__obj15940 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj15940 _ctx14898_)
                       __obj15940))))
              (begin
                (table-set! _ht14900_ _ctx14898_ _pre14905_)
                _pre14905_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath14779_ _reload?14780_)
        (letrec ((_import-source14782_
                  (lambda (_path14867_)
                    (begin
                      (if (member _path14867_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path14867_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g15950_ (gx#core-read-module _path14867_)))
                           (begin
                             (let ((_g15951_
                                    (if (##values? _g15950_)
                                        (##vector-length _g15950_)
                                        1)))
                               (if (not (##fx= _g15951_ 4))
                                   (error "Context expects 4 values"
                                          _g15951_)))
                             (let ((_pre14870_ (##vector-ref _g15950_ 0))
                                   (_id14871_ (##vector-ref _g15950_ 1))
                                   (_ns14872_ (##vector-ref _g15950_ 2))
                                   (_body14873_ (##vector-ref _g15950_ 3)))
                               (let* ((_prelude14878_
                                       (if (##structure-instance-of?
                                            _pre14870_
                                            'gx#prelude-context::t)
                                           _pre14870_
                                           (if (##structure-instance-of?
                                                _pre14870_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre14870_)
                                               (if (string? _pre14870_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre14870_))
                                                   (if (not _pre14870_)
                                                       (let ((_$e14875_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e14875_
                                                             _$e14875_
                                                             (let ((__obj15941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj15941 '#f)
                         __obj15941))))
               (error '"Cannot import module; unknown prelude"
                      _rpath14779_
                      _pre14870_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx14880_
                                       (let ((__obj15942
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj15942
                                            _id14871_
                                            _prelude14878_
                                            _ns14872_
                                            _path14867_)
                                           __obj15942)))
                                      (_body14882_
                                       (gx#core-expand-module-begin
                                        _body14873_
                                        _ctx14880_))
                                      (_body14884_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body14882_)
                                        _path14867_
                                        _ctx14880_
                                        '())))
                                 (begin
                                   (##unchecked-structure-set!
                                    _ctx14880_
                                    (##make-promise
                                     (lambda () (gx#eval-syntax* _body14884_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##unchecked-structure-set!
                                    _ctx14880_
                                    _body14884_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path14867_
                                    _ctx14880_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id14871_
                                    _ctx14880_)
                                   _ctx14880_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path14867_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule14783_
                  (lambda (_rpath14795_)
                    (let* ((_rpath1479614803_ _rpath14795_)
                           (_E1479814807_
                            (lambda ()
                              (error '"No clause matching" _rpath1479614803_)))
                           (_K1479914855_
                            (lambda (_refs14810_ _origin14811_)
                              (let ((_ctx14813_
                                     (if _origin14811_
                                         (gx#core-import-module__%
                                          _origin14811_
                                          _reload?14780_)
                                         (gx#current-expander-context))))
                                (let _lp14815_ ((_rest14817_ _refs14810_)
                                                (_ctx14818_ _ctx14813_))
                                  (let* ((_rest1481914827_ _rest14817_)
                                         (_else1482114835_
                                          (lambda () _ctx14818_))
                                         (_K1482314843_
                                          (lambda (_rest14838_ _id14839_)
                                            (let ((_bind14841_
                                                   (gx#resolve-identifier__%
                                                    _id14839_
                                                    '0
                                                    _ctx14818_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind14841_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##unchecked-structure-ref
                                                        _bind14841_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp14815_
                                                   _rest14838_
                                                   (##unchecked-structure-ref
                                                    _bind14841_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath14795_
                                                         _id14839_
                                                         _bind14841_))))))
                                    (if (##pair? _rest1481914827_)
                                        (let ((_hd1482414846_
                                               (##car _rest1481914827_))
                                              (_tl1482514848_
                                               (##cdr _rest1481914827_)))
                                          (let* ((_id14851_ _hd1482414846_)
                                                 (_rest14853_ _tl1482514848_))
                                            (_K1482314843_
                                             _rest14853_
                                             _id14851_)))
                                        (_else1482114835_))))))))
                      (if (##pair? _rpath1479614803_)
                          (let ((_hd1480014858_ (##car _rpath1479614803_))
                                (_tl1480114860_ (##cdr _rpath1479614803_)))
                            (let* ((_origin14863_ _hd1480014858_)
                                   (_refs14865_ _tl1480114860_))
                              (_K1479914855_ _refs14865_ _origin14863_)))
                          (_E1479814807_))))))
          (let ((_$e14785_
                 (if (not _reload?14780_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath14779_
                      '#f)
                     '#f)))
            (if _$e14785_
                (values _$e14785_)
                (if (list? _rpath14779_)
                    (_import-submodule14783_ _rpath14779_)
                    (if (gx#core-library-module-path? _rpath14779_)
                        (let ((_ctx14788_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath14779_)
                                _reload?14780_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath14779_
                             _ctx14788_)
                            _ctx14788_))
                        (let* ((_npath14790_ (path-normalize _rpath14779_))
                               (_$e14792_
                                (if (not _reload?14780_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath14790_
                                     '#f)
                                    '#f)))
                          (if _$e14792_
                              (values _$e14792_)
                              (_import-source14782_ _npath14790_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath14891_)
          (let ((_reload?14893_ '#f))
            (gx#core-import-module__% _rpath14891_ _reload?14893_))))
      (define gx#core-import-module
        (lambda _g15953_
          (let ((_g15952_ (length _g15953_)))
            (cond ((##fx= _g15952_ 1)
                   (apply gx#core-import-module__0 _g15953_))
                  ((##fx= _g15952_ 2)
                   (apply gx#core-import-module__% _g15953_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g15953_))))))))
  (define gx#core-read-module
    (lambda (_path14773_)
      (with-exception-catcher
       (lambda (_exn14775_)
         (if (if (datum-parsing-exception? _exn14775_)
                 (eq? (datum-parsing-exception-filepos _exn14775_) '0)
                 '#f)
             (gx#core-read-module/lang _path14773_)
             (raise _exn14775_)))
       (lambda () (gx#core-read-module/sexp _path14773_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14633_)
      (let _lp14635_ ((_body14637_ (read-syntax-from-file _path14633_))
                      (_pre14638_ '#f)
                      (_ns14639_ '#f)
                      (_pkg14640_ '#f))
        (let* ((_e1464114665_ _body14637_)
               (_E1465714687_
                (lambda ()
                  (let ((_g15954_
                         (if _pkg14640_
                             (values _pre14638_ _ns14639_ _pkg14640_)
                             (gx#core-read-module-package
                              _path14633_
                              _pre14638_
                              _ns14639_))))
                    (begin
                      (let ((_g15955_
                             (if (##values? _g15954_)
                                 (##vector-length _g15954_)
                                 1)))
                        (if (not (##fx= _g15955_ 3))
                            (error "Context expects 3 values" _g15955_)))
                      (let ((_pre14669_ (##vector-ref _g15954_ 0))
                            (_ns14670_ (##vector-ref _g15954_ 1))
                            (_pkg14671_ (##vector-ref _g15954_ 2)))
                        (let* ((_prelude14673_
                                (if (gx#core-bound-module-prelude? _pre14669_)
                                    (gx#syntax-local-e__0 _pre14669_)
                                    (if (gx#core-library-module-path?
                                         _pre14669_)
                                        (gx#core-resolve-library-module-path
                                         _pre14669_)
                                        (if (gx#stx-string? _pre14669_)
                                            (gx#core-resolve-module-path__%
                                             _pre14669_
                                             _path14633_)
                                            (gx#stx-e _pre14669_)))))
                               (_path-id14675_
                                (gx#core-module-path->namespace _path14633_))
                               (_pkg-id14677_
                                (if _pkg14671_
                                    (string-append
                                     _pkg14671_
                                     '"/"
                                     _path-id14675_)
                                    _path-id14675_))
                               (_module-id14679_
                                (string->symbol _pkg-id14677_))
                               (_module-ns14684_
                                (let ((_$e14681_ _ns14670_))
                                  (if _$e14681_ _$e14681_ _pkg-id14677_))))
                          (values _prelude14673_
                                  _module-id14679_
                                  _module-ns14684_
                                  _body14637_)))))))
               (_E1465014716_
                (lambda ()
                  (if (gx#stx-pair? _e1464114665_)
                      (let ((_e1465814691_ (gx#syntax-e _e1464114665_)))
                        (let ((_hd1465914694_ (##car _e1465814691_))
                              (_tl1466014696_ (##cdr _e1465814691_)))
                          (if (eq? (gx#stx-e _hd1465914694_) 'package:)
                              (if (gx#stx-pair? _tl1466014696_)
                                  (let ((_e1466114699_
                                         (gx#syntax-e _tl1466014696_)))
                                    (let ((_hd1466214702_
                                           (##car _e1466114699_))
                                          (_tl1466314704_
                                           (##cdr _e1466114699_)))
                                      (let* ((_pkg14707_ _hd1466214702_)
                                             (_rest14709_ _tl1466314704_))
                                        (if '#t
                                            (let ((_pkg14714_
                                                   (if (gx#identifier?
                                                        _pkg14707_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14707_))
                                                       (if (let ((_$e14711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg14707_)))
                     (if _$e14711_ _$e14711_ (gx#stx-false? _pkg14707_)))
                   (gx#stx-e _pkg14707_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg14707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14635_
                                               _rest14709_
                                               _pre14638_
                                               _ns14639_
                                               _pkg14714_))
                                            (_E1465714687_)))))
                                  (_E1465714687_))
                              (_E1465714687_))))
                      (_E1465714687_))))
               (_E1464314745_
                (lambda ()
                  (if (gx#stx-pair? _e1464114665_)
                      (let ((_e1465114720_ (gx#syntax-e _e1464114665_)))
                        (let ((_hd1465214723_ (##car _e1465114720_))
                              (_tl1465314725_ (##cdr _e1465114720_)))
                          (if (eq? (gx#stx-e _hd1465214723_) 'namespace:)
                              (if (gx#stx-pair? _tl1465314725_)
                                  (let ((_e1465414728_
                                         (gx#syntax-e _tl1465314725_)))
                                    (let ((_hd1465514731_
                                           (##car _e1465414728_))
                                          (_tl1465614733_
                                           (##cdr _e1465414728_)))
                                      (let* ((_ns14736_ _hd1465514731_)
                                             (_rest14738_ _tl1465614733_))
                                        (if '#t
                                            (let ((_ns14743_
                                                   (if (gx#identifier?
                                                        _ns14736_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14736_))
                                                       (if (let ((_$e14740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns14736_)))
                     (if _$e14740_ _$e14740_ (gx#stx-false? _ns14736_)))
                   (gx#stx-e _ns14736_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns14736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14635_
                                               _rest14738_
                                               _pre14638_
                                               _ns14743_
                                               _pkg14640_))
                                            (_E1465014716_)))))
                                  (_E1465014716_))
                              (_E1465014716_))))
                      (_E1465014716_))))
               (_E1464214769_
                (lambda ()
                  (if (gx#stx-pair? _e1464114665_)
                      (let ((_e1464414749_ (gx#syntax-e _e1464114665_)))
                        (let ((_hd1464514752_ (##car _e1464414749_))
                              (_tl1464614754_ (##cdr _e1464414749_)))
                          (if (eq? (gx#stx-e _hd1464514752_) 'prelude:)
                              (if (gx#stx-pair? _tl1464614754_)
                                  (let ((_e1464714757_
                                         (gx#syntax-e _tl1464614754_)))
                                    (let ((_hd1464814760_
                                           (##car _e1464714757_))
                                          (_tl1464914762_
                                           (##cdr _e1464714757_)))
                                      (let* ((_prelude14765_ _hd1464814760_)
                                             (_rest14767_ _tl1464914762_))
                                        (if '#t
                                            (_lp14635_
                                             _rest14767_
                                             _prelude14765_
                                             _ns14639_
                                             _pkg14640_)
                                            (_E1464314745_)))))
                                  (_E1464314745_))
                              (_E1464314745_))))
                      (_E1464314745_)))))
          (_E1464214769_)))))
  (define gx#core-read-module/lang
    (lambda (_path14460_)
      (letrec ((_default-read-module-body14462_
                (lambda (_inp14625_)
                  (let _lp14627_ ((_body14629_ '()))
                    (let ((_next14631_ (read-syntax _inp14625_)))
                      (if (eof-object? _next14631_)
                          (reverse _body14629_)
                          (_lp14627_ (cons _next14631_ _body14629_)))))))
               (_read-body14463_
                (lambda (_inp14544_
                         _pre14545_
                         _ns14546_
                         _pkg14547_
                         _args14548_)
                  (let ((_g15956_
                         (if _pkg14547_
                             (values _pre14545_ _ns14546_ _pkg14547_)
                             (gx#core-read-module-package
                              _path14460_
                              _pre14545_
                              _ns14546_))))
                    (begin
                      (let ((_g15957_
                             (if (##values? _g15956_)
                                 (##vector-length _g15956_)
                                 1)))
                        (if (not (##fx= _g15957_ 3))
                            (error "Context expects 3 values" _g15957_)))
                      (let ((_pre14550_ (##vector-ref _g15956_ 0))
                            (_ns14551_ (##vector-ref _g15956_ 1))
                            (_pkg14552_ (##vector-ref _g15956_ 2)))
                        (let* ((_prelude14554_
                                (gx#import-module__0 _pre14550_))
                               (_read-module-body14608_
                                (let ((_$e14600_
                                       (find (lambda (_e1455514557_)
                                               (let* ((_g1455914569_
                                                       _e1455514557_)
                                                      (_else1456114577_
                                                       (lambda () '#f))
                                                      (_K1456314581_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1455914569_
                                                      'gx#module-export::t)
                                                     (let* ((_e1456414584_
                                                             (##vector-ref
                                                              _g1455914569_
                                                              '1))
                                                            (_e1456514587_
                                                             (##vector-ref
                                                              _g1455914569_
                                                              '2))
                                                            (_e1456614590_
                                                             (##vector-ref
                                                              _g1455914569_
                                                              '3)))
                                                       (if (##eq? _e1456614590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1456714593_ (##vector-ref _g1455914569_ '4)))
                     (if ((lambda (_g1459514597_)
                            (eq? _g1459514597_ 'read-module-body))
                          _e1456714593_)
                         (_K1456314581_)
                         (_else1456114577_)))
                   (_else1456114577_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1456114577_))))
                                             (##unchecked-structure-ref
                                              _prelude14554_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14600_
                                      ((lambda (_xport14603_)
                                         (let ((_proc14606_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14603_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14606_)
                                               _proc14606_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14460_
                                                _pre14550_
                                                _proc14606_))))
                                       _$e14600_)
                                      _default-read-module-body14462_)))
                               (_path-id14610_
                                (gx#core-module-path->namespace _path14460_))
                               (_pkg-id14612_
                                (if _pkg14552_
                                    (string-append
                                     _pkg14552_
                                     '"/"
                                     _path-id14610_)
                                    _path-id14610_))
                               (_module-id14614_
                                (string->symbol _pkg-id14612_))
                               (_module-ns14619_
                                (let ((_$e14616_ _ns14551_))
                                  (if _$e14616_ _$e14616_ _pkg-id14612_)))
                               (_body14622_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14608_ _inp14544_))
                                 gx#current-module-reader-path
                                 _path14460_
                                 gx#current-module-reader-args
                                 _args14548_)))
                          (values _prelude14554_
                                  _module-id14614_
                                  _module-ns14619_
                                  _body14622_)))))))
               (_string-e14464_
                (lambda (_obj14541_ _what14542_)
                  (if (string? _obj14541_)
                      _obj14541_
                      (if (symbol? _obj14541_)
                          (symbol->string _obj14541_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14542_)
                           _path14460_
                           _obj14541_)))))
               (_read-lang-args14465_
                (lambda (_inp14496_ _args14497_)
                  (let* ((_args1449814506_ _args14497_)
                         (_else1450014514_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14460_)))
                         (_K1450214529_
                          (lambda (_args14517_ _prelude14518_)
                            (let* ((_pkg14520_ (pgetq 'package: _args14517_))
                                   (_pkg14522_
                                    (if _pkg14520_
                                        (_string-e14464_ _pkg14520_ '"package")
                                        '#f))
                                   (_ns14524_ (pgetq 'namespace: _args14517_))
                                   (_ns14526_
                                    (if _ns14524_
                                        (_string-e14464_
                                         _ns14524_
                                         '"namespace")
                                        '#f)))
                              (_read-body14463_
                               _inp14496_
                               _prelude14518_
                               _ns14526_
                               _pkg14522_
                               _args14517_)))))
                    (if (##pair? _args1449814506_)
                        (let ((_hd1450314532_ (##car _args1449814506_))
                              (_tl1450414534_ (##cdr _args1449814506_)))
                          (let* ((_prelude14537_ _hd1450314532_)
                                 (_args14539_ _tl1450414534_))
                            (_K1450214529_ _args14539_ _prelude14537_)))
                        (_else1450014514_)))))
               (_read-lang14466_
                (lambda (_inp14471_)
                  (let* ((_head14473_ (read-line _inp14471_))
                         (_$e14475_ (string-index _head14473_ '#\space)))
                    (if _$e14475_
                        ((lambda (_ix14478_)
                           (let ((_lang14480_
                                  (substring _head14473_ '0 _ix14478_)))
                             (if (equal? _lang14480_ '"#lang")
                                 (let* ((_rest14482_
                                         (substring
                                          _head14473_
                                          (fx+ _ix14478_ '1)
                                          (string-length _head14473_)))
                                        (_args14493_
                                         (with-exception-catcher
                                          (lambda (_g1448314485_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14460_
                                             _g1448314485_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14482_
                                             (lambda (_g1448814490_)
                                               (read-all
                                                _g1448814490_
                                                read)))))))
                                   (_read-lang-args14465_
                                    _inp14471_
                                    _args14493_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14460_))))
                         _$e14475_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14460_)))))
               (_read-e14467_
                (lambda (_inp14469_)
                  (if (eq? (peek-char _inp14469_) '#\#)
                      (_read-lang14466_ _inp14469_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14460_)))))
        (call-with-input-file _path14460_ _read-e14467_))))
  (define gx#core-read-module-package
    (lambda (_path14414_ _pre14415_ _ns14416_)
      (letrec ((_string-e14418_
                (lambda (_e14458_)
                  (if (symbol? _e14458_)
                      (symbol->string _e14458_)
                      (if (string? _e14458_)
                          _e14458_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14458_))))))
        (let _lp14420_ ((_dir14422_ (path-directory _path14414_))
                        (_pkg-path14423_ '()))
          (let ((_gerbil.pkg14425_ (path-expand '"gerbil.pkg" _dir14422_)))
            (if (file-exists? _gerbil.pkg14425_)
                (let ((_plist14427_
                       (gx#core-library-package-plist__% _dir14422_ '#t)))
                  (if (null? _plist14427_)
                      (let ((_pkg14429_
                             (if (not (null? _pkg-path14423_))
                                 (string-join _pkg-path14423_ '"/")
                                 '#f)))
                        (values _pre14415_ _ns14416_ _pkg14429_))
                      (if (list? _plist14427_)
                          (let* ((_root14431_ (pgetq 'package: _plist14427_))
                                 (_pkg14435_
                                  (let ((_pkg-path14433_
                                         (if _root14431_
                                             (cons (_string-e14418_
                                                    _root14431_)
                                                   _pkg-path14423_)
                                             _pkg-path14423_)))
                                    (if (not (null? _pkg-path14433_))
                                        (string-join _pkg-path14433_ '"/")
                                        '#f)))
                                 (_ns14442_
                                  (let ((_ns14440_
                                         (let ((_$e14437_ _ns14416_))
                                           (if _$e14437_
                                               _$e14437_
                                               (pgetq 'namespace:
                                                      _plist14427_)))))
                                    (if _ns14440_
                                        (_string-e14418_ _ns14440_)
                                        '#f)))
                                 (_pre14447_
                                  (let ((_$e14444_ _pre14415_))
                                    (if _$e14444_
                                        _$e14444_
                                        (pgetq 'prelude: _plist14427_)))))
                            (values _pre14447_ _ns14442_ _pkg14435_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14427_))))
                (let ((_dir*14450_
                       (path-strip-trailing-directory-separator _dir14422_)))
                  (if (let ((_$e14452_ (string-empty? _dir*14450_)))
                        (if _$e14452_
                            _$e14452_
                            (equal? _dir14422_ _dir*14450_)))
                      (values _pre14415_ _ns14416_ '#f)
                      (let ((_xpath14455_ (path-strip-directory _dir*14450_))
                            (_xdir14456_ (path-directory _dir*14450_)))
                        (_lp14420_
                         _xdir14456_
                         (cons _xpath14455_ _pkg-path14423_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14412_)
      (path-strip-extension (path-strip-directory _path14412_))))
  (define gx#core-module-path->id
    (lambda (_path14410_)
      (string->symbol (gx#core-module-path->namespace _path14410_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path14389_ _rel14390_)
        (let* ((_path14392_ (gx#stx-e _stx-path14389_))
               (_path14394_
                (if (string-empty? (path-extension _path14392_))
                    (string-append _path14392_ '".ss")
                    _path14392_)))
          (gx#core-resolve-path__%
           _path14394_
           (let ((_$e14397_ (gx#stx-source _stx-path14389_)))
             (if _$e14397_ _$e14397_ _rel14390_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path14403_)
          (let ((_rel14405_ '#f))
            (gx#core-resolve-module-path__% _stx-path14403_ _rel14405_))))
      (define gx#core-resolve-module-path
        (lambda _g15959_
          (let ((_g15958_ (length _g15959_)))
            (cond ((##fx= _g15958_ 1)
                   (apply gx#core-resolve-module-path__0 _g15959_))
                  ((##fx= _g15958_ 2)
                   (apply gx#core-resolve-module-path__% _g15959_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g15959_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14316_)
      (let* ((_spath14318_ (symbol->string (gx#stx-e _libpath14316_)))
             (_spath14320_
              (substring _spath14318_ '1 (string-length _spath14318_)))
             (_ext14322_ (path-extension _spath14320_))
             (_ssi14324_
              (if (string-empty? _ext14322_)
                  (string-append _spath14320_ '".ssi")
                  (string-append (path-strip-extension _spath14320_) '".ssi")))
             (_src14326_
              (if (string-empty? _ext14322_)
                  (string-append _spath14320_ '".ss")
                  _spath14320_)))
        (let _lp14329_ ((_rest14331_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1433214341_ _rest14331_)
                 (_E1433514345_
                  (lambda () (error '"No clause matching" _rest1433214341_))))
            (let ((_K1433714376_
                   (lambda (_rest14356_ _dir14357_)
                     (letrec ((_resolve14359_
                               (lambda (_ssi14369_ _src14370_)
                                 (let ((_compiled-path14372_
                                        (path-expand _ssi14369_ _dir14357_)))
                                   (if (file-exists? _compiled-path14372_)
                                       (path-normalize _compiled-path14372_)
                                       (let ((_src-path14374_
                                              (path-expand
                                               _src14370_
                                               _dir14357_)))
                                         (if (file-exists? _src-path14374_)
                                             (path-normalize _src-path14374_)
                                             (_lp14329_ _rest14356_))))))))
                       (let ((_$e14361_
                              (gx#core-library-package-path-prefix
                               _dir14357_)))
                         (if _$e14361_
                             ((lambda (_prefix14364_)
                                (if (string-prefix? _spath14320_ _prefix14364_)
                                    (let ((_ssi14366_
                                           (substring
                                            _ssi14324_
                                            (string-length _prefix14364_)
                                            (string-length _ssi14324_)))
                                          (_src14367_
                                           (substring
                                            _src14326_
                                            (string-length _prefix14364_)
                                            (string-length _src14326_))))
                                      (_resolve14359_ _ssi14366_ _src14367_))
                                    (_lp14329_ _rest14356_)))
                              _$e14361_)
                             (_resolve14359_ _ssi14324_ _src14326_))))))
                  (_K1433614350_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14316_))))
              (let ((_try-match1433414353_
                     (lambda ()
                       (if (##null? _rest1433214341_)
                           (_K1433614350_)
                           (_E1433514345_)))))
                (if (##pair? _rest1433214341_)
                    (let ((_tl1433914381_ (##cdr _rest1433214341_))
                          (_hd1433814379_ (##car _rest1433214341_)))
                      (let ((_dir14384_ _hd1433814379_)
                            (_rest14386_ _tl1433914381_))
                        (_K1433714376_ _rest14386_ _dir14384_)))
                    (_try-match1433414353_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14309_)
      (let ((_$e14311_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14309_))))
        (if _$e14311_
            ((lambda (_pkg14314_)
               (string-append (symbol->string _pkg14314_) '"/"))
             _$e14311_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir14281_ _exists?14282_)
        (let* ((_cache14284_ (gx#core-library-package-cache))
               (_$e14286_ (table-ref _cache14284_ _dir14281_ '#f)))
          (if _$e14286_
              (values _$e14286_)
              (let* ((_gerbil.pkg14289_ (path-expand '"gerbil.pkg" _dir14281_))
                     (_plist14296_
                      (if (let ((_$e14291_ _exists?14282_))
                            (if _$e14291_
                                _$e14291_
                                (file-exists? _gerbil.pkg14289_)))
                          (let ((_e14294_
                                 (call-with-input-file
                                  _gerbil.pkg14289_
                                  read)))
                            (if (eof-object? _e14294_)
                                '()
                                (if (list? _e14294_)
                                    _e14294_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14289_
                                     _e14294_))))
                          '())))
                (begin
                  (table-set! _cache14284_ _dir14281_ _plist14296_)
                  _plist14296_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir14302_)
          (let ((_exists?14304_ '#f))
            (gx#core-library-package-plist__% _dir14302_ _exists?14304_))))
      (define gx#core-library-package-plist
        (lambda _g15961_
          (let ((_g15960_ (length _g15961_)))
            (cond ((##fx= _g15960_ 1)
                   (apply gx#core-library-package-plist__0 _g15961_))
                  ((##fx= _g15960_ 2)
                   (apply gx#core-library-package-plist__% _g15961_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g15961_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14275_ (gx#current-expander-module-library-package-cache)))
        (if _$e14275_
            (values _$e14275_)
            (let ((_cache14278_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache14278_)
                _cache14278_))))))
  (define gx#core-library-module-path?
    (lambda (_stx14272_) (gx#core-special-module-path? _stx14272_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14267_ _char14268_)
      (if (gx#identifier? _stx14267_)
          (if (interned-symbol? (gx#stx-e _stx14267_))
              (let ((_str14270_ (symbol->string (gx#stx-e _stx14267_))))
                (if (fx> (string-length _str14270_) '1)
                    (eq? (string-ref _str14270_ '0) _char14268_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14261_)
      (gx#core-bound-identifier?__%
       _stx14261_
       (lambda (_g1426214264_)
         (gx#expander-binding?__% _g1426214264_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14255_)
      (gx#core-bound-identifier?__%
       _stx14255_
       (lambda (_g1425614258_)
         (gx#expander-binding?__% _g1425614258_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14242_)
      (letrec ((_module-prelude?14244_
                (lambda (_e14250_)
                  (let ((_$e14252_
                         (##structure-instance-of?
                          _e14250_
                          'gx#module-context::t)))
                    (if _$e14252_
                        _$e14252_
                        (##structure-instance-of?
                         _e14250_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14242_
         (lambda (_g1424514247_)
           (gx#expander-binding?__% _g1424514247_ _module-prelude?14244_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in14171_ _ctx14172_ _force-weak?14173_)
        (begin
          (declare (not safe))
          (let* ((_in1417514184_ _in14171_)
                 (_E1417714188_
                  (lambda () (error '"No clause matching" _in1417514184_)))
                 (_K1417814201_
                  (lambda (_weak?14191_ _phi14192_ _key14193_ _source14194_)
                    (gx#core-bind!__%
                     _key14193_
                     (let ((_e14196_
                            (gx#core-resolve-module-export _source14194_)))
                       (##structure
                        gx#import-binding::t
                        (##unchecked-structure-ref
                         _e14196_
                         '1
                         gx#binding::t
                         '#f)
                        _key14193_
                        _phi14192_
                        _e14196_
                        (##unchecked-structure-ref
                         _source14194_
                         '1
                         gx#module-export::t
                         '#f)
                        (let ((_$e14198_ _force-weak?14173_))
                          (if _$e14198_ _$e14198_ _weak?14191_))))
                     gx#core-context-rebind?
                     _phi14192_
                     _ctx14172_))))
            (if (##structure-direct-instance-of?
                 _in1417514184_
                 'gx#module-import::t)
                (let* ((_e1417914204_ (##vector-ref _in1417514184_ '1))
                       (_source14207_ _e1417914204_)
                       (_e1418014209_ (##vector-ref _in1417514184_ '2))
                       (_key14212_ _e1418014209_)
                       (_e1418114214_ (##vector-ref _in1417514184_ '3))
                       (_phi14217_ _e1418114214_)
                       (_e1418214219_ (##vector-ref _in1417514184_ '4))
                       (_weak?14222_ _e1418214219_))
                  (_K1417814201_
                   _weak?14222_
                   _phi14217_
                   _key14212_
                   _source14207_))
                (_E1417714188_))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in14227_)
          (let* ((_ctx14229_ (gx#current-expander-context))
                 (_force-weak?14231_ '#f))
            (gx#core-bind-import!__%
             _in14227_
             _ctx14229_
             _force-weak?14231_))))
      (define gx#core-bind-import!__1
        (lambda (_in14233_ _ctx14234_)
          (let ((_force-weak?14236_ '#f))
            (gx#core-bind-import!__%
             _in14233_
             _ctx14234_
             _force-weak?14236_))))
      (define gx#core-bind-import!
        (lambda _g15963_
          (let ((_g15962_ (length _g15963_)))
            (cond ((##fx= _g15962_ 1) (apply gx#core-bind-import!__0 _g15963_))
                  ((##fx= _g15962_ 2) (apply gx#core-bind-import!__1 _g15963_))
                  ((##fx= _g15962_ 3) (apply gx#core-bind-import!__% _g15963_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g15963_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in14157_ _ctx14158_)
        (gx#core-bind-import!__% _in14157_ _ctx14158_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in14163_)
          (let ((_ctx14165_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in14163_ _ctx14165_))))
      (define gx#core-bind-weak-import!
        (lambda _g15965_
          (let ((_g15964_ (length _g15965_)))
            (cond ((##fx= _g15964_ 1)
                   (apply gx#core-bind-weak-import!__0 _g15965_))
                  ((##fx= _g15964_ 2)
                   (apply gx#core-bind-weak-import!__% _g15965_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g15965_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out14048_)
      (letrec ((_subst14050_
                (lambda (_key14096_)
                  (let* ((_key1409714105_ _key14096_)
                         (_else1409914113_ (lambda () _key14096_))
                         (_K1410114144_
                          (lambda (_mark14116_ _id14117_)
                            (let* ((_mark1411814124_ _mark14116_)
                                   (_E1412014128_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1411814124_)))
                                   (_K1412114136_
                                    (lambda (_subst14131_)
                                      (let ((_$e14133_
                                             (if _subst14131_
                                                 (table-ref
                                                  _subst14131_
                                                  _id14117_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14133_
                                            _$e14133_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14096_))))))
                              (if (##structure-instance-of?
                                   _mark1411814124_
                                   'gx#expander-mark::t)
                                  (let* ((_e1412214139_
                                          (##vector-ref _mark1411814124_ '1))
                                         (_subst14142_ _e1412214139_))
                                    (_K1412114136_ _subst14142_))
                                  (_E1412014128_))))))
                    (if (##pair? _key1409714105_)
                        (let ((_hd1410214147_ (##car _key1409714105_))
                              (_tl1410314149_ (##cdr _key1409714105_)))
                          (let* ((_id14152_ _hd1410214147_)
                                 (_mark14154_ _tl1410314149_))
                            (_K1410114144_ _mark14154_ _id14152_)))
                        (_else1409914113_))))))
        (let* ((_out1405114061_ _out14048_)
               (_E1405314065_
                (lambda () (error '"No clause matching" _out1405114061_)))
               (_K1405414072_
                (lambda (_phi14068_ _key14069_ _ctx14070_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14070_ _phi14068_)
                   (_subst14050_ _key14069_)))))
          (if (##structure-direct-instance-of?
               _out1405114061_
               'gx#module-export::t)
              (let* ((_e1405514075_ (##vector-ref _out1405114061_ '1))
                     (_ctx14078_ _e1405514075_)
                     (_e1405614080_ (##vector-ref _out1405114061_ '2))
                     (_key14083_ _e1405614080_)
                     (_e1405714085_ (##vector-ref _out1405114061_ '3))
                     (_phi14088_ _e1405714085_)
                     (_e1405814090_ (##vector-ref _out1405114061_ '4))
                     (_e1405914093_ (##vector-ref _out1405114061_ '5)))
                (_K1405414072_ _phi14088_ _key14083_ _ctx14078_))
              (_E1405314065_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out13973_ _rename13974_ _dphi13975_)
        (let* ((_out1397613986_ _out13973_)
               (_E1397813990_
                (lambda () (error '"No clause matching" _out1397613986_)))
               (_K1397914002_
                (lambda (_weak?13993_
                         _name13994_
                         _phi13995_
                         _key13996_
                         _ctx13997_)
                  (##structure
                   gx#module-import::t
                   _out13973_
                   (let ((_$e13999_ _rename13974_))
                     (if _$e13999_ _$e13999_ _name13994_))
                   (fx+ _phi13995_ _dphi13975_)
                   _weak?13993_))))
          (if (##structure-direct-instance-of?
               _out1397613986_
               'gx#module-export::t)
              (let* ((_e1398014005_ (##vector-ref _out1397613986_ '1))
                     (_ctx14008_ _e1398014005_)
                     (_e1398114010_ (##vector-ref _out1397613986_ '2))
                     (_key14013_ _e1398114010_)
                     (_e1398214015_ (##vector-ref _out1397613986_ '3))
                     (_phi14018_ _e1398214015_)
                     (_e1398314020_ (##vector-ref _out1397613986_ '4))
                     (_name14023_ _e1398314020_)
                     (_e1398414025_ (##vector-ref _out1397613986_ '5))
                     (_weak?14028_ _e1398414025_))
                (_K1397914002_
                 _weak?14028_
                 _name14023_
                 _phi14018_
                 _key14013_
                 _ctx14008_))
              (_E1397813990_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out14033_)
          (let* ((_rename14035_ '#f) (_dphi14037_ '0))
            (gx#core-module-export->import__%
             _out14033_
             _rename14035_
             _dphi14037_))))
      (define gx#core-module-export->import__1
        (lambda (_out14039_ _rename14040_)
          (let ((_dphi14042_ '0))
            (gx#core-module-export->import__%
             _out14039_
             _rename14040_
             _dphi14042_))))
      (define gx#core-module-export->import
        (lambda _g15967_
          (let ((_g15966_ (length _g15967_)))
            (cond ((##fx= _g15966_ 1)
                   (apply gx#core-module-export->import__0 _g15967_))
                  ((##fx= _g15966_ 2)
                   (apply gx#core-module-export->import__1 _g15967_))
                  ((##fx= _g15966_ 3)
                   (apply gx#core-module-export->import__% _g15967_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g15967_))))))))
  (define gx#core-expand-module%
    (lambda (_stx13901_)
      (letrec ((_make-context13903_
                (lambda (_id13954_)
                  (let* ((_super13956_ (gx#current-expander-context))
                         (_bind-id13958_ (gx#stx-e _id13954_))
                         (_mod-id13960_
                          (if (##structure-instance-of?
                               _super13956_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super13956_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id13958_)
                              _bind-id13958_))
                         (_ns13962_ (symbol->string _mod-id13960_))
                         (_path13969_
                          (if (##structure-instance-of?
                               _super13956_
                               'gx#module-context::t)
                              (let ((_path13964_
                                     (##unchecked-structure-ref
                                      _super13956_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e13966_ (pair? _path13964_)))
                                      (if _$e13966_
                                          _$e13966_
                                          (null? _path13964_)))
                                    (cons _bind-id13958_ _path13964_)
                                    (if (not _path13964_)
                                        _bind-id13958_
                                        (cons _bind-id13958_
                                              (cons _path13964_ '())))))
                              _bind-id13958_)))
                    (let ((__obj15943 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj15943
                         _mod-id13960_
                         _super13956_
                         _ns13962_
                         _path13969_)
                        __obj15943))))))
        (let* ((_e1390413914_ _stx13901_)
               (_E1390613918_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1390413914_)))
               (_E1390513950_
                (lambda ()
                  (if (gx#stx-pair? _e1390413914_)
                      (let ((_e1390713922_ (gx#syntax-e _e1390413914_)))
                        (let ((_hd1390813925_ (##car _e1390713922_))
                              (_tl1390913927_ (##cdr _e1390713922_)))
                          (if (gx#stx-pair? _tl1390913927_)
                              (let ((_e1391013930_
                                     (gx#syntax-e _tl1390913927_)))
                                (let ((_hd1391113933_ (##car _e1391013930_))
                                      (_tl1391213935_ (##cdr _e1391013930_)))
                                  (let* ((_id13938_ _hd1391113933_)
                                         (_body13940_ _tl1391213935_))
                                    (if (if (gx#identifier? _id13938_)
                                            (gx#stx-list? _body13940_)
                                            '#f)
                                        (let* ((_ctx13942_
                                                (_make-context13903_
                                                 _id13938_))
                                               (_body13944_
                                                (gx#core-expand-module-begin
                                                 _body13940_
                                                 _ctx13942_))
                                               (_body13946_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body13944_)
                                                 (gx#stx-source _stx13901_))))
                                          (begin
                                            (##unchecked-structure-set!
                                             _ctx13942_
                                             (##make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body13946_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx13942_
                                             _body13946_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id13938_
                                             _ctx13942_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id13938_)
                                              _body13946_)
                                             (gx#stx-source _stx13901_))))
                                        (_E1390613918_)))))
                              (_E1390613918_))))
                      (_E1390613918_)))))
          (_E1390513950_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13867_ _ctx13868_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx13871_
                   (gx#core-expand-head (cons '%%begin-module _body13867_)))
                  (_e1387213879_ _stx13871_)
                  (_E1387413883_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx13871_)))
                  (_E1387313897_
                   (lambda ()
                     (if (gx#stx-pair? _e1387213879_)
                         (let ((_e1387513887_ (gx#syntax-e _e1387213879_)))
                           (let ((_hd1387613890_ (##car _e1387513887_))
                                 (_tl1387713892_ (##cdr _e1387513887_)))
                             (if (if (gx#identifier? _hd1387613890_)
                                     (gx#core-identifier=?
                                      _hd1387613890_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body13895_ _tl1387713892_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx13871_)
                                           _body13895_
                                           (gx#core-expand-module-body
                                            _body13895_))
                                       (_E1387413883_)))
                                 (_E1387413883_))))
                         (_E1387413883_)))))
             (_E1387313897_))))
       gx#current-expander-context
       _ctx13868_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13663_)
      (letrec ((_expand-special13665_
                (lambda (_hd13794_ _K13795_ _rest13796_ _r13797_)
                  (let* ((_e1379813815_ _hd13794_)
                         (_E1381013819_
                          (lambda ()
                            (_K13795_
                             _rest13796_
                             (cons (gx#core-expand-top _hd13794_) _r13797_))))
                         (_E1380013831_
                          (lambda ()
                            (if (gx#stx-pair? _e1379813815_)
                                (let ((_e1381113823_
                                       (gx#syntax-e _e1379813815_)))
                                  (let ((_hd1381213826_ (##car _e1381113823_))
                                        (_tl1381313828_ (##cdr _e1381113823_)))
                                    (if (if (gx#identifier? _hd1381213826_)
                                            (gx#core-identifier=?
                                             _hd1381213826_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K13795_
                                             _rest13796_
                                             (cons _hd13794_ _r13797_))
                                            (_E1381013819_))
                                        (_E1381013819_))))
                                (_E1381013819_))))
                         (_E1379913863_
                          (lambda ()
                            (if (gx#stx-pair? _e1379813815_)
                                (let ((_e1380113835_
                                       (gx#syntax-e _e1379813815_)))
                                  (let ((_hd1380213838_ (##car _e1380113835_))
                                        (_tl1380313840_ (##cdr _e1380113835_)))
                                    (if (if (gx#identifier? _hd1380213838_)
                                            (gx#core-identifier=?
                                             _hd1380213838_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1380313840_)
                                            (let ((_e1380413843_
                                                   (gx#syntax-e
                                                    _tl1380313840_)))
                                              (let ((_hd1380513846_
                                                     (##car _e1380413843_))
                                                    (_tl1380613848_
                                                     (##cdr _e1380413843_)))
                                                (let ((_hd-bind13851_
                                                       _hd1380513846_))
                                                  (if (gx#stx-pair?
                                                       _tl1380613848_)
                                                      (let ((_e1380713853_
                                                             (gx#syntax-e
                                                              _tl1380613848_)))
                                                        (let ((_hd1380813856_
                                                               (##car _e1380713853_))
                                                              (_tl1380913858_
                                                               (##cdr _e1380713853_)))
                                                          (let ((_expr13861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1380813856_))
                    (if (gx#stx-null? _tl1380913858_)
                        (if (gx#core-bind-values? _hd-bind13851_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13851_)
                              (_K13795_ _rest13796_ (cons _hd13794_ _r13797_)))
                            (_E1380013831_))
                        (_E1380013831_)))))
              (_E1380013831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1380013831_))
                                        (_E1380013831_))))
                                (_E1380013831_)))))
                    (_E1379913863_))))
               (_expand-body13666_
                (lambda (_rbody13668_)
                  (let _lp13670_ ((_rest13672_ _rbody13668_) (_body13673_ '()))
                    (let* ((_rest1367413682_ _rest13672_)
                           (_else1367613690_ (lambda () _body13673_))
                           (_K1367813782_
                            (lambda (_rest13693_ _hd13694_)
                              (let* ((_e1369513716_ _hd13694_)
                                     (_E1371113720_
                                      (lambda ()
                                        (_lp13670_
                                         _rest13693_
                                         (cons (gx#core-expand-expression
                                                _hd13694_)
                                               _body13673_))))
                                     (_E1370713734_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1369513716_)
                                            (let ((_e1371213724_
                                                   (gx#syntax-e
                                                    _e1369513716_)))
                                              (let ((_hd1371313727_
                                                     (##car _e1371213724_))
                                                    (_tl1371413729_
                                                     (##cdr _e1371213724_)))
                                                (let ((_form13732_
                                                       _hd1371313727_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13732_
                                                       gx#special-form-binding?)
                                                      (_lp13670_
                                                       _rest13693_
                                                       (cons _hd13694_
                                                             _body13673_))
                                                      (_E1371113720_)))))
                                            (_E1371113720_))))
                                     (_E1369713746_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1369513716_)
                                            (let ((_e1370813738_
                                                   (gx#syntax-e
                                                    _e1369513716_)))
                                              (let ((_hd1370913741_
                                                     (##car _e1370813738_))
                                                    (_tl1371013743_
                                                     (##cdr _e1370813738_)))
                                                (if (if (gx#identifier?
                                                         _hd1370913741_)
                                                        (gx#core-identifier=?
                                                         _hd1370913741_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp13670_
                                                         _rest13693_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13694_)
                                                               _body13673_))
                                                        (_E1370713734_))
                                                    (_E1370713734_))))
                                            (_E1370713734_))))
                                     (_E1369613778_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1369513716_)
                                            (let ((_e1369813750_
                                                   (gx#syntax-e
                                                    _e1369513716_)))
                                              (let ((_hd1369913753_
                                                     (##car _e1369813750_))
                                                    (_tl1370013755_
                                                     (##cdr _e1369813750_)))
                                                (if (if (gx#identifier?
                                                         _hd1369913753_)
                                                        (gx#core-identifier=?
                                                         _hd1369913753_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1370013755_)
                                                        (let ((_e1370113758_
                                                               (gx#syntax-e
                                                                _tl1370013755_)))
                                                          (let ((_hd1370213761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1370113758_))
                        (_tl1370313763_ (##cdr _e1370113758_)))
                    (let ((_hd-bind13766_ _hd1370213761_))
                      (if (gx#stx-pair? _tl1370313763_)
                          (let ((_e1370413768_ (gx#syntax-e _tl1370313763_)))
                            (let ((_hd1370513771_ (##car _e1370413768_))
                                  (_tl1370613773_ (##cdr _e1370413768_)))
                              (let ((_expr13776_ _hd1370513771_))
                                (if (gx#stx-null? _tl1370613773_)
                                    (if '#t
                                        (_lp13670_
                                         _rest13693_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13766_)
                                                 (gx#core-expand-expression
                                                  _expr13776_))
                                                (gx#stx-source _hd13694_))
                                               _body13673_))
                                        (_E1369713746_))
                                    (_E1369713746_)))))
                          (_E1369713746_)))))
                (_E1369713746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1369713746_))))
                                            (_E1369713746_)))))
                                (_E1369613778_)))))
                      (if (##pair? _rest1367413682_)
                          (let ((_hd1367913785_ (##car _rest1367413682_))
                                (_tl1368013787_ (##cdr _rest1367413682_)))
                            (let* ((_hd13790_ _hd1367913785_)
                                   (_rest13792_ _tl1368013787_))
                              (_K1367813782_ _rest13792_ _hd13790_)))
                          (_else1367613690_)))))))
        (_expand-body13666_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13663_)
          _expand-special13665_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13506_
             _expanded?13507_
             _method13508_
             _current-phi13509_
             _expand113510_)
      (begin
        (declare (not safe))
        (letrec ((_K13512_
                  (lambda (_rest13630_ _r13631_)
                    (let* ((_e1363213639_ _rest13630_)
                           (_E1363413643_ (lambda () _r13631_))
                           (_E1363313659_
                            (lambda ()
                              (if (gx#stx-pair? _e1363213639_)
                                  (let ((_e1363513647_
                                         (gx#syntax-e _e1363213639_)))
                                    (let ((_hd1363613650_
                                           (##car _e1363513647_))
                                          (_tl1363713652_
                                           (##cdr _e1363513647_)))
                                      (let* ((_hd13655_ _hd1363613650_)
                                             (_rest13657_ _tl1363713652_))
                                        (if '#t
                                            (_step13513_
                                             _hd13655_
                                             _rest13657_
                                             _r13631_)
                                            (_E1363413643_)))))
                                  (_E1363413643_)))))
                      (_E1363313659_))))
                 (_step13513_
                  (lambda (_hd13544_ _rest13545_ _r13546_)
                    (let* ((_e1354713565_ _hd13544_)
                           (_E1356013569_
                            (lambda ()
                              (if (_expanded?13507_ (gx#stx-e _hd13544_))
                                  (_K13512_
                                   _rest13545_
                                   (cons (gx#stx-e _hd13544_) _r13546_))
                                  (_expand113510_
                                   _hd13544_
                                   _K13512_
                                   _rest13545_
                                   _r13546_))))
                           (_E1355613585_
                            (lambda ()
                              (if (gx#stx-pair? _e1354713565_)
                                  (let ((_e1356113573_
                                         (gx#syntax-e _e1354713565_)))
                                    (let ((_hd1356213576_
                                           (##car _e1356113573_))
                                          (_tl1356313578_
                                           (##cdr _e1356113573_)))
                                      (let* ((_macro13581_ _hd1356213576_)
                                             (_body13583_ _tl1356313578_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro13581_
                                             gx#syntax-binding?)
                                            (_K13512_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro13581_)
                                                    _hd13544_
                                                    _method13508_)
                                                   _rest13545_)
                                             _r13546_)
                                            (_E1356013569_)))))
                                  (_E1356013569_))))
                           (_E1354913599_
                            (lambda ()
                              (if (gx#stx-pair? _e1354713565_)
                                  (let ((_e1355713589_
                                         (gx#syntax-e _e1354713565_)))
                                    (let ((_hd1355813592_
                                           (##car _e1355713589_))
                                          (_tl1355913594_
                                           (##cdr _e1355713589_)))
                                      (if (eq? (gx#stx-e _hd1355813592_)
                                               'begin:)
                                          (let ((_body13597_ _tl1355913594_))
                                            (if '#t
                                                (_K13512_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest13545_
                                                  _body13597_)
                                                 _r13546_)
                                                (_E1355613585_)))
                                          (_E1355613585_))))
                                  (_E1355613585_))))
                           (_E1354813626_
                            (lambda ()
                              (if (gx#stx-pair? _e1354713565_)
                                  (let ((_e1355013603_
                                         (gx#syntax-e _e1354713565_)))
                                    (let ((_hd1355113606_
                                           (##car _e1355013603_))
                                          (_tl1355213608_
                                           (##cdr _e1355013603_)))
                                      (if (eq? (gx#stx-e _hd1355113606_) 'phi:)
                                          (if (gx#stx-pair? _tl1355213608_)
                                              (let ((_e1355313611_
                                                     (gx#syntax-e
                                                      _tl1355213608_)))
                                                (let ((_hd1355413614_
                                                       (##car _e1355313611_))
                                                      (_tl1355513616_
                                                       (##cdr _e1355313611_)))
                                                  (let* ((_dphi13619_
                                                          _hd1355413614_)
                                                         (_body13621_
                                                          _tl1355513616_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi13619_)
                                                        (let ((_rbody13624_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K13512_ _body13621_ '()))
                        _current-phi13509_
                        (fx+ (gx#stx-e _dphi13619_) (_current-phi13509_)))))
                  (_K13512_ _rest13545_ (foldr1 cons _r13546_ _rbody13624_)))
                (_E1354913599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1354913599_))
                                          (_E1354913599_))))
                                  (_E1354913599_)))))
                      (_E1354813626_)))))
          (let* ((_e1351413521_ _stx13506_)
                 (_E1351613525_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1351413521_)))
                 (_E1351513540_
                  (lambda ()
                    (if (gx#stx-pair? _e1351413521_)
                        (let ((_e1351713529_ (gx#syntax-e _e1351413521_)))
                          (let ((_hd1351813532_ (##car _e1351713529_))
                                (_tl1351913534_ (##cdr _e1351713529_)))
                            (let ((_body13537_ _tl1351913534_))
                              (if '#t
                                  (if (_current-phi13509_)
                                      (_K13512_ _body13537_ '())
                                      (call-with-parameters
                                       (lambda () (_K13512_ _body13537_ '()))
                                       _current-phi13509_
                                       (gx#current-expander-phi)))
                                  (_E1351613525_)))))
                        (_E1351613525_)))))
            (_E1351513540_))))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx13173_ _internal-expand?13174_)
        (begin
          (declare (not safe))
          (letrec ((_expand113176_
                    (lambda (_hd13486_ _K13487_ _rest13488_ _r13489_)
                      (if (gx#core-bound-module? _hd13486_)
                          (_import113177_
                           (gx#syntax-local-e__0 _hd13486_)
                           _K13487_
                           _rest13488_
                           _r13489_)
                          (if (gx#core-library-module-path? _hd13486_)
                              (_import113177_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _hd13486_))
                               _K13487_
                               _rest13488_
                               _r13489_)
                              (let ((_e13491_ (gx#stx-e _hd13486_)))
                                (if (string? _e13491_)
                                    (_import113177_
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__%
                                       _hd13486_
                                       (gx#stx-source _stx13173_)))
                                     _K13487_
                                     _rest13488_
                                     _r13489_)
                                    (if (##structure-instance-of?
                                         _e13491_
                                         'gx#module-context::t)
                                        (_K13487_
                                         _rest13488_
                                         (cons _e13491_ _r13489_))
                                        (if (pair? _e13491_)
                                            (let ((_$e13493_
                                                   (gx#stx-e (car _e13491_))))
                                              (if (eq? 'spec: _$e13493_)
                                                  (_import-spec13180_
                                                   _hd13486_
                                                   _K13487_
                                                   _rest13488_
                                                   _r13489_)
                                                  (if (eq? 'in: _$e13493_)
                                                      (_import-submodule13178_
                                                       _hd13486_
                                                       _K13487_
                                                       _rest13488_
                                                       _r13489_)
                                                      (if (eq? 'runtime:
                                                               _$e13493_)
                                                          (_import-runtime13179_
                                                           _hd13486_
                                                           _K13487_
                                                           _rest13488_
                                                           _r13489_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; illegal import"
                                                           _stx13173_
                                                           _hd13486_)))))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal import"
                                             _stx13173_
                                             _hd13486_)))))))))
                   (_import113177_
                    (lambda (_ctx13475_ _K13476_ _rest13477_ _r13478_)
                      (let ((_dphi13480_
                             (fx- (gx#current-import-expander-phi)
                                  (gx#current-expander-phi))))
                        (_K13476_
                         _rest13477_
                         (cons (##structure
                                gx#import-set::t
                                _ctx13475_
                                _dphi13480_
                                (map (lambda (_g1348113483_)
                                       (gx#core-module-export->import__%
                                        _g1348113483_
                                        '#f
                                        _dphi13480_))
                                     (##unchecked-structure-ref
                                      _ctx13475_
                                      '9
                                      gx#module-context::t
                                      '#f)))
                               _r13478_)))))
                   (_import-submodule13178_
                    (lambda (_hd13442_ _K13443_ _rest13444_ _r13445_)
                      (let* ((_e1344613453_ _hd13442_)
                             (_E1344813457_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1344613453_)))
                             (_E1344713471_
                              (lambda ()
                                (if (gx#stx-pair? _e1344613453_)
                                    (let ((_e1344913461_
                                           (gx#syntax-e _e1344613453_)))
                                      (let ((_hd1345013464_
                                             (##car _e1344913461_))
                                            (_tl1345113466_
                                             (##cdr _e1344913461_)))
                                        (let ((_spath13469_ _tl1345113466_))
                                          (if '#t
                                              (_import113177_
                                               (_import-spec-source13181_
                                                _spath13469_)
                                               _K13443_
                                               _rest13444_
                                               _r13445_)
                                              (_E1344813457_)))))
                                    (_E1344813457_)))))
                        (_E1344713471_))))
                   (_import-runtime13179_
                    (lambda (_hd13409_ _K13410_ _rest13411_ _r13412_)
                      (let* ((_e1341313420_ _hd13409_)
                             (_E1341513424_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1341313420_)))
                             (_E1341413438_
                              (lambda ()
                                (if (gx#stx-pair? _e1341313420_)
                                    (let ((_e1341613428_
                                           (gx#syntax-e _e1341313420_)))
                                      (let ((_hd1341713431_
                                             (##car _e1341613428_))
                                            (_tl1341813433_
                                             (##cdr _e1341613428_)))
                                        (let ((_spath13436_ _tl1341813433_))
                                          (if '#t
                                              (_K13410_
                                               _rest13411_
                                               (cons (_import-spec-source13181_
                                                      _spath13436_)
                                                     _r13412_))
                                              (_E1341513424_)))))
                                    (_E1341513424_)))))
                        (_E1341413438_))))
                   (_import-spec13180_
                    (lambda (_hd13248_ _K13249_ _rest13250_ _r13251_)
                      (let* ((_e1325213269_ _hd13248_)
                             (_E1326113273_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1325213269_)))
                             (_E1325413383_
                              (lambda ()
                                (if (gx#stx-pair? _e1325213269_)
                                    (let ((_e1326213277_
                                           (gx#syntax-e _e1325213269_)))
                                      (let ((_hd1326313280_
                                             (##car _e1326213277_))
                                            (_tl1326413282_
                                             (##cdr _e1326213277_)))
                                        (if (gx#stx-pair? _tl1326413282_)
                                            (let ((_e1326513285_
                                                   (gx#syntax-e
                                                    _tl1326413282_)))
                                              (let ((_hd1326613288_
                                                     (##car _e1326513285_))
                                                    (_tl1326713290_
                                                     (##cdr _e1326513285_)))
                                                (let* ((_path13293_
                                                        _hd1326613288_)
                                                       (_specs13295_
                                                        _tl1326713290_))
                                                  (if '#t
                                                      (let ((_src-ctx13297_
                                                             (_import-spec-source13181_
                                                              _path13293_))
                                                            (_exports13298_
                                                             (make-table))
                                                            (_specs13299_
                                                             (gx#syntax->list
                                                              _specs13295_)))
                                                        (begin
                                                          (for-each
                                                           (lambda (_out13301_)
                                                             (table-set!
                                                              _exports13298_
                                                              (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _out13301_
                             '3
                             gx#module-export::t
                             '#f)
                            (##unchecked-structure-ref
                             _out13301_
                             '4
                             gx#module-export::t
                             '#f))
                      _out13301_))
                   (##unchecked-structure-ref
                    _src-ctx13297_
                    '9
                    gx#module-context::t
                    '#f))
                  (_K13249_
                   _rest13250_
                   (foldl1 (lambda (_spec13303_ _r13304_)
                             (let* ((_e1330513321_ _spec13303_)
                                    (_E1330713325_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e1330513321_)))
                                    (_E1330613379_
                                     (lambda ()
                                       (if (gx#stx-pair? _e1330513321_)
                                           (let ((_e1330813329_
                                                  (gx#syntax-e _e1330513321_)))
                                             (let ((_hd1330913332_
                                                    (##car _e1330813329_))
                                                   (_tl1331013334_
                                                    (##cdr _e1330813329_)))
                                               (let ((_phi13337_
                                                      _hd1330913332_))
                                                 (if (gx#stx-pair?
                                                      _tl1331013334_)
                                                     (let ((_e1331113339_
                                                            (gx#syntax-e
                                                             _tl1331013334_)))
                                                       (let ((_hd1331213342_
                                                              (##car _e1331113339_))
                                                             (_tl1331313344_
                                                              (##cdr _e1331113339_)))
                                                         (let ((_name13347_
                                                                _hd1331213342_))
                                                           (if (gx#stx-pair?
                                                                _tl1331313344_)
                                                               (let ((_e1331413349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1331313344_)))
                         (let ((_hd1331513352_ (##car _e1331413349_))
                               (_tl1331613354_ (##cdr _e1331413349_)))
                           (let ((_src-phi13357_ _hd1331513352_))
                             (if (gx#stx-pair? _tl1331613354_)
                                 (let ((_e1331713359_
                                        (gx#syntax-e _tl1331613354_)))
                                   (let ((_hd1331813362_ (##car _e1331713359_))
                                         (_tl1331913364_
                                          (##cdr _e1331713359_)))
                                     (let ((_src-name13367_ _hd1331813362_))
                                       (if (gx#stx-null? _tl1331913364_)
                                           (if (if (gx#stx-fixnum?
                                                    _src-phi13357_)
                                                   (if (gx#identifier?
                                                        _src-name13367_)
                                                       (if (gx#stx-fixnum?
                                                            _phi13337_)
                                                           (gx#identifier?
                                                            _name13347_)
                                                           '#f)
                                                       '#f)
                                                   '#f)
                                               (let ((_src-phi13369_
                                                      (gx#stx-e
                                                       _src-phi13357_))
                                                     (_src-name13370_
                                                      (gx#core-identifier-key
                                                       _src-name13367_))
                                                     (_phi13371_
                                                      (gx#stx-e _phi13337_))
                                                     (_name13372_
                                                      (gx#core-identifier-key
                                                       _name13347_)))
                                                 (let ((_$e13374_
                                                        (table-ref
                                                         _exports13298_
                                                         (cons _src-phi13369_
                                                               _src-name13370_)
                                                         '#f)))
                                                   (if _$e13374_
                                                       ((lambda (_out13377_)
                                                          (cons (gx#core-module-export->import__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out13377_
                         _name13372_
                         (fx- _phi13371_ _src-phi13369_))
                        _r13304_))
                _$e13374_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; no matching export"
                _stx13173_
                _hd13248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1330713325_))
                                           (_E1330713325_)))))
                                 (_E1330713325_)))))
                       (_E1330713325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1330713325_)))))
                                           (_E1330713325_)))))
                               (_E1330613379_)))
                           _r13251_
                           _specs13299_))))
              (_E1326113273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1326113273_))))
                                    (_E1326113273_))))
                             (_E1325313405_
                              (lambda ()
                                (if (gx#stx-pair? _e1325213269_)
                                    (let ((_e1325513387_
                                           (gx#syntax-e _e1325213269_)))
                                      (let ((_hd1325613390_
                                             (##car _e1325513387_))
                                            (_tl1325713392_
                                             (##cdr _e1325513387_)))
                                        (if (gx#stx-pair? _tl1325713392_)
                                            (let ((_e1325813395_
                                                   (gx#syntax-e
                                                    _tl1325713392_)))
                                              (let ((_hd1325913398_
                                                     (##car _e1325813395_))
                                                    (_tl1326013400_
                                                     (##cdr _e1325813395_)))
                                                (let ((_path13403_
                                                       _hd1325913398_))
                                                  (if (gx#stx-null?
                                                       _tl1326013400_)
                                                      (if '#t
                                                          (_K13249_
                                                           _rest13250_
                                                           (cons (_import-spec-source13181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _path13403_)
                         _r13251_))
                  (_E1325413383_))
              (_E1325413383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1325413383_))))
                                    (_E1325413383_)))))
                        (_E1325313405_))))
                   (_import-spec-source13181_
                    (lambda (_spath13246_)
                      (gx#core-import-nested-module _spath13246_ _stx13173_)))
                   (_import!13182_
                    (lambda (_rbody13195_)
                      (letrec* ((_current-ctx13197_
                                 (gx#current-expander-context))
                                (_deps13198_ (make-table 'test: eq?))
                                (_bind!13199_
                                 (lambda (_hd13244_)
                                   (gx#core-bind-import!__1
                                    _hd13244_
                                    _current-ctx13197_))))
                        (let _lp13201_ ((_rest13203_ _rbody13195_)
                                        (_body13204_ '()))
                          (let* ((_rest1320513213_ _rest13203_)
                                 (_else1320713223_
                                  (lambda ()
                                    (begin
                                      (if (##structure-instance-of?
                                           _current-ctx13197_
                                           'gx#module-context::t)
                                          (##unchecked-structure-set!
                                           _current-ctx13197_
                                           (foldl1 cons
                                                   (##unchecked-structure-ref
                                                    _current-ctx13197_
                                                    '8
                                                    gx#module-context::t
                                                    '#f)
                                                   _body13204_)
                                           '8
                                           gx#module-context::t
                                           '#f)
                                          '#!void)
                                      (table-for-each
                                       (lambda (_ctx13221_ _g15968_)
                                         (gx#eval-module _ctx13221_))
                                       _deps13198_)
                                      _body13204_)))
                                 (_K1320913232_
                                  (lambda (_rest13226_ _hd13227_)
                                    (begin
                                      (if (##structure-direct-instance-of?
                                           _hd13227_
                                           'gx#module-import::t)
                                          (begin
                                            (_bind!13199_ _hd13227_)
                                            (if (if (fxpositive?
                                                     (##unchecked-structure-ref
                                                      _hd13227_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))
                                                    (fxzero? (##unchecked-structure-ref
                                                              (##unchecked-structure-ref
                                                               _hd13227_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '3
                                                              gx#module-export::t
                                                              '#f))
                                                    '#f)
                                                (table-set!
                                                 _deps13198_
                                                 (##unchecked-structure-ref
                                                  (##unchecked-structure-ref
                                                   _hd13227_
                                                   '1
                                                   gx#module-import::t
                                                   '#f)
                                                  '1
                                                  gx#module-export::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (if (##structure-direct-instance-of?
                                               _hd13227_
                                               'gx#import-set::t)
                                              (begin
                                                (for-each
                                                 _bind!13199_
                                                 (##unchecked-structure-ref
                                                  _hd13227_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                                (if (fxpositive?
                                                     (##unchecked-structure-ref
                                                      _hd13227_
                                                      '2
                                                      gx#import-set::t
                                                      '#f))
                                                    (table-set!
                                                     _deps13198_
                                                     (##unchecked-structure-ref
                                                      _hd13227_
                                                      '1
                                                      gx#import-set::t
                                                      '#f)
                                                     '#t)
                                                    '#!void))
                                              (let ((_$e13229_
                                                     (##structure-instance-of?
                                                      _hd13227_
                                                      'gx#module-context::t)))
                                                (if _$e13229_
                                                    _$e13229_
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Unexpected import"
                                                     _stx13173_
                                                     _hd13227_)))))
                                      (_lp13201_
                                       _rest13226_
                                       (cons _hd13227_ _body13204_))))))
                            (if (##pair? _rest1320513213_)
                                (let ((_hd1321013235_ (##car _rest1320513213_))
                                      (_tl1321113237_
                                       (##cdr _rest1320513213_)))
                                  (let* ((_hd13240_ _hd1321013235_)
                                         (_rest13242_ _tl1321113237_))
                                    (_K1320913232_ _rest13242_ _hd13240_)))
                                (_else1320713223_)))))))
                   (_expanded-import?13183_
                    (lambda (_e13187_)
                      (let ((_$e13189_
                             (##structure-direct-instance-of?
                              _e13187_
                              'gx#import-set::t)))
                        (if _$e13189_
                            _$e13189_
                            (let ((_$e13192_
                                   (##structure-direct-instance-of?
                                    _e13187_
                                    'gx#module-import::t)))
                              (if _$e13192_
                                  _$e13192_
                                  (##structure-instance-of?
                                   _e13187_
                                   'gx#module-context::t))))))))
            (let ((_rbody13185_
                   (gx#core-expand-import/export
                    _stx13173_
                    _expanded-import?13183_
                    'apply-import-expander
                    gx#current-import-expander-phi
                    _expand113176_)))
              (if _internal-expand?13174_
                  (reverse _rbody13185_)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#import (_import!13182_ _rbody13185_))
                   (gx#stx-source _stx13173_))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx13499_)
          (let ((_internal-expand?13501_ '#f))
            (gx#core-expand-import%__% _stx13499_ _internal-expand?13501_))))
      (define gx#core-expand-import%
        (lambda _g15970_
          (let ((_g15969_ (length _g15970_)))
            (cond ((##fx= _g15969_ 1)
                   (apply gx#core-expand-import%__0 _g15970_))
                  ((##fx= _g15969_ 2)
                   (apply gx#core-expand-import%__% _g15970_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g15970_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath13100_ _where13101_)
      (let* ((_e1310213109_ _spath13100_)
             (_E1310413113_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1310213109_)))
             (_E1310313168_
              (lambda ()
                (if (gx#stx-pair? _e1310213109_)
                    (let ((_e1310513117_ (gx#syntax-e _e1310213109_)))
                      (let ((_hd1310613120_ (##car _e1310513117_))
                            (_tl1310713122_ (##cdr _e1310513117_)))
                        (let* ((_origin13125_ _hd1310613120_)
                               (_sub13127_ _tl1310713122_))
                          (if '#t
                              (let ((_origin-ctx13129_
                                     (if (gx#stx-false? _origin13125_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13125_))))
                                (let _lp13131_ ((_rest13133_ _sub13127_)
                                                (_ctx13134_ _origin-ctx13129_))
                                  (let* ((_e1313513142_ _rest13133_)
                                         (_E1313713146_ (lambda () _ctx13134_))
                                         (_E1313613164_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1313513142_)
                                                (let ((_e1313813150_
                                                       (gx#syntax-e
                                                        _e1313513142_)))
                                                  (let ((_hd1313913153_
                                                         (##car _e1313813150_))
                                                        (_tl1314013155_
                                                         (##cdr _e1313813150_)))
                                                    (let* ((_id13158_
                                                            _hd1313913153_)
                                                           (_rest13160_
                                                            _tl1314013155_))
                                                      (if '#t
                                                          (let ((_bind13162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13158_ '0 _ctx13134_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind13162_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##unchecked-structure-ref
                                _bind13162_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13101_
                           _spath13100_
                           _id13158_))
                      (_lp13131_
                       _rest13160_
                       (##unchecked-structure-ref
                        _bind13162_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1313713146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1313713146_)))))
                                    (_E1313613164_))))
                              (_E1310413113_)))))
                    (_E1310413113_)))))
        (_E1310313168_))))
  (define gx#core-expand-import-source
    (lambda (_hd13098_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13098_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx12609_ _internal-expand?12610_)
        (begin
          (declare (not safe))
          (letrec* ((_make-export__1590815909_
                     (lambda (_bind13046_ _phi13047_ _ctx13048_ _name13049_)
                       (let* ((_key13051_
                               (##unchecked-structure-ref
                                _bind13046_
                                '2
                                gx#binding::t
                                '#f))
                              (_export-key13053_
                               (if _name13049_
                                   (gx#core-identifier-key _name13049_)
                                   _key13051_)))
                         (##structure
                          gx#module-export::t
                          _ctx13048_
                          _key13051_
                          _phi13047_
                          _export-key13053_
                          (let ((_$e13056_
                                 (##structure-instance-of?
                                  _bind13046_
                                  'gx#extern-binding::t)))
                            (if _$e13056_
                                _$e13056_
                                (##structure-direct-instance-of?
                                 _bind13046_
                                 'gx#import-binding::t)))))))
                    (_make-export__0__1591015913_
                     (lambda (_bind13062_)
                       (let* ((_phi13064_ (gx#current-export-expander-phi))
                              (_ctx13066_ (gx#current-expander-context))
                              (_name13068_ '#f))
                         (_make-export__1590815909_
                          _bind13062_
                          _phi13064_
                          _ctx13066_
                          _name13068_))))
                    (_make-export__1__1591115914_
                     (lambda (_bind13070_ _phi13071_)
                       (let* ((_ctx13073_ (gx#current-expander-context))
                              (_name13075_ '#f))
                         (_make-export__1590815909_
                          _bind13070_
                          _phi13071_
                          _ctx13073_
                          _name13075_))))
                    (_make-export__2__1591215915_
                     (lambda (_bind13077_ _phi13078_ _ctx13079_)
                       (let ((_name13081_ '#f))
                         (_make-export__1590815909_
                          _bind13077_
                          _phi13078_
                          _ctx13079_
                          _name13081_))))
                    (_make-export12612_
                     (lambda _g15972_
                       (let ((_g15971_ (length _g15972_)))
                         (cond ((##fx= _g15971_ 1)
                                (apply _make-export__0__1591015913_ _g15972_))
                               ((##fx= _g15971_ 2)
                                (apply _make-export__1__1591115914_ _g15972_))
                               ((##fx= _g15971_ 3)
                                (apply _make-export__2__1591215915_ _g15972_))
                               ((##fx= _g15971_ 4)
                                (apply _make-export__1590815909_ _g15972_))
                               (else
                                (##raise-wrong-number-of-arguments-exception
                                 'case-lambda-dispatch
                                 _g15972_))))))
                    (_expand112613_
                     (lambda (_hd12759_ _K12760_ _rest12761_ _r12762_)
                       (let* ((_e1276312795_ _hd12759_)
                              (_E1279012799_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal export"
                                  _stx12609_
                                  _hd12759_)))
                              (_E1278012878_
                               (lambda ()
                                 (if (gx#stx-pair? _e1276312795_)
                                     (let ((_e1279112803_
                                            (gx#syntax-e _e1276312795_)))
                                       (let ((_hd1279212806_
                                              (##car _e1279112803_))
                                             (_tl1279312808_
                                              (##cdr _e1279112803_)))
                                         (if (eq? (gx#stx-e _hd1279212806_)
                                                  'import:)
                                             (let ((_in12811_ _tl1279312808_))
                                               (if (gx#stx-list? _in12811_)
                                                   (let _lp12813_ ((_in-rest12815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _in12811_)
                           (_r12816_ _r12762_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_e1281712824_
                                                             _in-rest12815_)
                                                            (_E1281912828_
                                                             (lambda ()
                                                               (_K12760_
                                                                _rest12761_
                                                                _r12816_)))
                                                            (_E1281812874_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e1281712824_)
                           (let ((_e1282012832_ (gx#syntax-e _e1281712824_)))
                             (let ((_hd1282112835_ (##car _e1282012832_))
                                   (_tl1282212837_ (##cdr _e1282012832_)))
                               (let* ((_hd12840_ _hd1282112835_)
                                      (_in-rest12842_ _tl1282212837_))
                                 (if '#t
                                     (let ((_src12872_
                                            (if (gx#core-bound-module?
                                                 _hd12840_)
                                                (gx#syntax-local-e__0
                                                 _hd12840_)
                                                (if (gx#core-library-module-path?
                                                     _hd12840_)
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _hd12840_))
                                                    (if (gx#stx-string?
                                                         _hd12840_)
                                                        (gx#import-module__0
                                                         (gx#core-resolve-module-path__%
                                                          _hd12840_
                                                          (gx#stx-source
                                                           _stx12609_)))
                                                        (let* ((_e1284312850_
                                                                _hd12840_)
                                                               (_E1284512854_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal re-export"
                           _stx12609_
                           _hd12840_)))
                       (_E1284412868_
                        (lambda ()
                          (if (gx#stx-pair? _e1284312850_)
                              (let ((_e1284612858_
                                     (gx#syntax-e _e1284312850_)))
                                (let ((_hd1284712861_ (##car _e1284612858_))
                                      (_tl1284812863_ (##cdr _e1284612858_)))
                                  (if (eq? (gx#stx-e _hd1284712861_) 'in:)
                                      (let ((_spath12866_ _tl1284812863_))
                                        (if '#t
                                            (gx#core-import-nested-module
                                             _spath12866_
                                             _stx12609_)
                                            (_E1284512854_)))
                                      (_E1284512854_))))
                              (_E1284512854_)))))
                  (_E1284412868_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp12813_
                                        _in-rest12842_
                                        (_export-imports12614_
                                         _src12872_
                                         _r12816_)))
                                     (_E1281912828_)))))
                           (_E1281912828_)))))
               (_E1281812874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1279012799_)))
                                             (_E1279012799_))))
                                     (_E1279012799_))))
                              (_E1276712917_
                               (lambda ()
                                 (if (gx#stx-pair? _e1276312795_)
                                     (let ((_e1278112882_
                                            (gx#syntax-e _e1276312795_)))
                                       (let ((_hd1278212885_
                                              (##car _e1278112882_))
                                             (_tl1278312887_
                                              (##cdr _e1278112882_)))
                                         (if (eq? (gx#stx-e _hd1278212885_)
                                                  'rename:)
                                             (if (gx#stx-pair? _tl1278312887_)
                                                 (let ((_e1278412890_
                                                        (gx#syntax-e
                                                         _tl1278312887_)))
                                                   (let ((_hd1278512893_
                                                          (##car _e1278412890_))
                                                         (_tl1278612895_
                                                          (##cdr _e1278412890_)))
                                                     (let ((_id12898_
                                                            _hd1278512893_))
                                                       (if (gx#stx-pair?
                                                            _tl1278612895_)
                                                           (let ((_e1278712900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1278612895_)))
                     (let ((_hd1278812903_ (##car _e1278712900_))
                           (_tl1278912905_ (##cdr _e1278712900_)))
                       (let ((_name12908_ _hd1278812903_))
                         (if (gx#stx-null? _tl1278912905_)
                             (if '#t
                                 (let* ((_phi12910_
                                         (gx#current-export-expander-phi))
                                        (_$e12912_
                                         (gx#core-resolve-identifier__1
                                          _id12898_
                                          _phi12910_)))
                                   (if _$e12912_
                                       ((lambda (_bind12915_)
                                          (_K12760_
                                           _rest12761_
                                           (cons (_make-export__1590815909_
                                                  _bind12915_
                                                  _phi12910_
                                                  (gx#current-expander-context)
                                                  _name12908_)
                                                 _r12762_)))
                                        _$e12912_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _stx12609_
                                        _hd12759_
                                        _id12898_)))
                                 (_E1278012878_))
                             (_E1278012878_)))))
                   (_E1278012878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1278012878_))
                                             (_E1278012878_))))
                                     (_E1278012878_))))
                              (_E1276612966_
                               (lambda ()
                                 (if (gx#stx-pair? _e1276312795_)
                                     (let ((_e1276812921_
                                            (gx#syntax-e _e1276312795_)))
                                       (let ((_hd1276912924_
                                              (##car _e1276812921_))
                                             (_tl1277012926_
                                              (##cdr _e1276812921_)))
                                         (if (eq? (gx#stx-e _hd1276912924_)
                                                  'spec:)
                                             (if (gx#stx-pair? _tl1277012926_)
                                                 (let ((_e1277112929_
                                                        (gx#syntax-e
                                                         _tl1277012926_)))
                                                   (let ((_hd1277212932_
                                                          (##car _e1277112929_))
                                                         (_tl1277312934_
                                                          (##cdr _e1277112929_)))
                                                     (let ((_phi12937_
                                                            _hd1277212932_))
                                                       (if (gx#stx-pair?
                                                            _tl1277312934_)
                                                           (let ((_e1277412939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1277312934_)))
                     (let ((_hd1277512942_ (##car _e1277412939_))
                           (_tl1277612944_ (##cdr _e1277412939_)))
                       (let ((_id12947_ _hd1277512942_))
                         (if (gx#stx-pair? _tl1277612944_)
                             (let ((_e1277712949_
                                    (gx#syntax-e _tl1277612944_)))
                               (let ((_hd1277812952_ (##car _e1277712949_))
                                     (_tl1277912954_ (##cdr _e1277712949_)))
                                 (let ((_name12957_ _hd1277812952_))
                                   (if (gx#stx-null? _tl1277912954_)
                                       (if (if (gx#stx-fixnum? _phi12937_)
                                               (if (gx#identifier? _id12947_)
                                                   (gx#identifier? _name12957_)
                                                   '#f)
                                               '#f)
                                           (let* ((_phi12959_
                                                   (gx#stx-e _phi12937_))
                                                  (_$e12961_
                                                   (gx#core-resolve-identifier__1
                                                    _id12947_
                                                    _phi12959_)))
                                             (if _$e12961_
                                                 ((lambda (_bind12964_)
                                                    (_K12760_
                                                     _rest12761_
                                                     (cons (_make-export__1590815909_
                                                            _bind12964_
                                                            _phi12959_
                                                            (gx#current-expander-context)
                                                            _name12957_)
                                                           _r12762_)))
                                                  _$e12961_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _stx12609_
                                                  _hd12759_
                                                  _id12947_)))
                                           (_E1276712917_))
                                       (_E1276712917_)))))
                             (_E1276712917_)))))
                   (_E1276712917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1276712917_))
                                             (_E1276712917_))))
                                     (_E1276712917_))))
                              (_E1276512977_
                               (lambda ()
                                 (let ((_id12970_ _e1276312795_))
                                   (if (gx#identifier? _id12970_)
                                       (let ((_$e12972_
                                              (gx#core-resolve-identifier__1
                                               _id12970_
                                               (gx#current-export-expander-phi))))
                                         (if _$e12972_
                                             ((lambda (_bind12975_)
                                                (_K12760_
                                                 _rest12761_
                                                 (cons (_make-export__0__1591015913_
                                                        _bind12975_)
                                                       _r12762_)))
                                              _$e12972_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _stx12609_
                                              _hd12759_)))
                                       (_E1276612966_)))))
                              (_E1276413041_
                               (lambda ()
                                 (if (eq? (gx#stx-e _e1276312795_) '#t)
                                     (if '#t
                                         (let* ((_current-ctx12981_
                                                 (gx#current-expander-context))
                                                (_current-phi12983_
                                                 (gx#current-export-expander-phi))
                                                (_phi-ctx12985_
                                                 (gx#core-context-shift
                                                  _current-ctx12981_
                                                  _current-phi12983_))
                                                (_phi-bind12987_
                                                 (table->list
                                                  (##unchecked-structure-ref
                                                   _phi-ctx12985_
                                                   '2
                                                   gx#expander-context::t
                                                   '#f))))
                                           (let _lp12990_ ((_bind-rest12992_
                                                            _phi-bind12987_)
                                                           (_set12993_ '()))
                                             (let* ((_bind-rest1299413004_
                                                     _bind-rest12992_)
                                                    (_else1299613012_
                                                     (lambda ()
                                                       (_K12760_
                                                        _rest12761_
                                                        (cons (##structure
                                                               gx#export-set::t
                                                               '#f
                                                               _current-phi12983_
                                                               _set12993_)
                                                              _r12762_))))
                                                    (_K1299813022_
                                                     (lambda (_bind-rest13015_
                                                              _bind13016_
                                                              _key13017_)
                                                       (if (let ((_$e13019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-direct-instance-of?
                           _bind13016_
                           'gx#import-binding::t)))
                     (if _$e13019_
                         _$e13019_
                         (gx#private-feature-binding? _bind13016_)))
                   (_lp12990_ _bind-rest13015_ _set12993_)
                   (_lp12990_
                    _bind-rest13015_
                    (cons (_make-export__2__1591215915_
                           _bind13016_
                           _current-phi12983_
                           _current-ctx12981_)
                          _set12993_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##pair? _bind-rest1299413004_)
                                                   (let ((_hd1299913025_
                                                          (##car _bind-rest1299413004_))
                                                         (_tl1300013027_
                                                          (##cdr _bind-rest1299413004_)))
                                                     (if (##pair? _hd1299913025_)
                                                         (let ((_hd1300113030_
                                                                (##car _hd1299913025_))
                                                               (_tl1300213032_
                                                                (##cdr _hd1299913025_)))
                                                           (let* ((_key13035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1300113030_)
                          (_bind13037_ _tl1300213032_)
                          (_bind-rest13039_ _tl1300013027_))
                     (_K1299813022_ _bind-rest13039_ _bind13037_ _key13035_)))
                 (_else1299613012_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_else1299613012_)))))
                                         (_E1276512977_))
                                     (_E1276512977_)))))
                         (_E1276413041_))))
                    (_export-imports12614_
                     (lambda (_src12635_ _r12636_)
                       (letrec* ((_current-ctx12638_
                                  (gx#current-expander-context))
                                 (_current-phi12639_
                                  (gx#current-export-expander-phi))
                                 (_import->export12640_
                                  (lambda (_in12721_)
                                    (let* ((_in1272212730_ _in12721_)
                                           (_E1272412734_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _in1272212730_)))
                                           (_K1272512741_
                                            (lambda (_phi12737_
                                                     _key12738_
                                                     _out12739_)
                                              (##structure
                                               gx#module-export::t
                                               _current-ctx12638_
                                               _key12738_
                                               _phi12737_
                                               _key12738_
                                               '#t))))
                                      (if (##structure-direct-instance-of?
                                           _in1272212730_
                                           'gx#module-import::t)
                                          (let* ((_e1272612744_
                                                  (##vector-ref
                                                   _in1272212730_
                                                   '1))
                                                 (_out12747_ _e1272612744_)
                                                 (_e1272712749_
                                                  (##vector-ref
                                                   _in1272212730_
                                                   '2))
                                                 (_key12752_ _e1272712749_)
                                                 (_e1272812754_
                                                  (##vector-ref
                                                   _in1272212730_
                                                   '3))
                                                 (_phi12757_ _e1272812754_))
                                            (_K1272512741_
                                             _phi12757_
                                             _key12752_
                                             _out12747_))
                                          (_E1272412734_)))))
                                 (_fold-e12641_
                                  (lambda (_in12643_ _r12644_)
                                    (let* ((_in1264512659_ _in12643_)
                                           (_else1264812667_
                                            (lambda () _r12644_)))
                                      (let ((_K1265412703_
                                             (lambda (_phi12699_
                                                      _key12700_
                                                      _out12701_)
                                               (if (if (fx= _phi12699_
                                                            _current-phi12639_)
                                                       (eq? _src12635_
                                                            (##unchecked-structure-ref
                                                             _out12701_
                                                             '1
                                                             gx#module-export::t
                                                             '#f))
                                                       '#f)
                                                   (cons (_import->export12640_
                                                          _in12643_)
                                                         _r12644_)
                                                   _r12644_)))
                                            (_K1265012678_
                                             (lambda (_imports12671_
                                                      _phi12672_
                                                      _ctx12673_)
                                               (if (if (fx= _phi12672_
                                                            _current-phi12639_)
                                                       (eq? _src12635_
                                                            _ctx12673_)
                                                       '#f)
                                                   (foldl1 (lambda (_in12675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r12676_)
                     (cons (_import->export12640_ _in12675_) _r12676_))
                   _r12644_
                   _imports12671_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r12644_))))
                                        (let ((_try-match1264712696_
                                               (lambda ()
                                                 (if (##structure-direct-instance-of?
                                                      _in1264512659_
                                                      'gx#import-set::t)
                                                     (let* ((_e1265112681_
                                                             (##vector-ref
                                                              _in1264512659_
                                                              '1))
                                                            (_e1265212686_
                                                             (##vector-ref
                                                              _in1264512659_
                                                              '2))
                                                            (_e1265312691_
                                                             (##vector-ref
                                                              _in1264512659_
                                                              '3)))
                                                       (let ((_ctx12684_
                                                              _e1265112681_)
                                                             (_phi12689_
                                                              _e1265212686_)
                                                             (_imports12694_
                                                              _e1265312691_))
                                                         (_K1265012678_
                                                          _imports12694_
                                                          _phi12689_
                                                          _ctx12684_)))
                                                     (_else1264812667_)))))
                                          (if (##structure-direct-instance-of?
                                               _in1264512659_
                                               'gx#module-import::t)
                                              (let* ((_e1265512706_
                                                      (##vector-ref
                                                       _in1264512659_
                                                       '1))
                                                     (_e1265612711_
                                                      (##vector-ref
                                                       _in1264512659_
                                                       '2))
                                                     (_e1265712716_
                                                      (##vector-ref
                                                       _in1264512659_
                                                       '3)))
                                                (let ((_out12709_
                                                       _e1265512706_)
                                                      (_key12714_
                                                       _e1265612711_)
                                                      (_phi12719_
                                                       _e1265712716_))
                                                  (_K1265412703_
                                                   _phi12719_
                                                   _key12714_
                                                   _out12709_)))
                                              (_try-match1264712696_))))))))
                         (cons (##structure
                                gx#export-set::t
                                _src12635_
                                _current-phi12639_
                                (foldl1 _fold-e12641_
                                        '()
                                        (##unchecked-structure-ref
                                         _current-ctx12638_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                               _r12636_))))
                    (_export!12615_
                     (lambda (_rbody12625_)
                       (letrec* ((_current-ctx12627_
                                  (gx#current-expander-context))
                                 (_fold-e12628_
                                  (lambda (_out12632_ _r12633_)
                                    (if (##structure-direct-instance-of?
                                         _out12632_
                                         'gx#module-export::t)
                                        (cons _out12632_ _r12633_)
                                        (if (##structure-direct-instance-of?
                                             _out12632_
                                             'gx#export-set::t)
                                            (foldl1 cons
                                                    _r12633_
                                                    (##unchecked-structure-ref
                                                     _out12632_
                                                     '3
                                                     gx#export-set::t
                                                     '#f))
                                            _r12633_)))))
                         (let ((_body12630_ (reverse _rbody12625_)))
                           (begin
                             (##unchecked-structure-set!
                              _current-ctx12627_
                              (foldl1 _fold-e12628_
                                      (##unchecked-structure-ref
                                       _current-ctx12627_
                                       '9
                                       gx#module-context::t
                                       '#f)
                                      _body12630_)
                              '9
                              gx#module-context::t
                              '#f)
                             _body12630_)))))
                    (_expanded-export?12616_
                     (lambda (_e12620_)
                       (let ((_$e12622_
                              (##structure-direct-instance-of?
                               _e12620_
                               'gx#module-export::t)))
                         (if _$e12622_
                             _$e12622_
                             (##structure-direct-instance-of?
                              _e12620_
                              'gx#export-set::t))))))
            (let ((_rbody12618_
                   (gx#core-expand-import/export
                    _stx12609_
                    _expanded-export?12616_
                    'apply-export-expander
                    gx#current-export-expander-phi
                    _expand112613_)))
              (if _internal-expand?12610_
                  (reverse _rbody12618_)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#export (_export!12615_ _rbody12618_))
                   (gx#stx-source _stx12609_))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx13091_)
          (let ((_internal-expand?13093_ '#f))
            (gx#core-expand-export%__% _stx13091_ _internal-expand?13093_))))
      (define gx#core-expand-export%
        (lambda _g15974_
          (let ((_g15973_ (length _g15974_)))
            (cond ((##fx= _g15973_ 1)
                   (apply gx#core-expand-export%__0 _g15974_))
                  ((##fx= _g15973_ 2)
                   (apply gx#core-expand-export%__% _g15974_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g15974_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd12606_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12606_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12576_)
      (let* ((_e1257712584_ _stx12576_)
             (_E1257912588_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1257712584_)))
             (_E1257812602_
              (lambda ()
                (if (gx#stx-pair? _e1257712584_)
                    (let ((_e1258012592_ (gx#syntax-e _e1257712584_)))
                      (let ((_hd1258112595_ (##car _e1258012592_))
                            (_tl1258212597_ (##cdr _e1258012592_)))
                        (let ((_body12600_ _tl1258212597_))
                          (if (gx#identifier-list? _body12600_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12600_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12600_))
                                 (gx#stx-source _stx12576_)))
                              (_E1257912588_)))))
                    (_E1257912588_)))))
        (_E1257812602_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id12542_ _private?12543_ _phi12544_ _ctx12545_)
        (gx#core-bind-syntax!__%
         _id12542_
         ((if _private?12543_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id12542_))
         _private?12543_
         _phi12544_
         _ctx12545_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id12550_)
          (let* ((_private?12552_ '#f)
                 (_phi12554_ (gx#current-expander-phi))
                 (_ctx12556_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12550_
             _private?12552_
             _phi12554_
             _ctx12556_))))
      (define gx#core-bind-feature!__1
        (lambda (_id12558_ _private?12559_)
          (let* ((_phi12561_ (gx#current-expander-phi))
                 (_ctx12563_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12558_
             _private?12559_
             _phi12561_
             _ctx12563_))))
      (define gx#core-bind-feature!__2
        (lambda (_id12565_ _private?12566_ _phi12567_)
          (let ((_ctx12569_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12565_
             _private?12566_
             _phi12567_
             _ctx12569_))))
      (define gx#core-bind-feature!
        (lambda _g15976_
          (let ((_g15975_ (length _g15976_)))
            (cond ((##fx= _g15975_ 1)
                   (apply gx#core-bind-feature!__0 _g15976_))
                  ((##fx= _g15975_ 2)
                   (apply gx#core-bind-feature!__1 _g15976_))
                  ((##fx= _g15975_ 3)
                   (apply gx#core-bind-feature!__2 _g15976_))
                  ((##fx= _g15975_ 4)
                   (apply gx#core-bind-feature!__% _g15976_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g15976_)))))))))
