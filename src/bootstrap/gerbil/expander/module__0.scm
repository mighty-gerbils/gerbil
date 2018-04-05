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
    (lambda _$args15901_
      (apply make-struct-instance gx#module-import::t _$args15901_)))
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
    (lambda _$args15898_
      (apply make-struct-instance gx#module-export::t _$args15898_)))
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
    (lambda _$args15895_
      (apply make-struct-instance gx#import-set::t _$args15895_)))
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
    (lambda _$args15892_
      (apply make-struct-instance gx#export-set::t _$args15892_)))
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
    (lambda _$args15889_
      (apply make-class-instance gx#import-expander::t _$args15889_)))
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
    (lambda _$args15886_
      (apply make-class-instance gx#export-expander::t _$args15886_)))
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
    (lambda _$args15883_
      (apply make-class-instance gx#import-export-expander::t _$args15883_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15877_ _id15878_ _super15879_ _ns15880_ _path15881_)
      (struct-instance-init!
       _self15877_
       _id15878_
       (make-table 'test: eq?)
       _super15879_
       '#f
       '#f
       _ns15880_
       _path15881_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self15721_ _ctx15722_ _root15723_)
        (let ((_super15731_
               (let ((_$e15725_ _root15723_))
                 (if _$e15725_
                     _$e15725_
                     (let ((_$e15728_ (gx#core-context-root__0)))
                       (if _$e15728_
                           _$e15728_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx15722_
              (let ((_id15734_
                     (##structure-ref
                      _ctx15722_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path15735_
                     (##structure-ref _ctx15722_ '7 gx#module-context::t '#f))
                    (_in15736_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx15722_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e15737_
                     (##make-promise (lambda () (gx#eval-module _ctx15722_)))))
                (begin
                  (struct-instance-init!
                   _self15721_
                   _id15734_
                   (make-table 'test: eq?)
                   _super15731_
                   '#f
                   '#f
                   _path15735_
                   _in15736_
                   _e15737_)
                  (for-each
                   (lambda (_g1573815740_)
                     (gx#core-bind-weak-import!__% _g1573815740_ _self15721_))
                   _in15736_)))
              (struct-instance-init!
               _self15721_
               '#f
               (make-table 'test: eq?)
               _super15731_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self15746_ _ctx15747_)
          (let ((_root15749_ '#f))
            (gx#prelude-context:::init!__%
             _self15746_
             _ctx15747_
             _root15749_))))
      (define gx#prelude-context:::init!
        (lambda _g15941_
          (let ((_g15940_ (length _g15941_)))
            (cond ((##fx= _g15940_ 2)
                   (apply gx#prelude-context:::init!__0 _g15941_))
                  ((##fx= _g15940_ 3)
                   (apply gx#prelude-context:::init!__% _g15941_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g15941_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15595_ _e15596_)
      (struct-instance-init!
       _self15595_
       _e15596_
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
    (lambda (_g1522115224_ _g1522215226_)
      (gx#core-apply-user-expander__%
       _g1522115224_
       _g1522215226_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1509215095_ _g1509315097_)
      (gx#core-apply-user-expander__%
       _g1509215095_
       _g1509315097_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx14963_)
      (let* ((_path14965_
              (##structure-ref _ctx14963_ '7 gx#module-context::t '#f))
             (_path14967_
              (if (pair? _path14965_) (last _path14965_) _path14965_)))
        (if (string? _path14967_) _path14967_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path14939_ _reload?14940_ _eval?14941_)
        (let ((_ctx14943_
               ((gx#current-expander-module-import)
                _path14939_
                _reload?14940_)))
          (begin
            (if (if _ctx14943_ _eval?14941_ '#f)
                (gx#eval-module _ctx14943_)
                '#!void)
            _ctx14943_))))
    (begin
      (define gx#import-module__0
        (lambda (_path14948_)
          (let* ((_reload?14950_ '#f) (_eval?14952_ '#f))
            (gx#import-module__% _path14948_ _reload?14950_ _eval?14952_))))
      (define gx#import-module__1
        (lambda (_path14954_ _reload?14955_)
          (let ((_eval?14957_ '#f))
            (gx#import-module__% _path14954_ _reload?14955_ _eval?14957_))))
      (define gx#import-module
        (lambda _g15943_
          (let ((_g15942_ (length _g15943_)))
            (cond ((##fx= _g15942_ 1) (apply gx#import-module__0 _g15943_))
                  ((##fx= _g15942_ 2) (apply gx#import-module__1 _g15943_))
                  ((##fx= _g15942_ 3) (apply gx#import-module__% _g15943_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g15943_))))))))
  (define gx#eval-module
    (lambda (_mod14936_) ((gx#current-expander-module-eval) _mod14936_)))
  (define gx#core-eval-module
    (lambda (_obj14921_)
      (letrec ((_force-e14923_
                (lambda (_getf14932_ _e14933_)
                  (call-with-parameters
                   (lambda () (force (_getf14932_ _e14933_)))
                   gx#current-expander-context
                   _e14933_
                   gx#current-expander-phi
                   '0))))
        (let _recur14925_ ((_e14927_ _obj14921_))
          (if (##structure-instance-of? _e14927_ 'gx#module-context::t)
              (begin
                (let ((_$e14929_ (gx#core-context-prelude__% _e14927_)))
                  (if _$e14929_ (_recur14925_ _$e14929_) '#!void))
                (_force-e14923_ gx#module-context-e _e14927_))
              (if (##structure-instance-of? _e14927_ 'gx#prelude-context::t)
                  (_force-e14923_ gx#prelude-context-e _e14927_)
                  (if (gx#stx-string? _e14927_)
                      (_recur14925_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14927_)))
                      (if (gx#core-library-module-path? _e14927_)
                          (_recur14925_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14927_)))
                          (error '"Cannot eval module" _obj14921_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx14904_)
        (let _lp14906_ ((_e14908_ _ctx14904_))
          (if (let ((_$e14910_
                     (##structure-instance-of?
                      _e14908_
                      'gx#module-context::t)))
                (if _$e14910_
                    _$e14910_
                    (##structure-instance-of? _e14908_ 'gx#local-context::t)))
              (_lp14906_
               (##unchecked-structure-ref _e14908_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e14908_ 'gx#prelude-context::t)
                  _e14908_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx14917_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx14917_))))
      (define gx#core-context-prelude
        (lambda _g15945_
          (let ((_g15944_ (length _g15945_)))
            (cond ((##fx= _g15944_ 0)
                   (apply gx#core-context-prelude__0 _g15945_))
                  ((##fx= _g15944_ 1)
                   (apply gx#core-context-prelude__% _g15945_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g15945_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14894_)
      (let* ((_ht14896_ (gx#current-expander-module-registry))
             (_$e14898_ (table-ref _ht14896_ _ctx14894_ '#f)))
        (if _$e14898_
            (values _$e14898_)
            (let ((_pre14901_
                   (let ((__obj15936 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj15936 _ctx14894_)
                       __obj15936))))
              (begin
                (table-set! _ht14896_ _ctx14894_ _pre14901_)
                _pre14901_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath14775_ _reload?14776_)
        (letrec ((_import-source14778_
                  (lambda (_path14863_)
                    (begin
                      (if (member _path14863_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path14863_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g15946_ (gx#core-read-module _path14863_)))
                           (begin
                             (let ((_g15947_
                                    (if (##values? _g15946_)
                                        (##vector-length _g15946_)
                                        1)))
                               (if (not (##fx= _g15947_ 4))
                                   (error "Context expects 4 values"
                                          _g15947_)))
                             (let ((_pre14866_ (##vector-ref _g15946_ 0))
                                   (_id14867_ (##vector-ref _g15946_ 1))
                                   (_ns14868_ (##vector-ref _g15946_ 2))
                                   (_body14869_ (##vector-ref _g15946_ 3)))
                               (let* ((_prelude14874_
                                       (if (##structure-instance-of?
                                            _pre14866_
                                            'gx#prelude-context::t)
                                           _pre14866_
                                           (if (##structure-instance-of?
                                                _pre14866_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre14866_)
                                               (if (string? _pre14866_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre14866_))
                                                   (if (not _pre14866_)
                                                       (let ((_$e14871_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e14871_
                                                             _$e14871_
                                                             (let ((__obj15937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj15937 '#f)
                         __obj15937))))
               (error '"Cannot import module; unknown prelude"
                      _rpath14775_
                      _pre14866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx14876_
                                       (let ((__obj15938
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj15938
                                            _id14867_
                                            _prelude14874_
                                            _ns14868_
                                            _path14863_)
                                           __obj15938)))
                                      (_body14878_
                                       (gx#core-expand-module-begin
                                        _body14869_
                                        _ctx14876_))
                                      (_body14880_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body14878_)
                                        _path14863_
                                        _ctx14876_
                                        '())))
                                 (begin
                                   (##unchecked-structure-set!
                                    _ctx14876_
                                    (##make-promise
                                     (lambda () (gx#eval-syntax* _body14880_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##unchecked-structure-set!
                                    _ctx14876_
                                    _body14880_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path14863_
                                    _ctx14876_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id14867_
                                    _ctx14876_)
                                   _ctx14876_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path14863_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule14779_
                  (lambda (_rpath14791_)
                    (let* ((_rpath1479214799_ _rpath14791_)
                           (_E1479414803_
                            (lambda ()
                              (error '"No clause matching" _rpath1479214799_)))
                           (_K1479514851_
                            (lambda (_refs14806_ _origin14807_)
                              (let ((_ctx14809_
                                     (if _origin14807_
                                         (gx#core-import-module__%
                                          _origin14807_
                                          _reload?14776_)
                                         (gx#current-expander-context))))
                                (let _lp14811_ ((_rest14813_ _refs14806_)
                                                (_ctx14814_ _ctx14809_))
                                  (let* ((_rest1481514823_ _rest14813_)
                                         (_else1481714831_
                                          (lambda () _ctx14814_))
                                         (_K1481914839_
                                          (lambda (_rest14834_ _id14835_)
                                            (let ((_bind14837_
                                                   (gx#resolve-identifier__%
                                                    _id14835_
                                                    '0
                                                    _ctx14814_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind14837_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind14837_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp14811_
                                                   _rest14834_
                                                   (##direct-structure-ref
                                                    _bind14837_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath14791_
                                                         _id14835_
                                                         _bind14837_))))))
                                    (if (##pair? _rest1481514823_)
                                        (let ((_hd1482014842_
                                               (##car _rest1481514823_))
                                              (_tl1482114844_
                                               (##cdr _rest1481514823_)))
                                          (let* ((_id14847_ _hd1482014842_)
                                                 (_rest14849_ _tl1482114844_))
                                            (_K1481914839_
                                             _rest14849_
                                             _id14847_)))
                                        (_else1481714831_))))))))
                      (if (##pair? _rpath1479214799_)
                          (let ((_hd1479614854_ (##car _rpath1479214799_))
                                (_tl1479714856_ (##cdr _rpath1479214799_)))
                            (let* ((_origin14859_ _hd1479614854_)
                                   (_refs14861_ _tl1479714856_))
                              (_K1479514851_ _refs14861_ _origin14859_)))
                          (_E1479414803_))))))
          (let ((_$e14781_
                 (if (not _reload?14776_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath14775_
                      '#f)
                     '#f)))
            (if _$e14781_
                (values _$e14781_)
                (if (list? _rpath14775_)
                    (_import-submodule14779_ _rpath14775_)
                    (if (gx#core-library-module-path? _rpath14775_)
                        (let ((_ctx14784_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath14775_)
                                _reload?14776_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath14775_
                             _ctx14784_)
                            _ctx14784_))
                        (let* ((_npath14786_ (path-normalize _rpath14775_))
                               (_$e14788_
                                (if (not _reload?14776_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath14786_
                                     '#f)
                                    '#f)))
                          (if _$e14788_
                              (values _$e14788_)
                              (_import-source14778_ _npath14786_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath14887_)
          (let ((_reload?14889_ '#f))
            (gx#core-import-module__% _rpath14887_ _reload?14889_))))
      (define gx#core-import-module
        (lambda _g15949_
          (let ((_g15948_ (length _g15949_)))
            (cond ((##fx= _g15948_ 1)
                   (apply gx#core-import-module__0 _g15949_))
                  ((##fx= _g15948_ 2)
                   (apply gx#core-import-module__% _g15949_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g15949_))))))))
  (define gx#core-read-module
    (lambda (_path14769_)
      (with-exception-catcher
       (lambda (_exn14771_)
         (if (if (datum-parsing-exception? _exn14771_)
                 (eq? (datum-parsing-exception-filepos _exn14771_) '0)
                 '#f)
             (gx#core-read-module/lang _path14769_)
             (raise _exn14771_)))
       (lambda () (gx#core-read-module/sexp _path14769_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14629_)
      (let _lp14631_ ((_body14633_ (read-syntax-from-file _path14629_))
                      (_pre14634_ '#f)
                      (_ns14635_ '#f)
                      (_pkg14636_ '#f))
        (let* ((_e1463714661_ _body14633_)
               (_E1465314683_
                (lambda ()
                  (let ((_g15950_
                         (if _pkg14636_
                             (values _pre14634_ _ns14635_ _pkg14636_)
                             (gx#core-read-module-package
                              _path14629_
                              _pre14634_
                              _ns14635_))))
                    (begin
                      (let ((_g15951_
                             (if (##values? _g15950_)
                                 (##vector-length _g15950_)
                                 1)))
                        (if (not (##fx= _g15951_ 3))
                            (error "Context expects 3 values" _g15951_)))
                      (let ((_pre14665_ (##vector-ref _g15950_ 0))
                            (_ns14666_ (##vector-ref _g15950_ 1))
                            (_pkg14667_ (##vector-ref _g15950_ 2)))
                        (let* ((_prelude14669_
                                (if (gx#core-bound-module-prelude? _pre14665_)
                                    (gx#syntax-local-e__0 _pre14665_)
                                    (if (gx#core-library-module-path?
                                         _pre14665_)
                                        (gx#core-resolve-library-module-path
                                         _pre14665_)
                                        (if (gx#stx-string? _pre14665_)
                                            (gx#core-resolve-module-path__%
                                             _pre14665_
                                             _path14629_)
                                            (gx#stx-e _pre14665_)))))
                               (_path-id14671_
                                (gx#core-module-path->namespace _path14629_))
                               (_pkg-id14673_
                                (if _pkg14667_
                                    (string-append
                                     _pkg14667_
                                     '"/"
                                     _path-id14671_)
                                    _path-id14671_))
                               (_module-id14675_
                                (string->symbol _pkg-id14673_))
                               (_module-ns14680_
                                (let ((_$e14677_ _ns14666_))
                                  (if _$e14677_ _$e14677_ _pkg-id14673_))))
                          (values _prelude14669_
                                  _module-id14675_
                                  _module-ns14680_
                                  _body14633_)))))))
               (_E1464614712_
                (lambda ()
                  (if (gx#stx-pair? _e1463714661_)
                      (let ((_e1465414687_ (gx#syntax-e _e1463714661_)))
                        (let ((_hd1465514690_ (##car _e1465414687_))
                              (_tl1465614692_ (##cdr _e1465414687_)))
                          (if (eq? (gx#stx-e _hd1465514690_) 'package:)
                              (if (gx#stx-pair? _tl1465614692_)
                                  (let ((_e1465714695_
                                         (gx#syntax-e _tl1465614692_)))
                                    (let ((_hd1465814698_
                                           (##car _e1465714695_))
                                          (_tl1465914700_
                                           (##cdr _e1465714695_)))
                                      (let* ((_pkg14703_ _hd1465814698_)
                                             (_rest14705_ _tl1465914700_))
                                        (if '#t
                                            (let ((_pkg14710_
                                                   (if (gx#identifier?
                                                        _pkg14703_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14703_))
                                                       (if (let ((_$e14707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg14703_)))
                     (if _$e14707_ _$e14707_ (gx#stx-false? _pkg14703_)))
                   (gx#stx-e _pkg14703_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg14703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14631_
                                               _rest14705_
                                               _pre14634_
                                               _ns14635_
                                               _pkg14710_))
                                            (_E1465314683_)))))
                                  (_E1465314683_))
                              (_E1465314683_))))
                      (_E1465314683_))))
               (_E1463914741_
                (lambda ()
                  (if (gx#stx-pair? _e1463714661_)
                      (let ((_e1464714716_ (gx#syntax-e _e1463714661_)))
                        (let ((_hd1464814719_ (##car _e1464714716_))
                              (_tl1464914721_ (##cdr _e1464714716_)))
                          (if (eq? (gx#stx-e _hd1464814719_) 'namespace:)
                              (if (gx#stx-pair? _tl1464914721_)
                                  (let ((_e1465014724_
                                         (gx#syntax-e _tl1464914721_)))
                                    (let ((_hd1465114727_
                                           (##car _e1465014724_))
                                          (_tl1465214729_
                                           (##cdr _e1465014724_)))
                                      (let* ((_ns14732_ _hd1465114727_)
                                             (_rest14734_ _tl1465214729_))
                                        (if '#t
                                            (let ((_ns14739_
                                                   (if (gx#identifier?
                                                        _ns14732_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14732_))
                                                       (if (let ((_$e14736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns14732_)))
                     (if _$e14736_ _$e14736_ (gx#stx-false? _ns14732_)))
                   (gx#stx-e _ns14732_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns14732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14631_
                                               _rest14734_
                                               _pre14634_
                                               _ns14739_
                                               _pkg14636_))
                                            (_E1464614712_)))))
                                  (_E1464614712_))
                              (_E1464614712_))))
                      (_E1464614712_))))
               (_E1463814765_
                (lambda ()
                  (if (gx#stx-pair? _e1463714661_)
                      (let ((_e1464014745_ (gx#syntax-e _e1463714661_)))
                        (let ((_hd1464114748_ (##car _e1464014745_))
                              (_tl1464214750_ (##cdr _e1464014745_)))
                          (if (eq? (gx#stx-e _hd1464114748_) 'prelude:)
                              (if (gx#stx-pair? _tl1464214750_)
                                  (let ((_e1464314753_
                                         (gx#syntax-e _tl1464214750_)))
                                    (let ((_hd1464414756_
                                           (##car _e1464314753_))
                                          (_tl1464514758_
                                           (##cdr _e1464314753_)))
                                      (let* ((_prelude14761_ _hd1464414756_)
                                             (_rest14763_ _tl1464514758_))
                                        (if '#t
                                            (_lp14631_
                                             _rest14763_
                                             _prelude14761_
                                             _ns14635_
                                             _pkg14636_)
                                            (_E1463914741_)))))
                                  (_E1463914741_))
                              (_E1463914741_))))
                      (_E1463914741_)))))
          (_E1463814765_)))))
  (define gx#core-read-module/lang
    (lambda (_path14456_)
      (letrec ((_default-read-module-body14458_
                (lambda (_inp14621_)
                  (let _lp14623_ ((_body14625_ '()))
                    (let ((_next14627_ (read-syntax _inp14621_)))
                      (if (eof-object? _next14627_)
                          (reverse _body14625_)
                          (_lp14623_ (cons _next14627_ _body14625_)))))))
               (_read-body14459_
                (lambda (_inp14540_
                         _pre14541_
                         _ns14542_
                         _pkg14543_
                         _args14544_)
                  (let ((_g15952_
                         (if _pkg14543_
                             (values _pre14541_ _ns14542_ _pkg14543_)
                             (gx#core-read-module-package
                              _path14456_
                              _pre14541_
                              _ns14542_))))
                    (begin
                      (let ((_g15953_
                             (if (##values? _g15952_)
                                 (##vector-length _g15952_)
                                 1)))
                        (if (not (##fx= _g15953_ 3))
                            (error "Context expects 3 values" _g15953_)))
                      (let ((_pre14546_ (##vector-ref _g15952_ 0))
                            (_ns14547_ (##vector-ref _g15952_ 1))
                            (_pkg14548_ (##vector-ref _g15952_ 2)))
                        (let* ((_prelude14550_
                                (gx#import-module__0 _pre14546_))
                               (_read-module-body14604_
                                (let ((_$e14596_
                                       (find (lambda (_e1455114553_)
                                               (let* ((_g1455514565_
                                                       _e1455114553_)
                                                      (_else1455714573_
                                                       (lambda () '#f))
                                                      (_K1455914577_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1455514565_
                                                      'gx#module-export::t)
                                                     (let* ((_e1456014580_
                                                             (##vector-ref
                                                              _g1455514565_
                                                              '1))
                                                            (_e1456114583_
                                                             (##vector-ref
                                                              _g1455514565_
                                                              '2))
                                                            (_e1456214586_
                                                             (##vector-ref
                                                              _g1455514565_
                                                              '3)))
                                                       (if (##eq? _e1456214586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1456314589_ (##vector-ref _g1455514565_ '4)))
                     (if ((lambda (_g1459114593_)
                            (eq? _g1459114593_ 'read-module-body))
                          _e1456314589_)
                         (_K1455914577_)
                         (_else1455714573_)))
                   (_else1455714573_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1455714573_))))
                                             (##unchecked-structure-ref
                                              _prelude14550_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14596_
                                      ((lambda (_xport14599_)
                                         (let ((_proc14602_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14599_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14602_)
                                               _proc14602_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14456_
                                                _pre14546_
                                                _proc14602_))))
                                       _$e14596_)
                                      _default-read-module-body14458_)))
                               (_path-id14606_
                                (gx#core-module-path->namespace _path14456_))
                               (_pkg-id14608_
                                (if _pkg14548_
                                    (string-append
                                     _pkg14548_
                                     '"/"
                                     _path-id14606_)
                                    _path-id14606_))
                               (_module-id14610_
                                (string->symbol _pkg-id14608_))
                               (_module-ns14615_
                                (let ((_$e14612_ _ns14547_))
                                  (if _$e14612_ _$e14612_ _pkg-id14608_)))
                               (_body14618_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14604_ _inp14540_))
                                 gx#current-module-reader-path
                                 _path14456_
                                 gx#current-module-reader-args
                                 _args14544_)))
                          (values _prelude14550_
                                  _module-id14610_
                                  _module-ns14615_
                                  _body14618_)))))))
               (_string-e14460_
                (lambda (_obj14537_ _what14538_)
                  (if (string? _obj14537_)
                      _obj14537_
                      (if (symbol? _obj14537_)
                          (symbol->string _obj14537_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14538_)
                           _path14456_
                           _obj14537_)))))
               (_read-lang-args14461_
                (lambda (_inp14492_ _args14493_)
                  (let* ((_args1449414502_ _args14493_)
                         (_else1449614510_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14456_)))
                         (_K1449814525_
                          (lambda (_args14513_ _prelude14514_)
                            (let* ((_pkg14516_ (pgetq 'package: _args14513_))
                                   (_pkg14518_
                                    (if _pkg14516_
                                        (_string-e14460_ _pkg14516_ '"package")
                                        '#f))
                                   (_ns14520_ (pgetq 'namespace: _args14513_))
                                   (_ns14522_
                                    (if _ns14520_
                                        (_string-e14460_
                                         _ns14520_
                                         '"namespace")
                                        '#f)))
                              (_read-body14459_
                               _inp14492_
                               _prelude14514_
                               _ns14522_
                               _pkg14518_
                               _args14513_)))))
                    (if (##pair? _args1449414502_)
                        (let ((_hd1449914528_ (##car _args1449414502_))
                              (_tl1450014530_ (##cdr _args1449414502_)))
                          (let* ((_prelude14533_ _hd1449914528_)
                                 (_args14535_ _tl1450014530_))
                            (_K1449814525_ _args14535_ _prelude14533_)))
                        (_else1449614510_)))))
               (_read-lang14462_
                (lambda (_inp14467_)
                  (let* ((_head14469_ (read-line _inp14467_))
                         (_$e14471_ (string-index _head14469_ '#\space)))
                    (if _$e14471_
                        ((lambda (_ix14474_)
                           (let ((_lang14476_
                                  (substring _head14469_ '0 _ix14474_)))
                             (if (equal? _lang14476_ '"#lang")
                                 (let* ((_rest14478_
                                         (substring
                                          _head14469_
                                          (fx+ _ix14474_ '1)
                                          (string-length _head14469_)))
                                        (_args14489_
                                         (with-exception-catcher
                                          (lambda (_g1447914481_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14456_
                                             _g1447914481_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14478_
                                             (lambda (_g1448414486_)
                                               (read-all
                                                _g1448414486_
                                                read)))))))
                                   (_read-lang-args14461_
                                    _inp14467_
                                    _args14489_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14456_))))
                         _$e14471_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14456_)))))
               (_read-e14463_
                (lambda (_inp14465_)
                  (if (eq? (peek-char _inp14465_) '#\#)
                      (_read-lang14462_ _inp14465_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14456_)))))
        (call-with-input-file _path14456_ _read-e14463_))))
  (define gx#core-read-module-package
    (lambda (_path14410_ _pre14411_ _ns14412_)
      (letrec ((_string-e14414_
                (lambda (_e14454_)
                  (if (symbol? _e14454_)
                      (symbol->string _e14454_)
                      (if (string? _e14454_)
                          _e14454_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14454_))))))
        (let _lp14416_ ((_dir14418_ (path-directory _path14410_))
                        (_pkg-path14419_ '()))
          (let ((_gerbil.pkg14421_ (path-expand '"gerbil.pkg" _dir14418_)))
            (if (file-exists? _gerbil.pkg14421_)
                (let ((_plist14423_
                       (gx#core-library-package-plist__% _dir14418_ '#t)))
                  (if (null? _plist14423_)
                      (let ((_pkg14425_
                             (if (not (null? _pkg-path14419_))
                                 (string-join _pkg-path14419_ '"/")
                                 '#f)))
                        (values _pre14411_ _ns14412_ _pkg14425_))
                      (if (list? _plist14423_)
                          (let* ((_root14427_ (pgetq 'package: _plist14423_))
                                 (_pkg14431_
                                  (let ((_pkg-path14429_
                                         (if _root14427_
                                             (cons (_string-e14414_
                                                    _root14427_)
                                                   _pkg-path14419_)
                                             _pkg-path14419_)))
                                    (if (not (null? _pkg-path14429_))
                                        (string-join _pkg-path14429_ '"/")
                                        '#f)))
                                 (_ns14438_
                                  (let ((_ns14436_
                                         (let ((_$e14433_ _ns14412_))
                                           (if _$e14433_
                                               _$e14433_
                                               (pgetq 'namespace:
                                                      _plist14423_)))))
                                    (if _ns14436_
                                        (_string-e14414_ _ns14436_)
                                        '#f)))
                                 (_pre14443_
                                  (let ((_$e14440_ _pre14411_))
                                    (if _$e14440_
                                        _$e14440_
                                        (pgetq 'prelude: _plist14423_)))))
                            (values _pre14443_ _ns14438_ _pkg14431_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14423_))))
                (let ((_dir*14446_
                       (path-strip-trailing-directory-separator _dir14418_)))
                  (if (let ((_$e14448_ (string-empty? _dir*14446_)))
                        (if _$e14448_
                            _$e14448_
                            (equal? _dir14418_ _dir*14446_)))
                      (values _pre14411_ _ns14412_ '#f)
                      (let ((_xpath14451_ (path-strip-directory _dir*14446_))
                            (_xdir14452_ (path-directory _dir*14446_)))
                        (_lp14416_
                         _xdir14452_
                         (cons _xpath14451_ _pkg-path14419_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14408_)
      (path-strip-extension (path-strip-directory _path14408_))))
  (define gx#core-module-path->id
    (lambda (_path14406_)
      (string->symbol (gx#core-module-path->namespace _path14406_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path14385_ _rel14386_)
        (let* ((_path14388_ (gx#stx-e _stx-path14385_))
               (_path14390_
                (if (string-empty? (path-extension _path14388_))
                    (string-append _path14388_ '".ss")
                    _path14388_)))
          (gx#core-resolve-path__%
           _path14390_
           (let ((_$e14393_ (gx#stx-source _stx-path14385_)))
             (if _$e14393_ _$e14393_ _rel14386_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path14399_)
          (let ((_rel14401_ '#f))
            (gx#core-resolve-module-path__% _stx-path14399_ _rel14401_))))
      (define gx#core-resolve-module-path
        (lambda _g15955_
          (let ((_g15954_ (length _g15955_)))
            (cond ((##fx= _g15954_ 1)
                   (apply gx#core-resolve-module-path__0 _g15955_))
                  ((##fx= _g15954_ 2)
                   (apply gx#core-resolve-module-path__% _g15955_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g15955_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14312_)
      (let* ((_spath14314_ (symbol->string (gx#stx-e _libpath14312_)))
             (_spath14316_
              (substring _spath14314_ '1 (string-length _spath14314_)))
             (_ext14318_ (path-extension _spath14316_))
             (_ssi14320_
              (if (string-empty? _ext14318_)
                  (string-append _spath14316_ '".ssi")
                  (string-append (path-strip-extension _spath14316_) '".ssi")))
             (_src14322_
              (if (string-empty? _ext14318_)
                  (string-append _spath14316_ '".ss")
                  _spath14316_)))
        (let _lp14325_ ((_rest14327_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1432814337_ _rest14327_)
                 (_E1433114341_
                  (lambda () (error '"No clause matching" _rest1432814337_))))
            (let ((_K1433314372_
                   (lambda (_rest14352_ _dir14353_)
                     (letrec ((_resolve14355_
                               (lambda (_ssi14365_ _src14366_)
                                 (let ((_compiled-path14368_
                                        (path-expand _ssi14365_ _dir14353_)))
                                   (if (file-exists? _compiled-path14368_)
                                       (path-normalize _compiled-path14368_)
                                       (let ((_src-path14370_
                                              (path-expand
                                               _src14366_
                                               _dir14353_)))
                                         (if (file-exists? _src-path14370_)
                                             (path-normalize _src-path14370_)
                                             (_lp14325_ _rest14352_))))))))
                       (let ((_$e14357_
                              (gx#core-library-package-path-prefix
                               _dir14353_)))
                         (if _$e14357_
                             ((lambda (_prefix14360_)
                                (if (string-prefix? _spath14316_ _prefix14360_)
                                    (let ((_ssi14362_
                                           (substring
                                            _ssi14320_
                                            (string-length _prefix14360_)
                                            (string-length _ssi14320_)))
                                          (_src14363_
                                           (substring
                                            _src14322_
                                            (string-length _prefix14360_)
                                            (string-length _src14322_))))
                                      (_resolve14355_ _ssi14362_ _src14363_))
                                    (_lp14325_ _rest14352_)))
                              _$e14357_)
                             (_resolve14355_ _ssi14320_ _src14322_))))))
                  (_K1433214346_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14312_))))
              (let ((_try-match1433014349_
                     (lambda ()
                       (if (##null? _rest1432814337_)
                           (_K1433214346_)
                           (_E1433114341_)))))
                (if (##pair? _rest1432814337_)
                    (let ((_tl1433514377_ (##cdr _rest1432814337_))
                          (_hd1433414375_ (##car _rest1432814337_)))
                      (let ((_dir14380_ _hd1433414375_)
                            (_rest14382_ _tl1433514377_))
                        (_K1433314372_ _rest14382_ _dir14380_)))
                    (_try-match1433014349_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14305_)
      (let ((_$e14307_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14305_))))
        (if _$e14307_
            ((lambda (_pkg14310_)
               (string-append (symbol->string _pkg14310_) '"/"))
             _$e14307_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir14277_ _exists?14278_)
        (let* ((_cache14280_ (gx#core-library-package-cache))
               (_$e14282_ (table-ref _cache14280_ _dir14277_ '#f)))
          (if _$e14282_
              (values _$e14282_)
              (let* ((_gerbil.pkg14285_ (path-expand '"gerbil.pkg" _dir14277_))
                     (_plist14292_
                      (if (let ((_$e14287_ _exists?14278_))
                            (if _$e14287_
                                _$e14287_
                                (file-exists? _gerbil.pkg14285_)))
                          (let ((_e14290_
                                 (call-with-input-file
                                  _gerbil.pkg14285_
                                  read)))
                            (if (eof-object? _e14290_)
                                '()
                                (if (list? _e14290_)
                                    _e14290_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14285_
                                     _e14290_))))
                          '())))
                (begin
                  (table-set! _cache14280_ _dir14277_ _plist14292_)
                  _plist14292_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir14298_)
          (let ((_exists?14300_ '#f))
            (gx#core-library-package-plist__% _dir14298_ _exists?14300_))))
      (define gx#core-library-package-plist
        (lambda _g15957_
          (let ((_g15956_ (length _g15957_)))
            (cond ((##fx= _g15956_ 1)
                   (apply gx#core-library-package-plist__0 _g15957_))
                  ((##fx= _g15956_ 2)
                   (apply gx#core-library-package-plist__% _g15957_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g15957_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14271_ (gx#current-expander-module-library-package-cache)))
        (if _$e14271_
            (values _$e14271_)
            (let ((_cache14274_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache14274_)
                _cache14274_))))))
  (define gx#core-library-module-path?
    (lambda (_stx14268_) (gx#core-special-module-path? _stx14268_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14263_ _char14264_)
      (if (gx#identifier? _stx14263_)
          (if (interned-symbol? (gx#stx-e _stx14263_))
              (let ((_str14266_ (symbol->string (gx#stx-e _stx14263_))))
                (if (fx> (string-length _str14266_) '1)
                    (eq? (string-ref _str14266_ '0) _char14264_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14257_)
      (gx#core-bound-identifier?__%
       _stx14257_
       (lambda (_g1425814260_)
         (gx#expander-binding?__% _g1425814260_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14251_)
      (gx#core-bound-identifier?__%
       _stx14251_
       (lambda (_g1425214254_)
         (gx#expander-binding?__% _g1425214254_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14238_)
      (letrec ((_module-prelude?14240_
                (lambda (_e14246_)
                  (let ((_$e14248_
                         (##structure-instance-of?
                          _e14246_
                          'gx#module-context::t)))
                    (if _$e14248_
                        _$e14248_
                        (##structure-instance-of?
                         _e14246_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14238_
         (lambda (_g1424114243_)
           (gx#expander-binding?__% _g1424114243_ _module-prelude?14240_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in14168_ _ctx14169_ _force-weak?14170_)
        (let* ((_in1417114180_ _in14168_)
               (_E1417314184_
                (lambda () (error '"No clause matching" _in1417114180_)))
               (_K1417414197_
                (lambda (_weak?14187_ _phi14188_ _key14189_ _source14190_)
                  (gx#core-bind!__%
                   _key14189_
                   (let ((_e14192_
                          (gx#core-resolve-module-export _source14190_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e14192_ '1 gx#binding::t '#f)
                      _key14189_
                      _phi14188_
                      _e14192_
                      (##unchecked-structure-ref
                       _source14190_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e14194_ _force-weak?14170_))
                        (if _$e14194_ _$e14194_ _weak?14187_))))
                   gx#core-context-rebind?
                   _phi14188_
                   _ctx14169_))))
          (if (##structure-direct-instance-of?
               _in1417114180_
               'gx#module-import::t)
              (let* ((_e1417514200_ (##vector-ref _in1417114180_ '1))
                     (_source14203_ _e1417514200_)
                     (_e1417614205_ (##vector-ref _in1417114180_ '2))
                     (_key14208_ _e1417614205_)
                     (_e1417714210_ (##vector-ref _in1417114180_ '3))
                     (_phi14213_ _e1417714210_)
                     (_e1417814215_ (##vector-ref _in1417114180_ '4))
                     (_weak?14218_ _e1417814215_))
                (_K1417414197_
                 _weak?14218_
                 _phi14213_
                 _key14208_
                 _source14203_))
              (_E1417314184_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in14223_)
          (let* ((_ctx14225_ (gx#current-expander-context))
                 (_force-weak?14227_ '#f))
            (gx#core-bind-import!__%
             _in14223_
             _ctx14225_
             _force-weak?14227_))))
      (define gx#core-bind-import!__1
        (lambda (_in14229_ _ctx14230_)
          (let ((_force-weak?14232_ '#f))
            (gx#core-bind-import!__%
             _in14229_
             _ctx14230_
             _force-weak?14232_))))
      (define gx#core-bind-import!
        (lambda _g15959_
          (let ((_g15958_ (length _g15959_)))
            (cond ((##fx= _g15958_ 1) (apply gx#core-bind-import!__0 _g15959_))
                  ((##fx= _g15958_ 2) (apply gx#core-bind-import!__1 _g15959_))
                  ((##fx= _g15958_ 3) (apply gx#core-bind-import!__% _g15959_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g15959_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in14154_ _ctx14155_)
        (gx#core-bind-import!__% _in14154_ _ctx14155_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in14160_)
          (let ((_ctx14162_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in14160_ _ctx14162_))))
      (define gx#core-bind-weak-import!
        (lambda _g15961_
          (let ((_g15960_ (length _g15961_)))
            (cond ((##fx= _g15960_ 1)
                   (apply gx#core-bind-weak-import!__0 _g15961_))
                  ((##fx= _g15960_ 2)
                   (apply gx#core-bind-weak-import!__% _g15961_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g15961_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out14045_)
      (letrec ((_subst14047_
                (lambda (_key14093_)
                  (let* ((_key1409414102_ _key14093_)
                         (_else1409614110_ (lambda () _key14093_))
                         (_K1409814141_
                          (lambda (_mark14113_ _id14114_)
                            (let* ((_mark1411514121_ _mark14113_)
                                   (_E1411714125_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1411514121_)))
                                   (_K1411814133_
                                    (lambda (_subst14128_)
                                      (let ((_$e14130_
                                             (if _subst14128_
                                                 (table-ref
                                                  _subst14128_
                                                  _id14114_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14130_
                                            _$e14130_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14093_))))))
                              (if (##structure-instance-of?
                                   _mark1411514121_
                                   'gx#expander-mark::t)
                                  (let* ((_e1411914136_
                                          (##vector-ref _mark1411514121_ '1))
                                         (_subst14139_ _e1411914136_))
                                    (_K1411814133_ _subst14139_))
                                  (_E1411714125_))))))
                    (if (##pair? _key1409414102_)
                        (let ((_hd1409914144_ (##car _key1409414102_))
                              (_tl1410014146_ (##cdr _key1409414102_)))
                          (let* ((_id14149_ _hd1409914144_)
                                 (_mark14151_ _tl1410014146_))
                            (_K1409814141_ _mark14151_ _id14149_)))
                        (_else1409614110_))))))
        (let* ((_out1404814058_ _out14045_)
               (_E1405014062_
                (lambda () (error '"No clause matching" _out1404814058_)))
               (_K1405114069_
                (lambda (_phi14065_ _key14066_ _ctx14067_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14067_ _phi14065_)
                   (_subst14047_ _key14066_)))))
          (if (##structure-direct-instance-of?
               _out1404814058_
               'gx#module-export::t)
              (let* ((_e1405214072_ (##vector-ref _out1404814058_ '1))
                     (_ctx14075_ _e1405214072_)
                     (_e1405314077_ (##vector-ref _out1404814058_ '2))
                     (_key14080_ _e1405314077_)
                     (_e1405414082_ (##vector-ref _out1404814058_ '3))
                     (_phi14085_ _e1405414082_)
                     (_e1405514087_ (##vector-ref _out1404814058_ '4))
                     (_e1405614090_ (##vector-ref _out1404814058_ '5)))
                (_K1405114069_ _phi14085_ _key14080_ _ctx14075_))
              (_E1405014062_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out13970_ _rename13971_ _dphi13972_)
        (let* ((_out1397313983_ _out13970_)
               (_E1397513987_
                (lambda () (error '"No clause matching" _out1397313983_)))
               (_K1397613999_
                (lambda (_weak?13990_
                         _name13991_
                         _phi13992_
                         _key13993_
                         _ctx13994_)
                  (##structure
                   gx#module-import::t
                   _out13970_
                   (let ((_$e13996_ _rename13971_))
                     (if _$e13996_ _$e13996_ _name13991_))
                   (fx+ _phi13992_ _dphi13972_)
                   _weak?13990_))))
          (if (##structure-direct-instance-of?
               _out1397313983_
               'gx#module-export::t)
              (let* ((_e1397714002_ (##vector-ref _out1397313983_ '1))
                     (_ctx14005_ _e1397714002_)
                     (_e1397814007_ (##vector-ref _out1397313983_ '2))
                     (_key14010_ _e1397814007_)
                     (_e1397914012_ (##vector-ref _out1397313983_ '3))
                     (_phi14015_ _e1397914012_)
                     (_e1398014017_ (##vector-ref _out1397313983_ '4))
                     (_name14020_ _e1398014017_)
                     (_e1398114022_ (##vector-ref _out1397313983_ '5))
                     (_weak?14025_ _e1398114022_))
                (_K1397613999_
                 _weak?14025_
                 _name14020_
                 _phi14015_
                 _key14010_
                 _ctx14005_))
              (_E1397513987_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out14030_)
          (let* ((_rename14032_ '#f) (_dphi14034_ '0))
            (gx#core-module-export->import__%
             _out14030_
             _rename14032_
             _dphi14034_))))
      (define gx#core-module-export->import__1
        (lambda (_out14036_ _rename14037_)
          (let ((_dphi14039_ '0))
            (gx#core-module-export->import__%
             _out14036_
             _rename14037_
             _dphi14039_))))
      (define gx#core-module-export->import
        (lambda _g15963_
          (let ((_g15962_ (length _g15963_)))
            (cond ((##fx= _g15962_ 1)
                   (apply gx#core-module-export->import__0 _g15963_))
                  ((##fx= _g15962_ 2)
                   (apply gx#core-module-export->import__1 _g15963_))
                  ((##fx= _g15962_ 3)
                   (apply gx#core-module-export->import__% _g15963_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g15963_))))))))
  (define gx#core-expand-module%
    (lambda (_stx13898_)
      (letrec ((_make-context13900_
                (lambda (_id13951_)
                  (let* ((_super13953_ (gx#current-expander-context))
                         (_bind-id13955_ (gx#stx-e _id13951_))
                         (_mod-id13957_
                          (if (##structure-instance-of?
                               _super13953_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super13953_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id13955_)
                              _bind-id13955_))
                         (_ns13959_ (symbol->string _mod-id13957_))
                         (_path13966_
                          (if (##structure-instance-of?
                               _super13953_
                               'gx#module-context::t)
                              (let ((_path13961_
                                     (##unchecked-structure-ref
                                      _super13953_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e13963_ (pair? _path13961_)))
                                      (if _$e13963_
                                          _$e13963_
                                          (null? _path13961_)))
                                    (cons _bind-id13955_ _path13961_)
                                    (if (not _path13961_)
                                        _bind-id13955_
                                        (cons _bind-id13955_
                                              (cons _path13961_ '())))))
                              _bind-id13955_)))
                    (let ((__obj15939 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj15939
                         _mod-id13957_
                         _super13953_
                         _ns13959_
                         _path13966_)
                        __obj15939))))))
        (let* ((_e1390113911_ _stx13898_)
               (_E1390313915_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1390113911_)))
               (_E1390213947_
                (lambda ()
                  (if (gx#stx-pair? _e1390113911_)
                      (let ((_e1390413919_ (gx#syntax-e _e1390113911_)))
                        (let ((_hd1390513922_ (##car _e1390413919_))
                              (_tl1390613924_ (##cdr _e1390413919_)))
                          (if (gx#stx-pair? _tl1390613924_)
                              (let ((_e1390713927_
                                     (gx#syntax-e _tl1390613924_)))
                                (let ((_hd1390813930_ (##car _e1390713927_))
                                      (_tl1390913932_ (##cdr _e1390713927_)))
                                  (let* ((_id13935_ _hd1390813930_)
                                         (_body13937_ _tl1390913932_))
                                    (if (if (gx#identifier? _id13935_)
                                            (gx#stx-list? _body13937_)
                                            '#f)
                                        (let* ((_ctx13939_
                                                (_make-context13900_
                                                 _id13935_))
                                               (_body13941_
                                                (gx#core-expand-module-begin
                                                 _body13937_
                                                 _ctx13939_))
                                               (_body13943_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body13941_)
                                                 (gx#stx-source _stx13898_))))
                                          (begin
                                            (##unchecked-structure-set!
                                             _ctx13939_
                                             (##make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body13943_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx13939_
                                             _body13943_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id13935_
                                             _ctx13939_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id13935_)
                                              _body13943_)
                                             (gx#stx-source _stx13898_))))
                                        (_E1390313915_)))))
                              (_E1390313915_))))
                      (_E1390313915_)))))
          (_E1390213947_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13864_ _ctx13865_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx13868_
                   (gx#core-expand-head (cons '%%begin-module _body13864_)))
                  (_e1386913876_ _stx13868_)
                  (_E1387113880_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx13868_)))
                  (_E1387013894_
                   (lambda ()
                     (if (gx#stx-pair? _e1386913876_)
                         (let ((_e1387213884_ (gx#syntax-e _e1386913876_)))
                           (let ((_hd1387313887_ (##car _e1387213884_))
                                 (_tl1387413889_ (##cdr _e1387213884_)))
                             (if (if (gx#identifier? _hd1387313887_)
                                     (gx#core-identifier=?
                                      _hd1387313887_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body13892_ _tl1387413889_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx13868_)
                                           _body13892_
                                           (gx#core-expand-module-body
                                            _body13892_))
                                       (_E1387113880_)))
                                 (_E1387113880_))))
                         (_E1387113880_)))))
             (_E1387013894_))))
       gx#current-expander-context
       _ctx13865_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13660_)
      (letrec ((_expand-special13662_
                (lambda (_hd13791_ _K13792_ _rest13793_ _r13794_)
                  (let* ((_e1379513812_ _hd13791_)
                         (_E1380713816_
                          (lambda ()
                            (_K13792_
                             _rest13793_
                             (cons (gx#core-expand-top _hd13791_) _r13794_))))
                         (_E1379713828_
                          (lambda ()
                            (if (gx#stx-pair? _e1379513812_)
                                (let ((_e1380813820_
                                       (gx#syntax-e _e1379513812_)))
                                  (let ((_hd1380913823_ (##car _e1380813820_))
                                        (_tl1381013825_ (##cdr _e1380813820_)))
                                    (if (if (gx#identifier? _hd1380913823_)
                                            (gx#core-identifier=?
                                             _hd1380913823_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K13792_
                                             _rest13793_
                                             (cons _hd13791_ _r13794_))
                                            (_E1380713816_))
                                        (_E1380713816_))))
                                (_E1380713816_))))
                         (_E1379613860_
                          (lambda ()
                            (if (gx#stx-pair? _e1379513812_)
                                (let ((_e1379813832_
                                       (gx#syntax-e _e1379513812_)))
                                  (let ((_hd1379913835_ (##car _e1379813832_))
                                        (_tl1380013837_ (##cdr _e1379813832_)))
                                    (if (if (gx#identifier? _hd1379913835_)
                                            (gx#core-identifier=?
                                             _hd1379913835_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1380013837_)
                                            (let ((_e1380113840_
                                                   (gx#syntax-e
                                                    _tl1380013837_)))
                                              (let ((_hd1380213843_
                                                     (##car _e1380113840_))
                                                    (_tl1380313845_
                                                     (##cdr _e1380113840_)))
                                                (let ((_hd-bind13848_
                                                       _hd1380213843_))
                                                  (if (gx#stx-pair?
                                                       _tl1380313845_)
                                                      (let ((_e1380413850_
                                                             (gx#syntax-e
                                                              _tl1380313845_)))
                                                        (let ((_hd1380513853_
                                                               (##car _e1380413850_))
                                                              (_tl1380613855_
                                                               (##cdr _e1380413850_)))
                                                          (let ((_expr13858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1380513853_))
                    (if (gx#stx-null? _tl1380613855_)
                        (if (gx#core-bind-values? _hd-bind13848_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13848_)
                              (_K13792_ _rest13793_ (cons _hd13791_ _r13794_)))
                            (_E1379713828_))
                        (_E1379713828_)))))
              (_E1379713828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1379713828_))
                                        (_E1379713828_))))
                                (_E1379713828_)))))
                    (_E1379613860_))))
               (_expand-body13663_
                (lambda (_rbody13665_)
                  (let _lp13667_ ((_rest13669_ _rbody13665_) (_body13670_ '()))
                    (let* ((_rest1367113679_ _rest13669_)
                           (_else1367313687_ (lambda () _body13670_))
                           (_K1367513779_
                            (lambda (_rest13690_ _hd13691_)
                              (let* ((_e1369213713_ _hd13691_)
                                     (_E1370813717_
                                      (lambda ()
                                        (_lp13667_
                                         _rest13690_
                                         (cons (gx#core-expand-expression
                                                _hd13691_)
                                               _body13670_))))
                                     (_E1370413731_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1369213713_)
                                            (let ((_e1370913721_
                                                   (gx#syntax-e
                                                    _e1369213713_)))
                                              (let ((_hd1371013724_
                                                     (##car _e1370913721_))
                                                    (_tl1371113726_
                                                     (##cdr _e1370913721_)))
                                                (let ((_form13729_
                                                       _hd1371013724_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13729_
                                                       gx#special-form-binding?)
                                                      (_lp13667_
                                                       _rest13690_
                                                       (cons _hd13691_
                                                             _body13670_))
                                                      (_E1370813717_)))))
                                            (_E1370813717_))))
                                     (_E1369413743_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1369213713_)
                                            (let ((_e1370513735_
                                                   (gx#syntax-e
                                                    _e1369213713_)))
                                              (let ((_hd1370613738_
                                                     (##car _e1370513735_))
                                                    (_tl1370713740_
                                                     (##cdr _e1370513735_)))
                                                (if (if (gx#identifier?
                                                         _hd1370613738_)
                                                        (gx#core-identifier=?
                                                         _hd1370613738_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp13667_
                                                         _rest13690_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13691_)
                                                               _body13670_))
                                                        (_E1370413731_))
                                                    (_E1370413731_))))
                                            (_E1370413731_))))
                                     (_E1369313775_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1369213713_)
                                            (let ((_e1369513747_
                                                   (gx#syntax-e
                                                    _e1369213713_)))
                                              (let ((_hd1369613750_
                                                     (##car _e1369513747_))
                                                    (_tl1369713752_
                                                     (##cdr _e1369513747_)))
                                                (if (if (gx#identifier?
                                                         _hd1369613750_)
                                                        (gx#core-identifier=?
                                                         _hd1369613750_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1369713752_)
                                                        (let ((_e1369813755_
                                                               (gx#syntax-e
                                                                _tl1369713752_)))
                                                          (let ((_hd1369913758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1369813755_))
                        (_tl1370013760_ (##cdr _e1369813755_)))
                    (let ((_hd-bind13763_ _hd1369913758_))
                      (if (gx#stx-pair? _tl1370013760_)
                          (let ((_e1370113765_ (gx#syntax-e _tl1370013760_)))
                            (let ((_hd1370213768_ (##car _e1370113765_))
                                  (_tl1370313770_ (##cdr _e1370113765_)))
                              (let ((_expr13773_ _hd1370213768_))
                                (if (gx#stx-null? _tl1370313770_)
                                    (if '#t
                                        (_lp13667_
                                         _rest13690_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13763_)
                                                 (gx#core-expand-expression
                                                  _expr13773_))
                                                (gx#stx-source _hd13691_))
                                               _body13670_))
                                        (_E1369413743_))
                                    (_E1369413743_)))))
                          (_E1369413743_)))))
                (_E1369413743_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1369413743_))))
                                            (_E1369413743_)))))
                                (_E1369313775_)))))
                      (if (##pair? _rest1367113679_)
                          (let ((_hd1367613782_ (##car _rest1367113679_))
                                (_tl1367713784_ (##cdr _rest1367113679_)))
                            (let* ((_hd13787_ _hd1367613782_)
                                   (_rest13789_ _tl1367713784_))
                              (_K1367513779_ _rest13789_ _hd13787_)))
                          (_else1367313687_)))))))
        (_expand-body13663_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13660_)
          _expand-special13662_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13503_
             _expanded?13504_
             _method13505_
             _current-phi13506_
             _expand113507_)
      (begin
        (declare (not safe))
        (letrec ((_K13509_
                  (lambda (_rest13627_ _r13628_)
                    (let* ((_e1362913636_ _rest13627_)
                           (_E1363113640_ (lambda () _r13628_))
                           (_E1363013656_
                            (lambda ()
                              (if (gx#stx-pair? _e1362913636_)
                                  (let ((_e1363213644_
                                         (gx#syntax-e _e1362913636_)))
                                    (let ((_hd1363313647_
                                           (##car _e1363213644_))
                                          (_tl1363413649_
                                           (##cdr _e1363213644_)))
                                      (let* ((_hd13652_ _hd1363313647_)
                                             (_rest13654_ _tl1363413649_))
                                        (if '#t
                                            (_step13510_
                                             _hd13652_
                                             _rest13654_
                                             _r13628_)
                                            (_E1363113640_)))))
                                  (_E1363113640_)))))
                      (_E1363013656_))))
                 (_step13510_
                  (lambda (_hd13541_ _rest13542_ _r13543_)
                    (let* ((_e1354413562_ _hd13541_)
                           (_E1355713566_
                            (lambda ()
                              (if (_expanded?13504_ (gx#stx-e _hd13541_))
                                  (_K13509_
                                   _rest13542_
                                   (cons (gx#stx-e _hd13541_) _r13543_))
                                  (_expand113507_
                                   _hd13541_
                                   _K13509_
                                   _rest13542_
                                   _r13543_))))
                           (_E1355313582_
                            (lambda ()
                              (if (gx#stx-pair? _e1354413562_)
                                  (let ((_e1355813570_
                                         (gx#syntax-e _e1354413562_)))
                                    (let ((_hd1355913573_
                                           (##car _e1355813570_))
                                          (_tl1356013575_
                                           (##cdr _e1355813570_)))
                                      (let* ((_macro13578_ _hd1355913573_)
                                             (_body13580_ _tl1356013575_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro13578_
                                             gx#syntax-binding?)
                                            (_K13509_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro13578_)
                                                    _hd13541_
                                                    _method13505_)
                                                   _rest13542_)
                                             _r13543_)
                                            (_E1355713566_)))))
                                  (_E1355713566_))))
                           (_E1354613596_
                            (lambda ()
                              (if (gx#stx-pair? _e1354413562_)
                                  (let ((_e1355413586_
                                         (gx#syntax-e _e1354413562_)))
                                    (let ((_hd1355513589_
                                           (##car _e1355413586_))
                                          (_tl1355613591_
                                           (##cdr _e1355413586_)))
                                      (if (eq? (gx#stx-e _hd1355513589_)
                                               'begin:)
                                          (let ((_body13594_ _tl1355613591_))
                                            (if '#t
                                                (_K13509_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest13542_
                                                  _body13594_)
                                                 _r13543_)
                                                (_E1355313582_)))
                                          (_E1355313582_))))
                                  (_E1355313582_))))
                           (_E1354513623_
                            (lambda ()
                              (if (gx#stx-pair? _e1354413562_)
                                  (let ((_e1354713600_
                                         (gx#syntax-e _e1354413562_)))
                                    (let ((_hd1354813603_
                                           (##car _e1354713600_))
                                          (_tl1354913605_
                                           (##cdr _e1354713600_)))
                                      (if (eq? (gx#stx-e _hd1354813603_) 'phi:)
                                          (if (gx#stx-pair? _tl1354913605_)
                                              (let ((_e1355013608_
                                                     (gx#syntax-e
                                                      _tl1354913605_)))
                                                (let ((_hd1355113611_
                                                       (##car _e1355013608_))
                                                      (_tl1355213613_
                                                       (##cdr _e1355013608_)))
                                                  (let* ((_dphi13616_
                                                          _hd1355113611_)
                                                         (_body13618_
                                                          _tl1355213613_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi13616_)
                                                        (let ((_rbody13621_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K13509_ _body13618_ '()))
                        _current-phi13506_
                        (fx+ (gx#stx-e _dphi13616_) (_current-phi13506_)))))
                  (_K13509_ _rest13542_ (foldr1 cons _r13543_ _rbody13621_)))
                (_E1354613596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1354613596_))
                                          (_E1354613596_))))
                                  (_E1354613596_)))))
                      (_E1354513623_)))))
          (let* ((_e1351113518_ _stx13503_)
                 (_E1351313522_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1351113518_)))
                 (_E1351213537_
                  (lambda ()
                    (if (gx#stx-pair? _e1351113518_)
                        (let ((_e1351413526_ (gx#syntax-e _e1351113518_)))
                          (let ((_hd1351513529_ (##car _e1351413526_))
                                (_tl1351613531_ (##cdr _e1351413526_)))
                            (let ((_body13534_ _tl1351613531_))
                              (if '#t
                                  (if (_current-phi13506_)
                                      (_K13509_ _body13534_ '())
                                      (call-with-parameters
                                       (lambda () (_K13509_ _body13534_ '()))
                                       _current-phi13506_
                                       (gx#current-expander-phi)))
                                  (_E1351313522_)))))
                        (_E1351313522_)))))
            (_E1351213537_))))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx13170_ _internal-expand?13171_)
        (begin
          (declare (not safe))
          (letrec ((_expand113173_
                    (lambda (_hd13483_ _K13484_ _rest13485_ _r13486_)
                      (if (gx#core-bound-module? _hd13483_)
                          (_import113174_
                           (gx#syntax-local-e__0 _hd13483_)
                           _K13484_
                           _rest13485_
                           _r13486_)
                          (if (gx#core-library-module-path? _hd13483_)
                              (_import113174_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _hd13483_))
                               _K13484_
                               _rest13485_
                               _r13486_)
                              (let ((_e13488_ (gx#stx-e _hd13483_)))
                                (if (string? _e13488_)
                                    (_import113174_
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__%
                                       _hd13483_
                                       (gx#stx-source _stx13170_)))
                                     _K13484_
                                     _rest13485_
                                     _r13486_)
                                    (if (##structure-instance-of?
                                         _e13488_
                                         'gx#module-context::t)
                                        (_K13484_
                                         _rest13485_
                                         (cons _e13488_ _r13486_))
                                        (if (pair? _e13488_)
                                            (let ((_$e13490_
                                                   (gx#stx-e (car _e13488_))))
                                              (if (eq? 'spec: _$e13490_)
                                                  (_import-spec13177_
                                                   _hd13483_
                                                   _K13484_
                                                   _rest13485_
                                                   _r13486_)
                                                  (if (eq? 'in: _$e13490_)
                                                      (_import-submodule13175_
                                                       _hd13483_
                                                       _K13484_
                                                       _rest13485_
                                                       _r13486_)
                                                      (if (eq? 'runtime:
                                                               _$e13490_)
                                                          (_import-runtime13176_
                                                           _hd13483_
                                                           _K13484_
                                                           _rest13485_
                                                           _r13486_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; illegal import"
                                                           _stx13170_
                                                           _hd13483_)))))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal import"
                                             _stx13170_
                                             _hd13483_)))))))))
                   (_import113174_
                    (lambda (_ctx13472_ _K13473_ _rest13474_ _r13475_)
                      (let ((_dphi13477_
                             (fx- (gx#current-import-expander-phi)
                                  (gx#current-expander-phi))))
                        (_K13473_
                         _rest13474_
                         (cons (##structure
                                gx#import-set::t
                                _ctx13472_
                                _dphi13477_
                                (map (lambda (_g1347813480_)
                                       (gx#core-module-export->import__%
                                        _g1347813480_
                                        '#f
                                        _dphi13477_))
                                     (##unchecked-structure-ref
                                      _ctx13472_
                                      '9
                                      gx#module-context::t
                                      '#f)))
                               _r13475_)))))
                   (_import-submodule13175_
                    (lambda (_hd13439_ _K13440_ _rest13441_ _r13442_)
                      (let* ((_e1344313450_ _hd13439_)
                             (_E1344513454_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1344313450_)))
                             (_E1344413468_
                              (lambda ()
                                (if (gx#stx-pair? _e1344313450_)
                                    (let ((_e1344613458_
                                           (gx#syntax-e _e1344313450_)))
                                      (let ((_hd1344713461_
                                             (##car _e1344613458_))
                                            (_tl1344813463_
                                             (##cdr _e1344613458_)))
                                        (let ((_spath13466_ _tl1344813463_))
                                          (if '#t
                                              (_import113174_
                                               (_import-spec-source13178_
                                                _spath13466_)
                                               _K13440_
                                               _rest13441_
                                               _r13442_)
                                              (_E1344513454_)))))
                                    (_E1344513454_)))))
                        (_E1344413468_))))
                   (_import-runtime13176_
                    (lambda (_hd13406_ _K13407_ _rest13408_ _r13409_)
                      (let* ((_e1341013417_ _hd13406_)
                             (_E1341213421_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1341013417_)))
                             (_E1341113435_
                              (lambda ()
                                (if (gx#stx-pair? _e1341013417_)
                                    (let ((_e1341313425_
                                           (gx#syntax-e _e1341013417_)))
                                      (let ((_hd1341413428_
                                             (##car _e1341313425_))
                                            (_tl1341513430_
                                             (##cdr _e1341313425_)))
                                        (let ((_spath13433_ _tl1341513430_))
                                          (if '#t
                                              (_K13407_
                                               _rest13408_
                                               (cons (_import-spec-source13178_
                                                      _spath13433_)
                                                     _r13409_))
                                              (_E1341213421_)))))
                                    (_E1341213421_)))))
                        (_E1341113435_))))
                   (_import-spec13177_
                    (lambda (_hd13245_ _K13246_ _rest13247_ _r13248_)
                      (let* ((_e1324913266_ _hd13245_)
                             (_E1325813270_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1324913266_)))
                             (_E1325113380_
                              (lambda ()
                                (if (gx#stx-pair? _e1324913266_)
                                    (let ((_e1325913274_
                                           (gx#syntax-e _e1324913266_)))
                                      (let ((_hd1326013277_
                                             (##car _e1325913274_))
                                            (_tl1326113279_
                                             (##cdr _e1325913274_)))
                                        (if (gx#stx-pair? _tl1326113279_)
                                            (let ((_e1326213282_
                                                   (gx#syntax-e
                                                    _tl1326113279_)))
                                              (let ((_hd1326313285_
                                                     (##car _e1326213282_))
                                                    (_tl1326413287_
                                                     (##cdr _e1326213282_)))
                                                (let* ((_path13290_
                                                        _hd1326313285_)
                                                       (_specs13292_
                                                        _tl1326413287_))
                                                  (if '#t
                                                      (let ((_src-ctx13294_
                                                             (_import-spec-source13178_
                                                              _path13290_))
                                                            (_exports13295_
                                                             (make-table))
                                                            (_specs13296_
                                                             (gx#syntax->list
                                                              _specs13292_)))
                                                        (begin
                                                          (for-each
                                                           (lambda (_out13298_)
                                                             (table-set!
                                                              _exports13295_
                                                              (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _out13298_
                             '3
                             gx#module-export::t
                             '#f)
                            (##unchecked-structure-ref
                             _out13298_
                             '4
                             gx#module-export::t
                             '#f))
                      _out13298_))
                   (##unchecked-structure-ref
                    _src-ctx13294_
                    '9
                    gx#module-context::t
                    '#f))
                  (_K13246_
                   _rest13247_
                   (foldl1 (lambda (_spec13300_ _r13301_)
                             (let* ((_e1330213318_ _spec13300_)
                                    (_E1330413322_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e1330213318_)))
                                    (_E1330313376_
                                     (lambda ()
                                       (if (gx#stx-pair? _e1330213318_)
                                           (let ((_e1330513326_
                                                  (gx#syntax-e _e1330213318_)))
                                             (let ((_hd1330613329_
                                                    (##car _e1330513326_))
                                                   (_tl1330713331_
                                                    (##cdr _e1330513326_)))
                                               (let ((_phi13334_
                                                      _hd1330613329_))
                                                 (if (gx#stx-pair?
                                                      _tl1330713331_)
                                                     (let ((_e1330813336_
                                                            (gx#syntax-e
                                                             _tl1330713331_)))
                                                       (let ((_hd1330913339_
                                                              (##car _e1330813336_))
                                                             (_tl1331013341_
                                                              (##cdr _e1330813336_)))
                                                         (let ((_name13344_
                                                                _hd1330913339_))
                                                           (if (gx#stx-pair?
                                                                _tl1331013341_)
                                                               (let ((_e1331113346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1331013341_)))
                         (let ((_hd1331213349_ (##car _e1331113346_))
                               (_tl1331313351_ (##cdr _e1331113346_)))
                           (let ((_src-phi13354_ _hd1331213349_))
                             (if (gx#stx-pair? _tl1331313351_)
                                 (let ((_e1331413356_
                                        (gx#syntax-e _tl1331313351_)))
                                   (let ((_hd1331513359_ (##car _e1331413356_))
                                         (_tl1331613361_
                                          (##cdr _e1331413356_)))
                                     (let ((_src-name13364_ _hd1331513359_))
                                       (if (gx#stx-null? _tl1331613361_)
                                           (if (if (gx#stx-fixnum?
                                                    _src-phi13354_)
                                                   (if (gx#identifier?
                                                        _src-name13364_)
                                                       (if (gx#stx-fixnum?
                                                            _phi13334_)
                                                           (gx#identifier?
                                                            _name13344_)
                                                           '#f)
                                                       '#f)
                                                   '#f)
                                               (let ((_src-phi13366_
                                                      (gx#stx-e
                                                       _src-phi13354_))
                                                     (_src-name13367_
                                                      (gx#core-identifier-key
                                                       _src-name13364_))
                                                     (_phi13368_
                                                      (gx#stx-e _phi13334_))
                                                     (_name13369_
                                                      (gx#core-identifier-key
                                                       _name13344_)))
                                                 (let ((_$e13371_
                                                        (table-ref
                                                         _exports13295_
                                                         (cons _src-phi13366_
                                                               _src-name13367_)
                                                         '#f)))
                                                   (if _$e13371_
                                                       ((lambda (_out13374_)
                                                          (cons (gx#core-module-export->import__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out13374_
                         _name13369_
                         (fx- _phi13368_ _src-phi13366_))
                        _r13301_))
                _$e13371_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; no matching export"
                _stx13170_
                _hd13245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1330413322_))
                                           (_E1330413322_)))))
                                 (_E1330413322_)))))
                       (_E1330413322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1330413322_)))))
                                           (_E1330413322_)))))
                               (_E1330313376_)))
                           _r13248_
                           _specs13296_))))
              (_E1325813270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1325813270_))))
                                    (_E1325813270_))))
                             (_E1325013402_
                              (lambda ()
                                (if (gx#stx-pair? _e1324913266_)
                                    (let ((_e1325213384_
                                           (gx#syntax-e _e1324913266_)))
                                      (let ((_hd1325313387_
                                             (##car _e1325213384_))
                                            (_tl1325413389_
                                             (##cdr _e1325213384_)))
                                        (if (gx#stx-pair? _tl1325413389_)
                                            (let ((_e1325513392_
                                                   (gx#syntax-e
                                                    _tl1325413389_)))
                                              (let ((_hd1325613395_
                                                     (##car _e1325513392_))
                                                    (_tl1325713397_
                                                     (##cdr _e1325513392_)))
                                                (let ((_path13400_
                                                       _hd1325613395_))
                                                  (if (gx#stx-null?
                                                       _tl1325713397_)
                                                      (if '#t
                                                          (_K13246_
                                                           _rest13247_
                                                           (cons (_import-spec-source13178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _path13400_)
                         _r13248_))
                  (_E1325113380_))
              (_E1325113380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1325113380_))))
                                    (_E1325113380_)))))
                        (_E1325013402_))))
                   (_import-spec-source13178_
                    (lambda (_spath13243_)
                      (gx#core-import-nested-module _spath13243_ _stx13170_)))
                   (_import!13179_
                    (lambda (_rbody13192_)
                      (letrec* ((_current-ctx13194_
                                 (gx#current-expander-context))
                                (_deps13195_ (make-table 'test: eq?))
                                (_bind!13196_
                                 (lambda (_hd13241_)
                                   (gx#core-bind-import!__1
                                    _hd13241_
                                    _current-ctx13194_))))
                        (let _lp13198_ ((_rest13200_ _rbody13192_)
                                        (_body13201_ '()))
                          (let* ((_rest1320213210_ _rest13200_)
                                 (_else1320413220_
                                  (lambda ()
                                    (begin
                                      (if (##structure-instance-of?
                                           _current-ctx13194_
                                           'gx#module-context::t)
                                          (##unchecked-structure-set!
                                           _current-ctx13194_
                                           (foldl1 cons
                                                   (##unchecked-structure-ref
                                                    _current-ctx13194_
                                                    '8
                                                    gx#module-context::t
                                                    '#f)
                                                   _body13201_)
                                           '8
                                           gx#module-context::t
                                           '#f)
                                          '#!void)
                                      (table-for-each
                                       (lambda (_ctx13218_ _g15964_)
                                         (gx#eval-module _ctx13218_))
                                       _deps13195_)
                                      _body13201_)))
                                 (_K1320613229_
                                  (lambda (_rest13223_ _hd13224_)
                                    (begin
                                      (if (##structure-direct-instance-of?
                                           _hd13224_
                                           'gx#module-import::t)
                                          (begin
                                            (_bind!13196_ _hd13224_)
                                            (if (if (fxpositive?
                                                     (##unchecked-structure-ref
                                                      _hd13224_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))
                                                    (fxzero? (##unchecked-structure-ref
                                                              (##unchecked-structure-ref
                                                               _hd13224_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '3
                                                              gx#module-export::t
                                                              '#f))
                                                    '#f)
                                                (table-set!
                                                 _deps13195_
                                                 (##unchecked-structure-ref
                                                  (##unchecked-structure-ref
                                                   _hd13224_
                                                   '1
                                                   gx#module-import::t
                                                   '#f)
                                                  '1
                                                  gx#module-export::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (if (##structure-direct-instance-of?
                                               _hd13224_
                                               'gx#import-set::t)
                                              (begin
                                                (for-each
                                                 _bind!13196_
                                                 (##unchecked-structure-ref
                                                  _hd13224_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                                (if (fxpositive?
                                                     (##unchecked-structure-ref
                                                      _hd13224_
                                                      '2
                                                      gx#import-set::t
                                                      '#f))
                                                    (table-set!
                                                     _deps13195_
                                                     (##unchecked-structure-ref
                                                      _hd13224_
                                                      '1
                                                      gx#import-set::t
                                                      '#f)
                                                     '#t)
                                                    '#!void))
                                              (let ((_$e13226_
                                                     (##structure-instance-of?
                                                      _hd13224_
                                                      'gx#module-context::t)))
                                                (if _$e13226_
                                                    _$e13226_
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Unexpected import"
                                                     _stx13170_
                                                     _hd13224_)))))
                                      (_lp13198_
                                       _rest13223_
                                       (cons _hd13224_ _body13201_))))))
                            (if (##pair? _rest1320213210_)
                                (let ((_hd1320713232_ (##car _rest1320213210_))
                                      (_tl1320813234_
                                       (##cdr _rest1320213210_)))
                                  (let* ((_hd13237_ _hd1320713232_)
                                         (_rest13239_ _tl1320813234_))
                                    (_K1320613229_ _rest13239_ _hd13237_)))
                                (_else1320413220_)))))))
                   (_expanded-import?13180_
                    (lambda (_e13184_)
                      (let ((_$e13186_
                             (##structure-direct-instance-of?
                              _e13184_
                              'gx#import-set::t)))
                        (if _$e13186_
                            _$e13186_
                            (let ((_$e13189_
                                   (##structure-direct-instance-of?
                                    _e13184_
                                    'gx#module-import::t)))
                              (if _$e13189_
                                  _$e13189_
                                  (##structure-instance-of?
                                   _e13184_
                                   'gx#module-context::t))))))))
            (let ((_rbody13182_
                   (gx#core-expand-import/export
                    _stx13170_
                    _expanded-import?13180_
                    'apply-import-expander
                    gx#current-import-expander-phi
                    _expand113173_)))
              (if _internal-expand?13171_
                  (reverse _rbody13182_)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#import (_import!13179_ _rbody13182_))
                   (gx#stx-source _stx13170_))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx13496_)
          (let ((_internal-expand?13498_ '#f))
            (gx#core-expand-import%__% _stx13496_ _internal-expand?13498_))))
      (define gx#core-expand-import%
        (lambda _g15966_
          (let ((_g15965_ (length _g15966_)))
            (cond ((##fx= _g15965_ 1)
                   (apply gx#core-expand-import%__0 _g15966_))
                  ((##fx= _g15965_ 2)
                   (apply gx#core-expand-import%__% _g15966_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g15966_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath13097_ _where13098_)
      (let* ((_e1309913106_ _spath13097_)
             (_E1310113110_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1309913106_)))
             (_E1310013165_
              (lambda ()
                (if (gx#stx-pair? _e1309913106_)
                    (let ((_e1310213114_ (gx#syntax-e _e1309913106_)))
                      (let ((_hd1310313117_ (##car _e1310213114_))
                            (_tl1310413119_ (##cdr _e1310213114_)))
                        (let* ((_origin13122_ _hd1310313117_)
                               (_sub13124_ _tl1310413119_))
                          (if '#t
                              (let ((_origin-ctx13126_
                                     (if (gx#stx-false? _origin13122_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13122_))))
                                (let _lp13128_ ((_rest13130_ _sub13124_)
                                                (_ctx13131_ _origin-ctx13126_))
                                  (let* ((_e1313213139_ _rest13130_)
                                         (_E1313413143_ (lambda () _ctx13131_))
                                         (_E1313313161_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1313213139_)
                                                (let ((_e1313513147_
                                                       (gx#syntax-e
                                                        _e1313213139_)))
                                                  (let ((_hd1313613150_
                                                         (##car _e1313513147_))
                                                        (_tl1313713152_
                                                         (##cdr _e1313513147_)))
                                                    (let* ((_id13155_
                                                            _hd1313613150_)
                                                           (_rest13157_
                                                            _tl1313713152_))
                                                      (if '#t
                                                          (let ((_bind13159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13155_ '0 _ctx13131_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind13159_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind13159_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13098_
                           _spath13097_
                           _id13155_))
                      (_lp13128_
                       _rest13157_
                       (##direct-structure-ref
                        _bind13159_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1313413143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1313413143_)))))
                                    (_E1313313161_))))
                              (_E1310113110_)))))
                    (_E1310113110_)))))
        (_E1310013165_))))
  (define gx#core-expand-import-source
    (lambda (_hd13095_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13095_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx12606_ _internal-expand?12607_)
        (letrec* ((_make-export__1590415905_
                   (lambda (_bind13043_ _phi13044_ _ctx13045_ _name13046_)
                     (let* ((_key13048_
                             (##unchecked-structure-ref
                              _bind13043_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key13050_
                             (if _name13046_
                                 (gx#core-identifier-key _name13046_)
                                 _key13048_)))
                       (##structure
                        gx#module-export::t
                        _ctx13045_
                        _key13048_
                        _phi13044_
                        _export-key13050_
                        (let ((_$e13053_
                               (##structure-instance-of?
                                _bind13043_
                                'gx#extern-binding::t)))
                          (if _$e13053_
                              _$e13053_
                              (##structure-direct-instance-of?
                               _bind13043_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1590615909_
                   (lambda (_bind13059_)
                     (let* ((_phi13061_ (gx#current-export-expander-phi))
                            (_ctx13063_ (gx#current-expander-context))
                            (_name13065_ '#f))
                       (_make-export__1590415905_
                        _bind13059_
                        _phi13061_
                        _ctx13063_
                        _name13065_))))
                  (_make-export__1__1590715910_
                   (lambda (_bind13067_ _phi13068_)
                     (let* ((_ctx13070_ (gx#current-expander-context))
                            (_name13072_ '#f))
                       (_make-export__1590415905_
                        _bind13067_
                        _phi13068_
                        _ctx13070_
                        _name13072_))))
                  (_make-export__2__1590815911_
                   (lambda (_bind13074_ _phi13075_ _ctx13076_)
                     (let ((_name13078_ '#f))
                       (_make-export__1590415905_
                        _bind13074_
                        _phi13075_
                        _ctx13076_
                        _name13078_))))
                  (_make-export12609_
                   (lambda _g15968_
                     (let ((_g15967_ (length _g15968_)))
                       (cond ((##fx= _g15967_ 1)
                              (apply _make-export__0__1590615909_ _g15968_))
                             ((##fx= _g15967_ 2)
                              (apply _make-export__1__1590715910_ _g15968_))
                             ((##fx= _g15967_ 3)
                              (apply _make-export__2__1590815911_ _g15968_))
                             ((##fx= _g15967_ 4)
                              (apply _make-export__1590415905_ _g15968_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g15968_))))))
                  (_expand112610_
                   (lambda (_hd12756_ _K12757_ _rest12758_ _r12759_)
                     (let* ((_e1276012792_ _hd12756_)
                            (_E1278712796_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx12606_
                                _hd12756_)))
                            (_E1277712875_
                             (lambda ()
                               (if (gx#stx-pair? _e1276012792_)
                                   (let ((_e1278812800_
                                          (gx#syntax-e _e1276012792_)))
                                     (let ((_hd1278912803_
                                            (##car _e1278812800_))
                                           (_tl1279012805_
                                            (##cdr _e1278812800_)))
                                       (if (eq? (gx#stx-e _hd1278912803_)
                                                'import:)
                                           (let ((_in12808_ _tl1279012805_))
                                             (if (gx#stx-list? _in12808_)
                                                 (let _lp12810_ ((_in-rest12812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in12808_)
                         (_r12813_ _r12759_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1281412821_
                                                           _in-rest12812_)
                                                          (_E1281612825_
                                                           (lambda ()
                                                             (_K12757_
                                                              _rest12758_
                                                              _r12813_)))
                                                          (_E1281512871_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1281412821_)
                         (let ((_e1281712829_ (gx#syntax-e _e1281412821_)))
                           (let ((_hd1281812832_ (##car _e1281712829_))
                                 (_tl1281912834_ (##cdr _e1281712829_)))
                             (let* ((_hd12837_ _hd1281812832_)
                                    (_in-rest12839_ _tl1281912834_))
                               (if '#t
                                   (let ((_src12869_
                                          (if (gx#core-bound-module? _hd12837_)
                                              (gx#syntax-local-e__0 _hd12837_)
                                              (if (gx#core-library-module-path?
                                                   _hd12837_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd12837_))
                                                  (if (gx#stx-string?
                                                       _hd12837_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd12837_
                                                        (gx#stx-source
                                                         _stx12606_)))
                                                      (let* ((_e1284012847_
                                                              _hd12837_)
                                                             (_E1284212851_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx12606_
                         _hd12837_)))
                     (_E1284112865_
                      (lambda ()
                        (if (gx#stx-pair? _e1284012847_)
                            (let ((_e1284312855_ (gx#syntax-e _e1284012847_)))
                              (let ((_hd1284412858_ (##car _e1284312855_))
                                    (_tl1284512860_ (##cdr _e1284312855_)))
                                (if (eq? (gx#stx-e _hd1284412858_) 'in:)
                                    (let ((_spath12863_ _tl1284512860_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath12863_
                                           _stx12606_)
                                          (_E1284212851_)))
                                    (_E1284212851_))))
                            (_E1284212851_)))))
                (_E1284112865_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp12810_
                                      _in-rest12839_
                                      (_export-imports12611_
                                       _src12869_
                                       _r12813_)))
                                   (_E1281612825_)))))
                         (_E1281612825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1281512871_)))
                                                 (_E1278712796_)))
                                           (_E1278712796_))))
                                   (_E1278712796_))))
                            (_E1276412914_
                             (lambda ()
                               (if (gx#stx-pair? _e1276012792_)
                                   (let ((_e1277812879_
                                          (gx#syntax-e _e1276012792_)))
                                     (let ((_hd1277912882_
                                            (##car _e1277812879_))
                                           (_tl1278012884_
                                            (##cdr _e1277812879_)))
                                       (if (eq? (gx#stx-e _hd1277912882_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1278012884_)
                                               (let ((_e1278112887_
                                                      (gx#syntax-e
                                                       _tl1278012884_)))
                                                 (let ((_hd1278212890_
                                                        (##car _e1278112887_))
                                                       (_tl1278312892_
                                                        (##cdr _e1278112887_)))
                                                   (let ((_id12895_
                                                          _hd1278212890_))
                                                     (if (gx#stx-pair?
                                                          _tl1278312892_)
                                                         (let ((_e1278412897_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1278312892_)))
                   (let ((_hd1278512900_ (##car _e1278412897_))
                         (_tl1278612902_ (##cdr _e1278412897_)))
                     (let ((_name12905_ _hd1278512900_))
                       (if (gx#stx-null? _tl1278612902_)
                           (if '#t
                               (let* ((_phi12907_
                                       (gx#current-export-expander-phi))
                                      (_$e12909_
                                       (gx#core-resolve-identifier__1
                                        _id12895_
                                        _phi12907_)))
                                 (if _$e12909_
                                     ((lambda (_bind12912_)
                                        (_K12757_
                                         _rest12758_
                                         (cons (_make-export__1590415905_
                                                _bind12912_
                                                _phi12907_
                                                (gx#current-expander-context)
                                                _name12905_)
                                               _r12759_)))
                                      _$e12909_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx12606_
                                      _hd12756_
                                      _id12895_)))
                               (_E1277712875_))
                           (_E1277712875_)))))
                 (_E1277712875_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1277712875_))
                                           (_E1277712875_))))
                                   (_E1277712875_))))
                            (_E1276312963_
                             (lambda ()
                               (if (gx#stx-pair? _e1276012792_)
                                   (let ((_e1276512918_
                                          (gx#syntax-e _e1276012792_)))
                                     (let ((_hd1276612921_
                                            (##car _e1276512918_))
                                           (_tl1276712923_
                                            (##cdr _e1276512918_)))
                                       (if (eq? (gx#stx-e _hd1276612921_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1276712923_)
                                               (let ((_e1276812926_
                                                      (gx#syntax-e
                                                       _tl1276712923_)))
                                                 (let ((_hd1276912929_
                                                        (##car _e1276812926_))
                                                       (_tl1277012931_
                                                        (##cdr _e1276812926_)))
                                                   (let ((_phi12934_
                                                          _hd1276912929_))
                                                     (if (gx#stx-pair?
                                                          _tl1277012931_)
                                                         (let ((_e1277112936_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1277012931_)))
                   (let ((_hd1277212939_ (##car _e1277112936_))
                         (_tl1277312941_ (##cdr _e1277112936_)))
                     (let ((_id12944_ _hd1277212939_))
                       (if (gx#stx-pair? _tl1277312941_)
                           (let ((_e1277412946_ (gx#syntax-e _tl1277312941_)))
                             (let ((_hd1277512949_ (##car _e1277412946_))
                                   (_tl1277612951_ (##cdr _e1277412946_)))
                               (let ((_name12954_ _hd1277512949_))
                                 (if (gx#stx-null? _tl1277612951_)
                                     (if (if (gx#stx-fixnum? _phi12934_)
                                             (if (gx#identifier? _id12944_)
                                                 (gx#identifier? _name12954_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi12956_
                                                 (gx#stx-e _phi12934_))
                                                (_$e12958_
                                                 (gx#core-resolve-identifier__1
                                                  _id12944_
                                                  _phi12956_)))
                                           (if _$e12958_
                                               ((lambda (_bind12961_)
                                                  (_K12757_
                                                   _rest12758_
                                                   (cons (_make-export__1590415905_
                                                          _bind12961_
                                                          _phi12956_
                                                          (gx#current-expander-context)
                                                          _name12954_)
                                                         _r12759_)))
                                                _$e12958_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx12606_
                                                _hd12756_
                                                _id12944_)))
                                         (_E1276412914_))
                                     (_E1276412914_)))))
                           (_E1276412914_)))))
                 (_E1276412914_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1276412914_))
                                           (_E1276412914_))))
                                   (_E1276412914_))))
                            (_E1276212974_
                             (lambda ()
                               (let ((_id12967_ _e1276012792_))
                                 (if (gx#identifier? _id12967_)
                                     (let ((_$e12969_
                                            (gx#core-resolve-identifier__1
                                             _id12967_
                                             (gx#current-export-expander-phi))))
                                       (if _$e12969_
                                           ((lambda (_bind12972_)
                                              (_K12757_
                                               _rest12758_
                                               (cons (_make-export__0__1590615909_
                                                      _bind12972_)
                                                     _r12759_)))
                                            _$e12969_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx12606_
                                            _hd12756_)))
                                     (_E1276312963_)))))
                            (_E1276113038_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1276012792_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx12978_
                                               (gx#current-expander-context))
                                              (_current-phi12980_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx12982_
                                               (gx#core-context-shift
                                                _current-ctx12978_
                                                _current-phi12980_))
                                              (_phi-bind12984_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx12982_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp12987_ ((_bind-rest12989_
                                                          _phi-bind12984_)
                                                         (_set12990_ '()))
                                           (let* ((_bind-rest1299113001_
                                                   _bind-rest12989_)
                                                  (_else1299313009_
                                                   (lambda ()
                                                     (_K12757_
                                                      _rest12758_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi12980_
                                                             _set12990_)
                                                            _r12759_))))
                                                  (_K1299513019_
                                                   (lambda (_bind-rest13012_
                                                            _bind13013_
                                                            _key13014_)
                                                     (if (let ((_$e13016_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind13013_
                         'gx#import-binding::t)))
                   (if _$e13016_
                       _$e13016_
                       (gx#private-feature-binding? _bind13013_)))
                 (_lp12987_ _bind-rest13012_ _set12990_)
                 (_lp12987_
                  _bind-rest13012_
                  (cons (_make-export__2__1590815911_
                         _bind13013_
                         _current-phi12980_
                         _current-ctx12978_)
                        _set12990_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1299113001_)
                                                 (let ((_hd1299613022_
                                                        (##car _bind-rest1299113001_))
                                                       (_tl1299713024_
                                                        (##cdr _bind-rest1299113001_)))
                                                   (if (##pair? _hd1299613022_)
                                                       (let ((_hd1299813027_
                                                              (##car _hd1299613022_))
                                                             (_tl1299913029_
                                                              (##cdr _hd1299613022_)))
                                                         (let* ((_key13032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1299813027_)
                        (_bind13034_ _tl1299913029_)
                        (_bind-rest13036_ _tl1299713024_))
                   (_K1299513019_ _bind-rest13036_ _bind13034_ _key13032_)))
               (_else1299313009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1299313009_)))))
                                       (_E1276212974_))
                                   (_E1276212974_)))))
                       (_E1276113038_))))
                  (_export-imports12611_
                   (lambda (_src12632_ _r12633_)
                     (letrec* ((_current-ctx12635_
                                (gx#current-expander-context))
                               (_current-phi12636_
                                (gx#current-export-expander-phi))
                               (_import->export12637_
                                (lambda (_in12718_)
                                  (let* ((_in1271912727_ _in12718_)
                                         (_E1272112731_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1271912727_)))
                                         (_K1272212738_
                                          (lambda (_phi12734_
                                                   _key12735_
                                                   _out12736_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx12635_
                                             _key12735_
                                             _phi12734_
                                             _key12735_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1271912727_
                                         'gx#module-import::t)
                                        (let* ((_e1272312741_
                                                (##vector-ref
                                                 _in1271912727_
                                                 '1))
                                               (_out12744_ _e1272312741_)
                                               (_e1272412746_
                                                (##vector-ref
                                                 _in1271912727_
                                                 '2))
                                               (_key12749_ _e1272412746_)
                                               (_e1272512751_
                                                (##vector-ref
                                                 _in1271912727_
                                                 '3))
                                               (_phi12754_ _e1272512751_))
                                          (_K1272212738_
                                           _phi12754_
                                           _key12749_
                                           _out12744_))
                                        (_E1272112731_)))))
                               (_fold-e12638_
                                (lambda (_in12640_ _r12641_)
                                  (let* ((_in1264212656_ _in12640_)
                                         (_else1264512664_
                                          (lambda () _r12641_)))
                                    (let ((_K1265112700_
                                           (lambda (_phi12696_
                                                    _key12697_
                                                    _out12698_)
                                             (if (if (fx= _phi12696_
                                                          _current-phi12636_)
                                                     (eq? _src12632_
                                                          (##unchecked-structure-ref
                                                           _out12698_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export12637_
                                                        _in12640_)
                                                       _r12641_)
                                                 _r12641_)))
                                          (_K1264712675_
                                           (lambda (_imports12668_
                                                    _phi12669_
                                                    _ctx12670_)
                                             (if (if (fx= _phi12669_
                                                          _current-phi12636_)
                                                     (eq? _src12632_
                                                          _ctx12670_)
                                                     '#f)
                                                 (foldl1 (lambda (_in12672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r12673_)
                   (cons (_import->export12637_ _in12672_) _r12673_))
                 _r12641_
                 _imports12668_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r12641_))))
                                      (let ((_try-match1264412693_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1264212656_
                                                    'gx#import-set::t)
                                                   (let* ((_e1264812678_
                                                           (##vector-ref
                                                            _in1264212656_
                                                            '1))
                                                          (_e1264912683_
                                                           (##vector-ref
                                                            _in1264212656_
                                                            '2))
                                                          (_e1265012688_
                                                           (##vector-ref
                                                            _in1264212656_
                                                            '3)))
                                                     (let ((_ctx12681_
                                                            _e1264812678_)
                                                           (_phi12686_
                                                            _e1264912683_)
                                                           (_imports12691_
                                                            _e1265012688_))
                                                       (_K1264712675_
                                                        _imports12691_
                                                        _phi12686_
                                                        _ctx12681_)))
                                                   (_else1264512664_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1264212656_
                                             'gx#module-import::t)
                                            (let* ((_e1265212703_
                                                    (##vector-ref
                                                     _in1264212656_
                                                     '1))
                                                   (_e1265312708_
                                                    (##vector-ref
                                                     _in1264212656_
                                                     '2))
                                                   (_e1265412713_
                                                    (##vector-ref
                                                     _in1264212656_
                                                     '3)))
                                              (let ((_out12706_ _e1265212703_)
                                                    (_key12711_ _e1265312708_)
                                                    (_phi12716_ _e1265412713_))
                                                (_K1265112700_
                                                 _phi12716_
                                                 _key12711_
                                                 _out12706_)))
                                            (_try-match1264412693_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src12632_
                              _current-phi12636_
                              (foldl1 _fold-e12638_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx12635_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r12633_))))
                  (_export!12612_
                   (lambda (_rbody12622_)
                     (letrec* ((_current-ctx12624_
                                (gx#current-expander-context))
                               (_fold-e12625_
                                (lambda (_out12629_ _r12630_)
                                  (if (##structure-direct-instance-of?
                                       _out12629_
                                       'gx#module-export::t)
                                      (cons _out12629_ _r12630_)
                                      (if (##structure-direct-instance-of?
                                           _out12629_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r12630_
                                                  (##unchecked-structure-ref
                                                   _out12629_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r12630_)))))
                       (let ((_body12627_ (reverse _rbody12622_)))
                         (begin
                           (##unchecked-structure-set!
                            _current-ctx12624_
                            (foldl1 _fold-e12625_
                                    (##unchecked-structure-ref
                                     _current-ctx12624_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body12627_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body12627_)))))
                  (_expanded-export?12613_
                   (lambda (_e12617_)
                     (let ((_$e12619_
                            (##structure-direct-instance-of?
                             _e12617_
                             'gx#module-export::t)))
                       (if _$e12619_
                           _$e12619_
                           (##structure-direct-instance-of?
                            _e12617_
                            'gx#export-set::t))))))
          (let ((_rbody12615_
                 (gx#core-expand-import/export
                  _stx12606_
                  _expanded-export?12613_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand112610_)))
            (if _internal-expand?12607_
                (reverse _rbody12615_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!12612_ _rbody12615_))
                 (gx#stx-source _stx12606_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx13088_)
          (let ((_internal-expand?13090_ '#f))
            (gx#core-expand-export%__% _stx13088_ _internal-expand?13090_))))
      (define gx#core-expand-export%
        (lambda _g15970_
          (let ((_g15969_ (length _g15970_)))
            (cond ((##fx= _g15969_ 1)
                   (apply gx#core-expand-export%__0 _g15970_))
                  ((##fx= _g15969_ 2)
                   (apply gx#core-expand-export%__% _g15970_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g15970_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd12603_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12603_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12573_)
      (let* ((_e1257412581_ _stx12573_)
             (_E1257612585_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1257412581_)))
             (_E1257512599_
              (lambda ()
                (if (gx#stx-pair? _e1257412581_)
                    (let ((_e1257712589_ (gx#syntax-e _e1257412581_)))
                      (let ((_hd1257812592_ (##car _e1257712589_))
                            (_tl1257912594_ (##cdr _e1257712589_)))
                        (let ((_body12597_ _tl1257912594_))
                          (if (gx#identifier-list? _body12597_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12597_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12597_))
                                 (gx#stx-source _stx12573_)))
                              (_E1257612585_)))))
                    (_E1257612585_)))))
        (_E1257512599_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id12539_ _private?12540_ _phi12541_ _ctx12542_)
        (gx#core-bind-syntax!__%
         _id12539_
         ((if _private?12540_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id12539_))
         _private?12540_
         _phi12541_
         _ctx12542_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id12547_)
          (let* ((_private?12549_ '#f)
                 (_phi12551_ (gx#current-expander-phi))
                 (_ctx12553_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12547_
             _private?12549_
             _phi12551_
             _ctx12553_))))
      (define gx#core-bind-feature!__1
        (lambda (_id12555_ _private?12556_)
          (let* ((_phi12558_ (gx#current-expander-phi))
                 (_ctx12560_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12555_
             _private?12556_
             _phi12558_
             _ctx12560_))))
      (define gx#core-bind-feature!__2
        (lambda (_id12562_ _private?12563_ _phi12564_)
          (let ((_ctx12566_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12562_
             _private?12563_
             _phi12564_
             _ctx12566_))))
      (define gx#core-bind-feature!
        (lambda _g15972_
          (let ((_g15971_ (length _g15972_)))
            (cond ((##fx= _g15971_ 1)
                   (apply gx#core-bind-feature!__0 _g15972_))
                  ((##fx= _g15971_ 2)
                   (apply gx#core-bind-feature!__1 _g15972_))
                  ((##fx= _g15971_ 3)
                   (apply gx#core-bind-feature!__2 _g15972_))
                  ((##fx= _g15971_ 4)
                   (apply gx#core-bind-feature!__% _g15972_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g15972_)))))))))
