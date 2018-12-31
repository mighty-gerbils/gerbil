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
    (lambda _$args15940_
      (apply make-struct-instance gx#module-import::t _$args15940_)))
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
    (lambda _$args15937_
      (apply make-struct-instance gx#module-export::t _$args15937_)))
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
    (lambda _$args15934_
      (apply make-struct-instance gx#import-set::t _$args15934_)))
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
    (lambda _$args15931_
      (apply make-struct-instance gx#export-set::t _$args15931_)))
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
    (lambda _$args15928_
      (apply make-class-instance gx#import-expander::t _$args15928_)))
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
    (lambda _$args15925_
      (apply make-class-instance gx#export-expander::t _$args15925_)))
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
    (lambda _$args15922_
      (apply make-class-instance gx#import-export-expander::t _$args15922_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15916_ _id15917_ _super15918_ _ns15919_ _path15920_)
      (if (##fx< '11 (##vector-length _self15916_))
          (begin
            (##vector-set! _self15916_ '1 _id15917_)
            (##vector-set! _self15916_ '2 (make-table 'test: eq?))
            (##vector-set! _self15916_ '3 _super15918_)
            (##vector-set! _self15916_ '4 '#f)
            (##vector-set! _self15916_ '5 '#f)
            (##vector-set! _self15916_ '6 _ns15919_)
            (##vector-set! _self15916_ '7 _path15920_)
            (##vector-set! _self15916_ '8 '())
            (##vector-set! _self15916_ '9 '())
            (##vector-set! _self15916_ '10 '#f)
            (##vector-set! _self15916_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15916_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (define gx#prelude-context:::init!__%
    (lambda (_self15760_ _ctx15761_ _root15762_)
      (let ((_super15770_
             (let ((_$e15764_ _root15762_))
               (if _$e15764_
                   _$e15764_
                   (let ((_$e15767_ (gx#core-context-root__0)))
                     (if _$e15767_
                         _$e15767_
                         (make-struct-instance gx#root-context::t)))))))
        (if _ctx15761_
            (let ((_id15773_
                   (##structure-ref _ctx15761_ '1 gx#expander-context::t '#f))
                  (_path15774_
                   (##structure-ref _ctx15761_ '7 gx#module-context::t '#f))
                  (_in15775_
                   (map gx#core-module-export->import
                        (##structure-ref
                         _ctx15761_
                         '9
                         gx#module-context::t
                         '#f)))
                  (_e15776_
                   (##make-promise (lambda () (gx#eval-module _ctx15761_)))))
              (if (##fx< '8 (##vector-length _self15760_))
                  (begin
                    (##vector-set! _self15760_ '1 _id15773_)
                    (##vector-set!
                     _self15760_
                     '2
                     (make-table 'test: eq? 'size: (length _in15775_)))
                    (##vector-set! _self15760_ '3 _super15770_)
                    (##vector-set! _self15760_ '4 '#f)
                    (##vector-set! _self15760_ '5 '#f)
                    (##vector-set! _self15760_ '6 _path15774_)
                    (##vector-set! _self15760_ '7 _in15775_)
                    (##vector-set! _self15760_ '8 _e15776_))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self15760_))
              (for-each
               (lambda (_g1577715779_)
                 (gx#core-bind-weak-import!__% _g1577715779_ _self15760_))
               _in15775_))
            (if (##fx< '8 (##vector-length _self15760_))
                (begin
                  (##vector-set! _self15760_ '1 '#f)
                  (##vector-set! _self15760_ '2 (make-table 'test: eq?))
                  (##vector-set! _self15760_ '3 _super15770_)
                  (##vector-set! _self15760_ '4 '#f)
                  (##vector-set! _self15760_ '5 '#f)
                  (##vector-set! _self15760_ '6 '#f)
                  (##vector-set! _self15760_ '7 '())
                  (##vector-set! _self15760_ '8 '#f))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self15760_))))))
  (define gx#prelude-context:::init!__0
    (lambda (_self15785_ _ctx15786_)
      (let ((_root15788_ '#f))
        (gx#prelude-context:::init!__% _self15785_ _ctx15786_ _root15788_))))
  (define gx#prelude-context:::init!
    (lambda _g15980_
      (let ((_g15979_ (length _g15980_)))
        (cond ((##fx= _g15979_ 2)
               (apply gx#prelude-context:::init!__0 _g15980_))
              ((##fx= _g15979_ 3)
               (apply gx#prelude-context:::init!__% _g15980_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#prelude-context:::init!
                _g15980_))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15634_ _e15635_)
      (if (##fx< '3 (##vector-length _self15634_))
          (begin
            (##vector-set! _self15634_ '1 _e15635_)
            (##vector-set! _self15634_ '2 (gx#current-expander-context))
            (##vector-set! _self15634_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15634_))))
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
    (lambda (_g1526015263_ _g1526115265_)
      (gx#core-apply-user-expander__%
       _g1526015263_
       _g1526115265_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1513115134_ _g1513215136_)
      (gx#core-apply-user-expander__%
       _g1513115134_
       _g1513215136_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx15002_)
      (let* ((_path15004_
              (##structure-ref _ctx15002_ '7 gx#module-context::t '#f))
             (_path15006_
              (if (pair? _path15004_) (last _path15004_) _path15004_)))
        (if (string? _path15006_) _path15006_ '#f))))
  (define gx#import-module__%
    (lambda (_path14978_ _reload?14979_ _eval?14980_)
      (let ((_ctx14982_
             ((gx#current-expander-module-import) _path14978_ _reload?14979_)))
        (if (and _ctx14982_ _eval?14980_) (gx#eval-module _ctx14982_) '#!void)
        _ctx14982_)))
  (define gx#import-module__0
    (lambda (_path14987_)
      (let* ((_reload?14989_ '#f) (_eval?14991_ '#f))
        (gx#import-module__% _path14987_ _reload?14989_ _eval?14991_))))
  (define gx#import-module__1
    (lambda (_path14993_ _reload?14994_)
      (let ((_eval?14996_ '#f))
        (gx#import-module__% _path14993_ _reload?14994_ _eval?14996_))))
  (define gx#import-module
    (lambda _g15982_
      (let ((_g15981_ (length _g15982_)))
        (cond ((##fx= _g15981_ 1) (apply gx#import-module__0 _g15982_))
              ((##fx= _g15981_ 2) (apply gx#import-module__1 _g15982_))
              ((##fx= _g15981_ 3) (apply gx#import-module__% _g15982_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#import-module
                _g15982_))))))
  (define gx#eval-module
    (lambda (_mod14975_) ((gx#current-expander-module-eval) _mod14975_)))
  (define gx#core-eval-module
    (lambda (_obj14960_)
      (letrec ((_force-e14962_
                (lambda (_getf14971_ _e14972_)
                  (call-with-parameters
                   (lambda () (force (_getf14971_ _e14972_)))
                   gx#current-expander-context
                   _e14972_
                   gx#current-expander-phi
                   '0))))
        (let _recur14964_ ((_e14966_ _obj14960_))
          (if (##structure-instance-of? _e14966_ 'gx#module-context::t)
              (begin
                (let ((_$e14968_ (gx#core-context-prelude__% _e14966_)))
                  (if _$e14968_ (_recur14964_ _$e14968_) '#!void))
                (_force-e14962_ gx#module-context-e _e14966_))
              (if (##structure-instance-of? _e14966_ 'gx#prelude-context::t)
                  (_force-e14962_ gx#prelude-context-e _e14966_)
                  (if (gx#stx-string? _e14966_)
                      (_recur14964_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14966_)))
                      (if (gx#core-library-module-path? _e14966_)
                          (_recur14964_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14966_)))
                          (error '"Cannot eval module" _obj14960_)))))))))
  (define gx#core-context-prelude__%
    (lambda (_ctx14943_)
      (let _lp14945_ ((_e14947_ _ctx14943_))
        (if (or (##structure-instance-of? _e14947_ 'gx#module-context::t)
                (##structure-instance-of? _e14947_ 'gx#local-context::t))
            (_lp14945_
             (##unchecked-structure-ref _e14947_ '3 gx#phi-context::t '#f))
            (if (##structure-instance-of? _e14947_ 'gx#prelude-context::t)
                _e14947_
                '#f)))))
  (define gx#core-context-prelude__0
    (lambda ()
      (let ((_ctx14956_ (gx#current-expander-context)))
        (gx#core-context-prelude__% _ctx14956_))))
  (define gx#core-context-prelude
    (lambda _g15984_
      (let ((_g15983_ (length _g15984_)))
        (cond ((##fx= _g15983_ 0) (apply gx#core-context-prelude__0 _g15984_))
              ((##fx= _g15983_ 1) (apply gx#core-context-prelude__% _g15984_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-prelude
                _g15984_))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14933_)
      (let* ((_ht14935_ (gx#current-expander-module-registry))
             (_$e14937_ (table-ref _ht14935_ _ctx14933_ '#f)))
        (if _$e14937_
            (values _$e14937_)
            (let ((_pre14940_
                   (let ((__obj15975 (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj15975 _ctx14933_)
                     __obj15975)))
              (table-set! _ht14935_ _ctx14933_ _pre14940_)
              _pre14940_)))))
  (define gx#core-import-module__%
    (lambda (_rpath14814_ _reload?14815_)
      (letrec ((_import-source14817_
                (lambda (_path14902_)
                  (if (member _path14902_ (gx#current-expander-path))
                      (error '"Cyclic expansion" _path14902_)
                      '#!void)
                  (call-with-parameters
                   (lambda ()
                     (let ((_g15985_ (gx#core-read-module _path14902_)))
                       (begin
                         (let ((_g15986_
                                (if (##values? _g15985_)
                                    (##vector-length _g15985_)
                                    1)))
                           (if (not (##fx= _g15986_ 4))
                               (error "Context expects 4 values" _g15986_)))
                         (let ((_pre14905_ (##vector-ref _g15985_ 0))
                               (_id14906_ (##vector-ref _g15985_ 1))
                               (_ns14907_ (##vector-ref _g15985_ 2))
                               (_body14908_ (##vector-ref _g15985_ 3)))
                           (let* ((_prelude14913_
                                   (if (##structure-instance-of?
                                        _pre14905_
                                        'gx#prelude-context::t)
                                       _pre14905_
                                       (if (##structure-instance-of?
                                            _pre14905_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre14905_)
                                           (if (string? _pre14905_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre14905_))
                                               (if (not _pre14905_)
                                                   (let ((_$e14910_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e14910_
                                                         _$e14910_
                                                         (let ((__obj15976
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (gx#prelude-context:::init!__0 __obj15976 '#f)
                   __obj15976)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath14814_
                                                          _pre14905_))))))
                                  (_ctx14915_
                                   (let ((__obj15977
                                          (make-object
                                           gx#module-context::t
                                           '11)))
                                     (gx#module-context:::init!
                                      __obj15977
                                      _id14906_
                                      _prelude14913_
                                      _ns14907_
                                      _path14902_)
                                     __obj15977))
                                  (_body14917_
                                   (gx#core-expand-module-begin
                                    _body14908_
                                    _ctx14915_))
                                  (_body14919_
                                   (gx#core-quote-syntax__%
                                    (gx#core-cons '%#begin _body14917_)
                                    _path14902_
                                    _ctx14915_
                                    '())))
                             (##unchecked-structure-set!
                              _ctx14915_
                              (##make-promise
                               (lambda () (gx#eval-syntax* _body14919_)))
                              '10
                              gx#module-context::t
                              '#f)
                             (##unchecked-structure-set!
                              _ctx14915_
                              _body14919_
                              '11
                              gx#module-context::t
                              '#f)
                             (table-set!
                              (gx#current-expander-module-registry)
                              _path14902_
                              _ctx14915_)
                             (table-set!
                              (gx#current-expander-module-registry)
                              _id14906_
                              _ctx14915_)
                             _ctx14915_)))))
                   gx#current-expander-context
                   (gx#core-context-root__0)
                   gx#current-expander-marks
                   '()
                   gx#current-expander-phi
                   '0
                   gx#current-expander-path
                   (cons _path14902_ (gx#current-expander-path))
                   gx#current-import-expander-phi
                   '#f
                   gx#current-export-expander-phi
                   '#f)))
               (_import-submodule14818_
                (lambda (_rpath14830_)
                  (let* ((_rpath1483114838_ _rpath14830_)
                         (_E1483314842_
                          (lambda ()
                            (error '"No clause matching" _rpath1483114838_)))
                         (_K1483414890_
                          (lambda (_refs14845_ _origin14846_)
                            (let ((_ctx14848_
                                   (if _origin14846_
                                       (gx#core-import-module__%
                                        _origin14846_
                                        _reload?14815_)
                                       (gx#current-expander-context))))
                              (let _lp14850_ ((_rest14852_ _refs14845_)
                                              (_ctx14853_ _ctx14848_))
                                (let* ((_rest1485414862_ _rest14852_)
                                       (_else1485614870_
                                        (lambda () _ctx14853_))
                                       (_K1485814878_
                                        (lambda (_rest14873_ _id14874_)
                                          (let ((_bind14876_
                                                 (gx#resolve-identifier__%
                                                  _id14874_
                                                  '0
                                                  _ctx14853_)))
                                            (if (and (##structure-direct-instance-of?
                                                      _bind14876_
                                                      'gx#syntax-binding::t)
                                                     (##structure-instance-of?
                                                      (##unchecked-structure-ref
                                                       _bind14876_
                                                       '4
                                                       gx#syntax-binding::t
                                                       '#f)
                                                      'gx#module-context::t))
                                                (_lp14850_
                                                 _rest14873_
                                                 (##unchecked-structure-ref
                                                  _bind14876_
                                                  '4
                                                  gx#syntax-binding::t
                                                  '#f))
                                                (error '"Cannot import submodule; not bound as a module"
                                                       _rpath14830_
                                                       _id14874_
                                                       _bind14876_))))))
                                  (if (##pair? _rest1485414862_)
                                      (let ((_hd1485914881_
                                             (##car _rest1485414862_))
                                            (_tl1486014883_
                                             (##cdr _rest1485414862_)))
                                        (let* ((_id14886_ _hd1485914881_)
                                               (_rest14888_ _tl1486014883_))
                                          (_K1485814878_
                                           _rest14888_
                                           _id14886_)))
                                      (_else1485614870_))))))))
                    (if (##pair? _rpath1483114838_)
                        (let ((_hd1483514893_ (##car _rpath1483114838_))
                              (_tl1483614895_ (##cdr _rpath1483114838_)))
                          (let* ((_origin14898_ _hd1483514893_)
                                 (_refs14900_ _tl1483614895_))
                            (_K1483414890_ _refs14900_ _origin14898_)))
                        (_E1483314842_))))))
        (let ((_$e14820_
               (if (not _reload?14815_)
                   (table-ref
                    (gx#current-expander-module-registry)
                    _rpath14814_
                    '#f)
                   '#f)))
          (if _$e14820_
              (values _$e14820_)
              (if (list? _rpath14814_)
                  (_import-submodule14818_ _rpath14814_)
                  (if (gx#core-library-module-path? _rpath14814_)
                      (let ((_ctx14823_
                             (gx#core-import-module__%
                              (gx#core-resolve-library-module-path
                               _rpath14814_)
                              _reload?14815_)))
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath14814_
                         _ctx14823_)
                        _ctx14823_)
                      (let* ((_npath14825_ (path-normalize _rpath14814_))
                             (_$e14827_
                              (if (not _reload?14815_)
                                  (table-ref
                                   (gx#current-expander-module-registry)
                                   _npath14825_
                                   '#f)
                                  '#f)))
                        (if _$e14827_
                            (values _$e14827_)
                            (_import-source14817_ _npath14825_))))))))))
  (define gx#core-import-module__0
    (lambda (_rpath14926_)
      (let ((_reload?14928_ '#f))
        (gx#core-import-module__% _rpath14926_ _reload?14928_))))
  (define gx#core-import-module
    (lambda _g15988_
      (let ((_g15987_ (length _g15988_)))
        (cond ((##fx= _g15987_ 1) (apply gx#core-import-module__0 _g15988_))
              ((##fx= _g15987_ 2) (apply gx#core-import-module__% _g15988_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-import-module
                _g15988_))))))
  (define gx#core-read-module
    (lambda (_path14808_)
      (with-exception-catcher
       (lambda (_exn14810_)
         (if (and (datum-parsing-exception? _exn14810_)
                  (eq? (datum-parsing-exception-filepos _exn14810_) '0))
             (gx#core-read-module/lang _path14808_)
             (raise _exn14810_)))
       (lambda () (gx#core-read-module/sexp _path14808_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14668_)
      (let _lp14670_ ((_body14672_ (read-syntax-from-file _path14668_))
                      (_pre14673_ '#f)
                      (_ns14674_ '#f)
                      (_pkg14675_ '#f))
        (let* ((_e1467614700_ _body14672_)
               (_E1469214722_
                (lambda ()
                  (let ((_g15989_
                         (if _pkg14675_
                             (values _pre14673_ _ns14674_ _pkg14675_)
                             (gx#core-read-module-package
                              _path14668_
                              _pre14673_
                              _ns14674_))))
                    (begin
                      (let ((_g15990_
                             (if (##values? _g15989_)
                                 (##vector-length _g15989_)
                                 1)))
                        (if (not (##fx= _g15990_ 3))
                            (error "Context expects 3 values" _g15990_)))
                      (let ((_pre14704_ (##vector-ref _g15989_ 0))
                            (_ns14705_ (##vector-ref _g15989_ 1))
                            (_pkg14706_ (##vector-ref _g15989_ 2)))
                        (let* ((_prelude14708_
                                (if (gx#core-bound-module-prelude? _pre14704_)
                                    (gx#syntax-local-e__0 _pre14704_)
                                    (if (gx#core-library-module-path?
                                         _pre14704_)
                                        (gx#core-resolve-library-module-path
                                         _pre14704_)
                                        (if (gx#stx-string? _pre14704_)
                                            (gx#core-resolve-module-path__%
                                             _pre14704_
                                             _path14668_)
                                            (gx#stx-e _pre14704_)))))
                               (_path-id14710_
                                (gx#core-module-path->namespace _path14668_))
                               (_pkg-id14712_
                                (if _pkg14706_
                                    (string-append
                                     _pkg14706_
                                     '"/"
                                     _path-id14710_)
                                    _path-id14710_))
                               (_module-id14714_
                                (string->symbol _pkg-id14712_))
                               (_module-ns14719_
                                (let ((_$e14716_ _ns14705_))
                                  (if _$e14716_ _$e14716_ _pkg-id14712_))))
                          (values _prelude14708_
                                  _module-id14714_
                                  _module-ns14719_
                                  _body14672_)))))))
               (_E1468514751_
                (lambda ()
                  (if (gx#stx-pair? _e1467614700_)
                      (let ((_e1469314726_ (gx#syntax-e _e1467614700_)))
                        (let ((_hd1469414729_ (##car _e1469314726_))
                              (_tl1469514731_ (##cdr _e1469314726_)))
                          (if (eq? (gx#stx-e _hd1469414729_) 'package:)
                              (if (gx#stx-pair? _tl1469514731_)
                                  (let ((_e1469614734_
                                         (gx#syntax-e _tl1469514731_)))
                                    (let ((_hd1469714737_
                                           (##car _e1469614734_))
                                          (_tl1469814739_
                                           (##cdr _e1469614734_)))
                                      (let* ((_pkg14742_ _hd1469714737_)
                                             (_rest14744_ _tl1469814739_))
                                        (if '#t
                                            (let ((_pkg14749_
                                                   (if (gx#identifier?
                                                        _pkg14742_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14742_))
                                                       (if (or (gx#stx-string?
                                                                _pkg14742_)
                                                               (gx#stx-false?
                                                                _pkg14742_))
                                                           (gx#stx-e
                                                            _pkg14742_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; Illegal package name"
                                                            _pkg14742_)))))
                                              (_lp14670_
                                               _rest14744_
                                               _pre14673_
                                               _ns14674_
                                               _pkg14749_))
                                            (_E1469214722_)))))
                                  (_E1469214722_))
                              (_E1469214722_))))
                      (_E1469214722_))))
               (_E1467814780_
                (lambda ()
                  (if (gx#stx-pair? _e1467614700_)
                      (let ((_e1468614755_ (gx#syntax-e _e1467614700_)))
                        (let ((_hd1468714758_ (##car _e1468614755_))
                              (_tl1468814760_ (##cdr _e1468614755_)))
                          (if (eq? (gx#stx-e _hd1468714758_) 'namespace:)
                              (if (gx#stx-pair? _tl1468814760_)
                                  (let ((_e1468914763_
                                         (gx#syntax-e _tl1468814760_)))
                                    (let ((_hd1469014766_
                                           (##car _e1468914763_))
                                          (_tl1469114768_
                                           (##cdr _e1468914763_)))
                                      (let* ((_ns14771_ _hd1469014766_)
                                             (_rest14773_ _tl1469114768_))
                                        (if '#t
                                            (let ((_ns14778_
                                                   (if (gx#identifier?
                                                        _ns14771_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14771_))
                                                       (if (or (gx#stx-string?
                                                                _ns14771_)
                                                               (gx#stx-false?
                                                                _ns14771_))
                                                           (gx#stx-e _ns14771_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; illegal namespace"
                                                            _ns14771_)))))
                                              (_lp14670_
                                               _rest14773_
                                               _pre14673_
                                               _ns14778_
                                               _pkg14675_))
                                            (_E1468514751_)))))
                                  (_E1468514751_))
                              (_E1468514751_))))
                      (_E1468514751_))))
               (_E1467714804_
                (lambda ()
                  (if (gx#stx-pair? _e1467614700_)
                      (let ((_e1467914784_ (gx#syntax-e _e1467614700_)))
                        (let ((_hd1468014787_ (##car _e1467914784_))
                              (_tl1468114789_ (##cdr _e1467914784_)))
                          (if (eq? (gx#stx-e _hd1468014787_) 'prelude:)
                              (if (gx#stx-pair? _tl1468114789_)
                                  (let ((_e1468214792_
                                         (gx#syntax-e _tl1468114789_)))
                                    (let ((_hd1468314795_
                                           (##car _e1468214792_))
                                          (_tl1468414797_
                                           (##cdr _e1468214792_)))
                                      (let* ((_prelude14800_ _hd1468314795_)
                                             (_rest14802_ _tl1468414797_))
                                        (if '#t
                                            (_lp14670_
                                             _rest14802_
                                             _prelude14800_
                                             _ns14674_
                                             _pkg14675_)
                                            (_E1467814780_)))))
                                  (_E1467814780_))
                              (_E1467814780_))))
                      (_E1467814780_)))))
          (_E1467714804_)))))
  (define gx#core-read-module/lang
    (lambda (_path14495_)
      (letrec ((_default-read-module-body14497_
                (lambda (_inp14660_)
                  (let _lp14662_ ((_body14664_ '()))
                    (let ((_next14666_ (read-syntax _inp14660_)))
                      (if (eof-object? _next14666_)
                          (reverse _body14664_)
                          (_lp14662_ (cons _next14666_ _body14664_)))))))
               (_read-body14498_
                (lambda (_inp14579_
                         _pre14580_
                         _ns14581_
                         _pkg14582_
                         _args14583_)
                  (let ((_g15991_
                         (if _pkg14582_
                             (values _pre14580_ _ns14581_ _pkg14582_)
                             (gx#core-read-module-package
                              _path14495_
                              _pre14580_
                              _ns14581_))))
                    (begin
                      (let ((_g15992_
                             (if (##values? _g15991_)
                                 (##vector-length _g15991_)
                                 1)))
                        (if (not (##fx= _g15992_ 3))
                            (error "Context expects 3 values" _g15992_)))
                      (let ((_pre14585_ (##vector-ref _g15991_ 0))
                            (_ns14586_ (##vector-ref _g15991_ 1))
                            (_pkg14587_ (##vector-ref _g15991_ 2)))
                        (let* ((_prelude14589_
                                (gx#import-module__0 _pre14585_))
                               (_read-module-body14643_
                                (let ((_$e14635_
                                       (find (lambda (_e1459014592_)
                                               (let* ((_g1459414604_
                                                       _e1459014592_)
                                                      (_else1459614612_
                                                       (lambda () '#f))
                                                      (_K1459814616_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1459414604_
                                                      'gx#module-export::t)
                                                     (let* ((_e1459914619_
                                                             (##vector-ref
                                                              _g1459414604_
                                                              '1))
                                                            (_e1460014622_
                                                             (##vector-ref
                                                              _g1459414604_
                                                              '2))
                                                            (_e1460114625_
                                                             (##vector-ref
                                                              _g1459414604_
                                                              '3)))
                                                       (if (##eq? _e1460114625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1460214628_ (##vector-ref _g1459414604_ '4)))
                     (if ((lambda (_g1463014632_)
                            (eq? _g1463014632_ 'read-module-body))
                          _e1460214628_)
                         (_K1459814616_)
                         (_else1459614612_)))
                   (_else1459614612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1459614612_))))
                                             (##unchecked-structure-ref
                                              _prelude14589_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14635_
                                      ((lambda (_xport14638_)
                                         (let ((_proc14641_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14638_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14641_)
                                               _proc14641_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14495_
                                                _pre14585_
                                                _proc14641_))))
                                       _$e14635_)
                                      _default-read-module-body14497_)))
                               (_path-id14645_
                                (gx#core-module-path->namespace _path14495_))
                               (_pkg-id14647_
                                (if _pkg14587_
                                    (string-append
                                     _pkg14587_
                                     '"/"
                                     _path-id14645_)
                                    _path-id14645_))
                               (_module-id14649_
                                (string->symbol _pkg-id14647_))
                               (_module-ns14654_
                                (let ((_$e14651_ _ns14586_))
                                  (if _$e14651_ _$e14651_ _pkg-id14647_)))
                               (_body14657_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14643_ _inp14579_))
                                 gx#current-module-reader-path
                                 _path14495_
                                 gx#current-module-reader-args
                                 _args14583_)))
                          (values _prelude14589_
                                  _module-id14649_
                                  _module-ns14654_
                                  _body14657_)))))))
               (_string-e14499_
                (lambda (_obj14576_ _what14577_)
                  (if (string? _obj14576_)
                      _obj14576_
                      (if (symbol? _obj14576_)
                          (symbol->string _obj14576_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14577_)
                           _path14495_
                           _obj14576_)))))
               (_read-lang-args14500_
                (lambda (_inp14531_ _args14532_)
                  (let* ((_args1453314541_ _args14532_)
                         (_else1453514549_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14495_)))
                         (_K1453714564_
                          (lambda (_args14552_ _prelude14553_)
                            (let* ((_pkg14555_ (pgetq 'package: _args14552_))
                                   (_pkg14557_
                                    (if _pkg14555_
                                        (_string-e14499_ _pkg14555_ '"package")
                                        '#f))
                                   (_ns14559_ (pgetq 'namespace: _args14552_))
                                   (_ns14561_
                                    (if _ns14559_
                                        (_string-e14499_
                                         _ns14559_
                                         '"namespace")
                                        '#f)))
                              (_read-body14498_
                               _inp14531_
                               _prelude14553_
                               _ns14561_
                               _pkg14557_
                               _args14552_)))))
                    (if (##pair? _args1453314541_)
                        (let ((_hd1453814567_ (##car _args1453314541_))
                              (_tl1453914569_ (##cdr _args1453314541_)))
                          (let* ((_prelude14572_ _hd1453814567_)
                                 (_args14574_ _tl1453914569_))
                            (_K1453714564_ _args14574_ _prelude14572_)))
                        (_else1453514549_)))))
               (_read-lang14501_
                (lambda (_inp14506_)
                  (let* ((_head14508_ (read-line _inp14506_))
                         (_$e14510_ (string-index _head14508_ '#\space)))
                    (if _$e14510_
                        ((lambda (_ix14513_)
                           (let ((_lang14515_
                                  (substring _head14508_ '0 _ix14513_)))
                             (if (equal? _lang14515_ '"#lang")
                                 (let* ((_rest14517_
                                         (substring
                                          _head14508_
                                          (fx+ _ix14513_ '1)
                                          (string-length _head14508_)))
                                        (_args14528_
                                         (with-exception-catcher
                                          (lambda (_g1451814520_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14495_
                                             _g1451814520_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14517_
                                             (lambda (_g1452314525_)
                                               (read-all
                                                _g1452314525_
                                                read)))))))
                                   (_read-lang-args14500_
                                    _inp14506_
                                    _args14528_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14495_))))
                         _$e14510_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14495_)))))
               (_read-e14502_
                (lambda (_inp14504_)
                  (if (eq? (peek-char _inp14504_) '#\#)
                      (_read-lang14501_ _inp14504_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14495_)))))
        (call-with-input-file _path14495_ _read-e14502_))))
  (define gx#core-read-module-package
    (lambda (_path14449_ _pre14450_ _ns14451_)
      (letrec ((_string-e14453_
                (lambda (_e14493_)
                  (if (symbol? _e14493_)
                      (symbol->string _e14493_)
                      (if (string? _e14493_)
                          _e14493_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14493_))))))
        (let _lp14455_ ((_dir14457_ (path-directory _path14449_))
                        (_pkg-path14458_ '()))
          (let ((_gerbil.pkg14460_ (path-expand '"gerbil.pkg" _dir14457_)))
            (if (file-exists? _gerbil.pkg14460_)
                (let ((_plist14462_
                       (gx#core-library-package-plist__% _dir14457_ '#t)))
                  (if (null? _plist14462_)
                      (let ((_pkg14464_
                             (if (not (null? _pkg-path14458_))
                                 (string-join _pkg-path14458_ '"/")
                                 '#f)))
                        (values _pre14450_ _ns14451_ _pkg14464_))
                      (if (list? _plist14462_)
                          (let* ((_root14466_ (pgetq 'package: _plist14462_))
                                 (_pkg14470_
                                  (let ((_pkg-path14468_
                                         (if _root14466_
                                             (cons (_string-e14453_
                                                    _root14466_)
                                                   _pkg-path14458_)
                                             _pkg-path14458_)))
                                    (if (not (null? _pkg-path14468_))
                                        (string-join _pkg-path14468_ '"/")
                                        '#f)))
                                 (_ns14477_
                                  (let ((_ns14475_
                                         (let ((_$e14472_ _ns14451_))
                                           (if _$e14472_
                                               _$e14472_
                                               (pgetq 'namespace:
                                                      _plist14462_)))))
                                    (if _ns14475_
                                        (_string-e14453_ _ns14475_)
                                        '#f)))
                                 (_pre14482_
                                  (let ((_$e14479_ _pre14450_))
                                    (if _$e14479_
                                        _$e14479_
                                        (pgetq 'prelude: _plist14462_)))))
                            (values _pre14482_ _ns14477_ _pkg14470_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14462_))))
                (let ((_dir*14485_
                       (path-strip-trailing-directory-separator _dir14457_)))
                  (if (or (string-empty? _dir*14485_)
                          (equal? _dir14457_ _dir*14485_))
                      (values _pre14450_ _ns14451_ '#f)
                      (let ((_xpath14490_ (path-strip-directory _dir*14485_))
                            (_xdir14491_ (path-directory _dir*14485_)))
                        (_lp14455_
                         _xdir14491_
                         (cons _xpath14490_ _pkg-path14458_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14447_)
      (path-strip-extension (path-strip-directory _path14447_))))
  (define gx#core-module-path->id
    (lambda (_path14445_)
      (string->symbol (gx#core-module-path->namespace _path14445_))))
  (define gx#core-resolve-module-path__%
    (lambda (_stx-path14424_ _rel14425_)
      (let* ((_path14427_ (gx#stx-e _stx-path14424_))
             (_path14429_
              (if (string-empty? (path-extension _path14427_))
                  (string-append _path14427_ '".ss")
                  _path14427_)))
        (gx#core-resolve-path__%
         _path14429_
         (let ((_$e14432_ (gx#stx-source _stx-path14424_)))
           (if _$e14432_ _$e14432_ _rel14425_))))))
  (define gx#core-resolve-module-path__0
    (lambda (_stx-path14438_)
      (let ((_rel14440_ '#f))
        (gx#core-resolve-module-path__% _stx-path14438_ _rel14440_))))
  (define gx#core-resolve-module-path
    (lambda _g15994_
      (let ((_g15993_ (length _g15994_)))
        (cond ((##fx= _g15993_ 1)
               (apply gx#core-resolve-module-path__0 _g15994_))
              ((##fx= _g15993_ 2)
               (apply gx#core-resolve-module-path__% _g15994_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-resolve-module-path
                _g15994_))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14351_)
      (let* ((_spath14353_ (symbol->string (gx#stx-e _libpath14351_)))
             (_spath14355_
              (substring _spath14353_ '1 (string-length _spath14353_)))
             (_ext14357_ (path-extension _spath14355_))
             (_ssi14359_
              (if (string-empty? _ext14357_)
                  (string-append _spath14355_ '".ssi")
                  (string-append (path-strip-extension _spath14355_) '".ssi")))
             (_src14361_
              (if (string-empty? _ext14357_)
                  (string-append _spath14355_ '".ss")
                  _spath14355_)))
        (let _lp14364_ ((_rest14366_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1436714376_ _rest14366_)
                 (_E1437014380_
                  (lambda () (error '"No clause matching" _rest1436714376_))))
            (let ((_K1437214411_
                   (lambda (_rest14391_ _dir14392_)
                     (letrec ((_resolve14394_
                               (lambda (_ssi14404_ _src14405_)
                                 (let ((_compiled-path14407_
                                        (path-expand _ssi14404_ _dir14392_)))
                                   (if (file-exists? _compiled-path14407_)
                                       (path-normalize _compiled-path14407_)
                                       (let ((_src-path14409_
                                              (path-expand
                                               _src14405_
                                               _dir14392_)))
                                         (if (file-exists? _src-path14409_)
                                             (path-normalize _src-path14409_)
                                             (_lp14364_ _rest14391_))))))))
                       (let ((_$e14396_
                              (gx#core-library-package-path-prefix
                               _dir14392_)))
                         (if _$e14396_
                             ((lambda (_prefix14399_)
                                (if (string-prefix? _spath14355_ _prefix14399_)
                                    (let ((_ssi14401_
                                           (substring
                                            _ssi14359_
                                            (string-length _prefix14399_)
                                            (string-length _ssi14359_)))
                                          (_src14402_
                                           (substring
                                            _src14361_
                                            (string-length _prefix14399_)
                                            (string-length _src14361_))))
                                      (_resolve14394_ _ssi14401_ _src14402_))
                                    (_lp14364_ _rest14391_)))
                              _$e14396_)
                             (_resolve14394_ _ssi14359_ _src14361_))))))
                  (_K1437114385_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14351_))))
              (let ((_try-match1436914388_
                     (lambda ()
                       (if (##null? _rest1436714376_)
                           (_K1437114385_)
                           (_E1437014380_)))))
                (if (##pair? _rest1436714376_)
                    (let ((_tl1437414416_ (##cdr _rest1436714376_))
                          (_hd1437314414_ (##car _rest1436714376_)))
                      (let ((_dir14419_ _hd1437314414_)
                            (_rest14421_ _tl1437414416_))
                        (_K1437214411_ _rest14421_ _dir14419_)))
                    (_try-match1436914388_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14344_)
      (let ((_$e14346_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14344_))))
        (if _$e14346_
            ((lambda (_pkg14349_)
               (string-append (symbol->string _pkg14349_) '"/"))
             _$e14346_)
            '#f))))
  (define gx#core-library-package-plist__%
    (lambda (_dir14316_ _exists?14317_)
      (let* ((_cache14319_ (gx#core-library-package-cache))
             (_$e14321_ (table-ref _cache14319_ _dir14316_ '#f)))
        (if _$e14321_
            (values _$e14321_)
            (let* ((_gerbil.pkg14324_ (path-expand '"gerbil.pkg" _dir14316_))
                   (_plist14331_
                    (if (or _exists?14317_ (file-exists? _gerbil.pkg14324_))
                        (let ((_e14329_
                               (call-with-input-file _gerbil.pkg14324_ read)))
                          (if (eof-object? _e14329_)
                              '()
                              (if (list? _e14329_)
                                  _e14329_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Malformed package info; unexpected datum"
                                   _gerbil.pkg14324_
                                   _e14329_))))
                        '())))
              (table-set! _cache14319_ _dir14316_ _plist14331_)
              _plist14331_)))))
  (define gx#core-library-package-plist__0
    (lambda (_dir14337_)
      (let ((_exists?14339_ '#f))
        (gx#core-library-package-plist__% _dir14337_ _exists?14339_))))
  (define gx#core-library-package-plist
    (lambda _g15996_
      (let ((_g15995_ (length _g15996_)))
        (cond ((##fx= _g15995_ 1)
               (apply gx#core-library-package-plist__0 _g15996_))
              ((##fx= _g15995_ 2)
               (apply gx#core-library-package-plist__% _g15996_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-library-package-plist
                _g15996_))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14310_ (gx#current-expander-module-library-package-cache)))
        (if _$e14310_
            (values _$e14310_)
            (let ((_cache14313_ (make-table)))
              (gx#current-expander-module-library-package-cache _cache14313_)
              _cache14313_)))))
  (define gx#core-library-module-path?
    (lambda (_stx14307_) (gx#core-special-module-path? _stx14307_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14302_ _char14303_)
      (if (gx#identifier? _stx14302_)
          (if (interned-symbol? (gx#stx-e _stx14302_))
              (let ((_str14305_ (symbol->string (gx#stx-e _stx14302_))))
                (if (fx> (string-length _str14305_) '1)
                    (eq? (string-ref _str14305_ '0) _char14303_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14296_)
      (gx#core-bound-identifier?__%
       _stx14296_
       (lambda (_g1429714299_)
         (gx#expander-binding?__% _g1429714299_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14290_)
      (gx#core-bound-identifier?__%
       _stx14290_
       (lambda (_g1429114293_)
         (gx#expander-binding?__% _g1429114293_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14277_)
      (letrec ((_module-prelude?14279_
                (lambda (_e14285_)
                  (let ((_$e14287_
                         (##structure-instance-of?
                          _e14285_
                          'gx#module-context::t)))
                    (if _$e14287_
                        _$e14287_
                        (##structure-instance-of?
                         _e14285_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14277_
         (lambda (_g1428014282_)
           (gx#expander-binding?__% _g1428014282_ _module-prelude?14279_))))))
  (define gx#core-bind-import!__%
    (lambda (_in14207_ _ctx14208_ _force-weak?14209_)
      (let* ((_in1421014219_ _in14207_)
             (_E1421214223_
              (lambda () (error '"No clause matching" _in1421014219_)))
             (_K1421314236_
              (lambda (_weak?14226_ _phi14227_ _key14228_ _source14229_)
                (gx#core-bind!__%
                 _key14228_
                 (let ((_e14231_
                        (gx#core-resolve-module-export _source14229_)))
                   (##structure
                    gx#import-binding::t
                    (##unchecked-structure-ref _e14231_ '1 gx#binding::t '#f)
                    _key14228_
                    _phi14227_
                    _e14231_
                    (##unchecked-structure-ref
                     _source14229_
                     '1
                     gx#module-export::t
                     '#f)
                    (let ((_$e14233_ _force-weak?14209_))
                      (if _$e14233_ _$e14233_ _weak?14226_))))
                 gx#core-context-rebind?
                 _phi14227_
                 _ctx14208_))))
        (if (##structure-direct-instance-of?
             _in1421014219_
             'gx#module-import::t)
            (let* ((_e1421414239_ (##vector-ref _in1421014219_ '1))
                   (_source14242_ _e1421414239_)
                   (_e1421514244_ (##vector-ref _in1421014219_ '2))
                   (_key14247_ _e1421514244_)
                   (_e1421614249_ (##vector-ref _in1421014219_ '3))
                   (_phi14252_ _e1421614249_)
                   (_e1421714254_ (##vector-ref _in1421014219_ '4))
                   (_weak?14257_ _e1421714254_))
              (_K1421314236_ _weak?14257_ _phi14252_ _key14247_ _source14242_))
            (_E1421214223_)))))
  (define gx#core-bind-import!__0
    (lambda (_in14262_)
      (let* ((_ctx14264_ (gx#current-expander-context))
             (_force-weak?14266_ '#f))
        (gx#core-bind-import!__% _in14262_ _ctx14264_ _force-weak?14266_))))
  (define gx#core-bind-import!__1
    (lambda (_in14268_ _ctx14269_)
      (let ((_force-weak?14271_ '#f))
        (gx#core-bind-import!__% _in14268_ _ctx14269_ _force-weak?14271_))))
  (define gx#core-bind-import!
    (lambda _g15998_
      (let ((_g15997_ (length _g15998_)))
        (cond ((##fx= _g15997_ 1) (apply gx#core-bind-import!__0 _g15998_))
              ((##fx= _g15997_ 2) (apply gx#core-bind-import!__1 _g15998_))
              ((##fx= _g15997_ 3) (apply gx#core-bind-import!__% _g15998_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-import!
                _g15998_))))))
  (define gx#core-bind-weak-import!__%
    (lambda (_in14193_ _ctx14194_)
      (gx#core-bind-import!__% _in14193_ _ctx14194_ '#t)))
  (define gx#core-bind-weak-import!__0
    (lambda (_in14199_)
      (let ((_ctx14201_ (gx#current-expander-context)))
        (gx#core-bind-weak-import!__% _in14199_ _ctx14201_))))
  (define gx#core-bind-weak-import!
    (lambda _g16000_
      (let ((_g15999_ (length _g16000_)))
        (cond ((##fx= _g15999_ 1)
               (apply gx#core-bind-weak-import!__0 _g16000_))
              ((##fx= _g15999_ 2)
               (apply gx#core-bind-weak-import!__% _g16000_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-weak-import!
                _g16000_))))))
  (define gx#core-resolve-module-export
    (lambda (_out14084_)
      (letrec ((_subst14086_
                (lambda (_key14132_)
                  (let* ((_key1413314141_ _key14132_)
                         (_else1413514149_ (lambda () _key14132_))
                         (_K1413714180_
                          (lambda (_mark14152_ _id14153_)
                            (let* ((_mark1415414160_ _mark14152_)
                                   (_E1415614164_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1415414160_)))
                                   (_K1415714172_
                                    (lambda (_subst14167_)
                                      (let ((_$e14169_
                                             (if _subst14167_
                                                 (table-ref
                                                  _subst14167_
                                                  _id14153_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14169_
                                            _$e14169_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14132_))))))
                              (if (##structure-instance-of?
                                   _mark1415414160_
                                   'gx#expander-mark::t)
                                  (let* ((_e1415814175_
                                          (##vector-ref _mark1415414160_ '1))
                                         (_subst14178_ _e1415814175_))
                                    (_K1415714172_ _subst14178_))
                                  (_E1415614164_))))))
                    (if (##pair? _key1413314141_)
                        (let ((_hd1413814183_ (##car _key1413314141_))
                              (_tl1413914185_ (##cdr _key1413314141_)))
                          (let* ((_id14188_ _hd1413814183_)
                                 (_mark14190_ _tl1413914185_))
                            (_K1413714180_ _mark14190_ _id14188_)))
                        (_else1413514149_))))))
        (let* ((_out1408714097_ _out14084_)
               (_E1408914101_
                (lambda () (error '"No clause matching" _out1408714097_)))
               (_K1409014108_
                (lambda (_phi14104_ _key14105_ _ctx14106_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14106_ _phi14104_)
                   (_subst14086_ _key14105_)))))
          (if (##structure-direct-instance-of?
               _out1408714097_
               'gx#module-export::t)
              (let* ((_e1409114111_ (##vector-ref _out1408714097_ '1))
                     (_ctx14114_ _e1409114111_)
                     (_e1409214116_ (##vector-ref _out1408714097_ '2))
                     (_key14119_ _e1409214116_)
                     (_e1409314121_ (##vector-ref _out1408714097_ '3))
                     (_phi14124_ _e1409314121_)
                     (_e1409414126_ (##vector-ref _out1408714097_ '4))
                     (_e1409514129_ (##vector-ref _out1408714097_ '5)))
                (_K1409014108_ _phi14124_ _key14119_ _ctx14114_))
              (_E1408914101_))))))
  (define gx#core-module-export->import__%
    (lambda (_out14009_ _rename14010_ _dphi14011_)
      (let* ((_out1401214022_ _out14009_)
             (_E1401414026_
              (lambda () (error '"No clause matching" _out1401214022_)))
             (_K1401514038_
              (lambda (_weak?14029_
                       _name14030_
                       _phi14031_
                       _key14032_
                       _ctx14033_)
                (##structure
                 gx#module-import::t
                 _out14009_
                 (let ((_$e14035_ _rename14010_))
                   (if _$e14035_ _$e14035_ _name14030_))
                 (fx+ _phi14031_ _dphi14011_)
                 _weak?14029_))))
        (if (##structure-direct-instance-of?
             _out1401214022_
             'gx#module-export::t)
            (let* ((_e1401614041_ (##vector-ref _out1401214022_ '1))
                   (_ctx14044_ _e1401614041_)
                   (_e1401714046_ (##vector-ref _out1401214022_ '2))
                   (_key14049_ _e1401714046_)
                   (_e1401814051_ (##vector-ref _out1401214022_ '3))
                   (_phi14054_ _e1401814051_)
                   (_e1401914056_ (##vector-ref _out1401214022_ '4))
                   (_name14059_ _e1401914056_)
                   (_e1402014061_ (##vector-ref _out1401214022_ '5))
                   (_weak?14064_ _e1402014061_))
              (_K1401514038_
               _weak?14064_
               _name14059_
               _phi14054_
               _key14049_
               _ctx14044_))
            (_E1401414026_)))))
  (define gx#core-module-export->import__0
    (lambda (_out14069_)
      (let* ((_rename14071_ '#f) (_dphi14073_ '0))
        (gx#core-module-export->import__%
         _out14069_
         _rename14071_
         _dphi14073_))))
  (define gx#core-module-export->import__1
    (lambda (_out14075_ _rename14076_)
      (let ((_dphi14078_ '0))
        (gx#core-module-export->import__%
         _out14075_
         _rename14076_
         _dphi14078_))))
  (define gx#core-module-export->import
    (lambda _g16002_
      (let ((_g16001_ (length _g16002_)))
        (cond ((##fx= _g16001_ 1)
               (apply gx#core-module-export->import__0 _g16002_))
              ((##fx= _g16001_ 2)
               (apply gx#core-module-export->import__1 _g16002_))
              ((##fx= _g16001_ 3)
               (apply gx#core-module-export->import__% _g16002_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-module-export->import
                _g16002_))))))
  (define gx#core-expand-module%
    (lambda (_stx13937_)
      (letrec ((_make-context13939_
                (lambda (_id13990_)
                  (let* ((_super13992_ (gx#current-expander-context))
                         (_bind-id13994_ (gx#stx-e _id13990_))
                         (_mod-id13996_
                          (if (##structure-instance-of?
                               _super13992_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super13992_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id13994_)
                              _bind-id13994_))
                         (_ns13998_ (symbol->string _mod-id13996_))
                         (_path14005_
                          (if (##structure-instance-of?
                               _super13992_
                               'gx#module-context::t)
                              (let ((_path14000_
                                     (##unchecked-structure-ref
                                      _super13992_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (or (pair? _path14000_)
                                        (null? _path14000_))
                                    (cons _bind-id13994_ _path14000_)
                                    (if (not _path14000_)
                                        _bind-id13994_
                                        (cons _bind-id13994_
                                              (cons _path14000_ '())))))
                              _bind-id13994_)))
                    (let ((__obj15978 (make-object gx#module-context::t '11)))
                      (gx#module-context:::init!
                       __obj15978
                       _mod-id13996_
                       _super13992_
                       _ns13998_
                       _path14005_)
                      __obj15978)))))
        (let* ((_e1394013950_ _stx13937_)
               (_E1394213954_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1394013950_)))
               (_E1394113986_
                (lambda ()
                  (if (gx#stx-pair? _e1394013950_)
                      (let ((_e1394313958_ (gx#syntax-e _e1394013950_)))
                        (let ((_hd1394413961_ (##car _e1394313958_))
                              (_tl1394513963_ (##cdr _e1394313958_)))
                          (if (gx#stx-pair? _tl1394513963_)
                              (let ((_e1394613966_
                                     (gx#syntax-e _tl1394513963_)))
                                (let ((_hd1394713969_ (##car _e1394613966_))
                                      (_tl1394813971_ (##cdr _e1394613966_)))
                                  (let* ((_id13974_ _hd1394713969_)
                                         (_body13976_ _tl1394813971_))
                                    (if (and (gx#identifier? _id13974_)
                                             (gx#stx-list? _body13976_))
                                        (let* ((_ctx13978_
                                                (_make-context13939_
                                                 _id13974_))
                                               (_body13980_
                                                (gx#core-expand-module-begin
                                                 _body13976_
                                                 _ctx13978_))
                                               (_body13982_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body13980_)
                                                 (gx#stx-source _stx13937_))))
                                          (##unchecked-structure-set!
                                           _ctx13978_
                                           (##make-promise
                                            (lambda ()
                                              (gx#eval-syntax* _body13982_)))
                                           '10
                                           gx#module-context::t
                                           '#f)
                                          (##unchecked-structure-set!
                                           _ctx13978_
                                           _body13982_
                                           '11
                                           gx#module-context::t
                                           '#f)
                                          (gx#core-bind-syntax!__0
                                           _id13974_
                                           _ctx13978_)
                                          (gx#core-quote-syntax__1
                                           (gx#core-list
                                            '%#module
                                            (gx#core-quote-syntax__0 _id13974_)
                                            _body13982_)
                                           (gx#stx-source _stx13937_)))
                                        (_E1394213954_)))))
                              (_E1394213954_))))
                      (_E1394213954_)))))
          (_E1394113986_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13903_ _ctx13904_)
      (call-with-parameters
       (lambda ()
         (gx#core-bind-feature!__1 'gerbil-module '#t)
         (let* ((_stx13907_
                 (gx#core-expand-head (cons '%%begin-module _body13903_)))
                (_e1390813915_ _stx13907_)
                (_E1391013919_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Illegal module body expansion"
                    _stx13907_)))
                (_E1390913933_
                 (lambda ()
                   (if (gx#stx-pair? _e1390813915_)
                       (let ((_e1391113923_ (gx#syntax-e _e1390813915_)))
                         (let ((_hd1391213926_ (##car _e1391113923_))
                               (_tl1391313928_ (##cdr _e1391113923_)))
                           (if (and (gx#identifier? _hd1391213926_)
                                    (gx#core-identifier=?
                                     _hd1391213926_
                                     '%#begin-module))
                               (let ((_body13931_ _tl1391313928_))
                                 (if '#t
                                     (if (gx#sealed-syntax? _stx13907_)
                                         _body13931_
                                         (gx#core-expand-module-body
                                          _body13931_))
                                     (_E1391013919_)))
                               (_E1391013919_))))
                       (_E1391013919_)))))
           (_E1390913933_)))
       gx#current-expander-context
       _ctx13904_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13699_)
      (letrec ((_expand-special13701_
                (lambda (_hd13830_ _K13831_ _rest13832_ _r13833_)
                  (let* ((_e1383413851_ _hd13830_)
                         (_E1384613855_
                          (lambda ()
                            (_K13831_
                             _rest13832_
                             (cons (gx#core-expand-top _hd13830_) _r13833_))))
                         (_E1383613867_
                          (lambda ()
                            (if (gx#stx-pair? _e1383413851_)
                                (let ((_e1384713859_
                                       (gx#syntax-e _e1383413851_)))
                                  (let ((_hd1384813862_ (##car _e1384713859_))
                                        (_tl1384913864_ (##cdr _e1384713859_)))
                                    (if (and (gx#identifier? _hd1384813862_)
                                             (gx#core-identifier=?
                                              _hd1384813862_
                                              '%#export))
                                        (if '#t
                                            (_K13831_
                                             _rest13832_
                                             (cons _hd13830_ _r13833_))
                                            (_E1384613855_))
                                        (_E1384613855_))))
                                (_E1384613855_))))
                         (_E1383513899_
                          (lambda ()
                            (if (gx#stx-pair? _e1383413851_)
                                (let ((_e1383713871_
                                       (gx#syntax-e _e1383413851_)))
                                  (let ((_hd1383813874_ (##car _e1383713871_))
                                        (_tl1383913876_ (##cdr _e1383713871_)))
                                    (if (and (gx#identifier? _hd1383813874_)
                                             (gx#core-identifier=?
                                              _hd1383813874_
                                              '%#define-values))
                                        (if (gx#stx-pair? _tl1383913876_)
                                            (let ((_e1384013879_
                                                   (gx#syntax-e
                                                    _tl1383913876_)))
                                              (let ((_hd1384113882_
                                                     (##car _e1384013879_))
                                                    (_tl1384213884_
                                                     (##cdr _e1384013879_)))
                                                (let ((_hd-bind13887_
                                                       _hd1384113882_))
                                                  (if (gx#stx-pair?
                                                       _tl1384213884_)
                                                      (let ((_e1384313889_
                                                             (gx#syntax-e
                                                              _tl1384213884_)))
                                                        (let ((_hd1384413892_
                                                               (##car _e1384313889_))
                                                              (_tl1384513894_
                                                               (##cdr _e1384313889_)))
                                                          (let ((_expr13897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1384413892_))
                    (if (gx#stx-null? _tl1384513894_)
                        (if (gx#core-bind-values? _hd-bind13887_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13887_)
                              (_K13831_ _rest13832_ (cons _hd13830_ _r13833_)))
                            (_E1383613867_))
                        (_E1383613867_)))))
              (_E1383613867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1383613867_))
                                        (_E1383613867_))))
                                (_E1383613867_)))))
                    (_E1383513899_))))
               (_expand-body13702_
                (lambda (_rbody13704_)
                  (let _lp13706_ ((_rest13708_ _rbody13704_) (_body13709_ '()))
                    (let* ((_rest1371013718_ _rest13708_)
                           (_else1371213726_ (lambda () _body13709_))
                           (_K1371413818_
                            (lambda (_rest13729_ _hd13730_)
                              (let* ((_e1373113752_ _hd13730_)
                                     (_E1374713756_
                                      (lambda ()
                                        (_lp13706_
                                         _rest13729_
                                         (cons (gx#core-expand-expression
                                                _hd13730_)
                                               _body13709_))))
                                     (_E1374313770_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1373113752_)
                                            (let ((_e1374813760_
                                                   (gx#syntax-e
                                                    _e1373113752_)))
                                              (let ((_hd1374913763_
                                                     (##car _e1374813760_))
                                                    (_tl1375013765_
                                                     (##cdr _e1374813760_)))
                                                (let ((_form13768_
                                                       _hd1374913763_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13768_
                                                       gx#special-form-binding?)
                                                      (_lp13706_
                                                       _rest13729_
                                                       (cons _hd13730_
                                                             _body13709_))
                                                      (_E1374713756_)))))
                                            (_E1374713756_))))
                                     (_E1373313782_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1373113752_)
                                            (let ((_e1374413774_
                                                   (gx#syntax-e
                                                    _e1373113752_)))
                                              (let ((_hd1374513777_
                                                     (##car _e1374413774_))
                                                    (_tl1374613779_
                                                     (##cdr _e1374413774_)))
                                                (if (and (gx#identifier?
                                                          _hd1374513777_)
                                                         (gx#core-identifier=?
                                                          _hd1374513777_
                                                          '%#export))
                                                    (if '#t
                                                        (_lp13706_
                                                         _rest13729_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13730_)
                                                               _body13709_))
                                                        (_E1374313770_))
                                                    (_E1374313770_))))
                                            (_E1374313770_))))
                                     (_E1373213814_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1373113752_)
                                            (let ((_e1373413786_
                                                   (gx#syntax-e
                                                    _e1373113752_)))
                                              (let ((_hd1373513789_
                                                     (##car _e1373413786_))
                                                    (_tl1373613791_
                                                     (##cdr _e1373413786_)))
                                                (if (and (gx#identifier?
                                                          _hd1373513789_)
                                                         (gx#core-identifier=?
                                                          _hd1373513789_
                                                          '%#define-values))
                                                    (if (gx#stx-pair?
                                                         _tl1373613791_)
                                                        (let ((_e1373713794_
                                                               (gx#syntax-e
                                                                _tl1373613791_)))
                                                          (let ((_hd1373813797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1373713794_))
                        (_tl1373913799_ (##cdr _e1373713794_)))
                    (let ((_hd-bind13802_ _hd1373813797_))
                      (if (gx#stx-pair? _tl1373913799_)
                          (let ((_e1374013804_ (gx#syntax-e _tl1373913799_)))
                            (let ((_hd1374113807_ (##car _e1374013804_))
                                  (_tl1374213809_ (##cdr _e1374013804_)))
                              (let ((_expr13812_ _hd1374113807_))
                                (if (gx#stx-null? _tl1374213809_)
                                    (if '#t
                                        (_lp13706_
                                         _rest13729_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13802_)
                                                 (gx#core-expand-expression
                                                  _expr13812_))
                                                (gx#stx-source _hd13730_))
                                               _body13709_))
                                        (_E1373313782_))
                                    (_E1373313782_)))))
                          (_E1373313782_)))))
                (_E1373313782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1373313782_))))
                                            (_E1373313782_)))))
                                (_E1373213814_)))))
                      (if (##pair? _rest1371013718_)
                          (let ((_hd1371513821_ (##car _rest1371013718_))
                                (_tl1371613823_ (##cdr _rest1371013718_)))
                            (let* ((_hd13826_ _hd1371513821_)
                                   (_rest13828_ _tl1371613823_))
                              (_K1371413818_ _rest13828_ _hd13826_)))
                          (_else1371213726_)))))))
        (_expand-body13702_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13699_)
          _expand-special13701_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13542_
             _expanded?13543_
             _method13544_
             _current-phi13545_
             _expand113546_)
      (letrec ((_K13548_
                (lambda (_rest13666_ _r13667_)
                  (let* ((_e1366813675_ _rest13666_)
                         (_E1367013679_ (lambda () _r13667_))
                         (_E1366913695_
                          (lambda ()
                            (if (gx#stx-pair? _e1366813675_)
                                (let ((_e1367113683_
                                       (gx#syntax-e _e1366813675_)))
                                  (let ((_hd1367213686_ (##car _e1367113683_))
                                        (_tl1367313688_ (##cdr _e1367113683_)))
                                    (let* ((_hd13691_ _hd1367213686_)
                                           (_rest13693_ _tl1367313688_))
                                      (if '#t
                                          (_step13549_
                                           _hd13691_
                                           _rest13693_
                                           _r13667_)
                                          (_E1367013679_)))))
                                (_E1367013679_)))))
                    (_E1366913695_))))
               (_step13549_
                (lambda (_hd13580_ _rest13581_ _r13582_)
                  (let* ((_e1358313601_ _hd13580_)
                         (_E1359613605_
                          (lambda ()
                            (if (_expanded?13543_ (gx#stx-e _hd13580_))
                                (_K13548_
                                 _rest13581_
                                 (cons (gx#stx-e _hd13580_) _r13582_))
                                (_expand113546_
                                 _hd13580_
                                 _K13548_
                                 _rest13581_
                                 _r13582_))))
                         (_E1359213621_
                          (lambda ()
                            (if (gx#stx-pair? _e1358313601_)
                                (let ((_e1359713609_
                                       (gx#syntax-e _e1358313601_)))
                                  (let ((_hd1359813612_ (##car _e1359713609_))
                                        (_tl1359913614_ (##cdr _e1359713609_)))
                                    (let* ((_macro13617_ _hd1359813612_)
                                           (_body13619_ _tl1359913614_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro13617_
                                           gx#syntax-binding?)
                                          (_K13548_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro13617_)
                                                  _hd13580_
                                                  _method13544_)
                                                 _rest13581_)
                                           _r13582_)
                                          (_E1359613605_)))))
                                (_E1359613605_))))
                         (_E1358513635_
                          (lambda ()
                            (if (gx#stx-pair? _e1358313601_)
                                (let ((_e1359313625_
                                       (gx#syntax-e _e1358313601_)))
                                  (let ((_hd1359413628_ (##car _e1359313625_))
                                        (_tl1359513630_ (##cdr _e1359313625_)))
                                    (if (eq? (gx#stx-e _hd1359413628_) 'begin:)
                                        (let ((_body13633_ _tl1359513630_))
                                          (if '#t
                                              (_K13548_
                                               (gx#stx-foldr
                                                cons
                                                _rest13581_
                                                _body13633_)
                                               _r13582_)
                                              (_E1359213621_)))
                                        (_E1359213621_))))
                                (_E1359213621_))))
                         (_E1358413662_
                          (lambda ()
                            (if (gx#stx-pair? _e1358313601_)
                                (let ((_e1358613639_
                                       (gx#syntax-e _e1358313601_)))
                                  (let ((_hd1358713642_ (##car _e1358613639_))
                                        (_tl1358813644_ (##cdr _e1358613639_)))
                                    (if (eq? (gx#stx-e _hd1358713642_) 'phi:)
                                        (if (gx#stx-pair? _tl1358813644_)
                                            (let ((_e1358913647_
                                                   (gx#syntax-e
                                                    _tl1358813644_)))
                                              (let ((_hd1359013650_
                                                     (##car _e1358913647_))
                                                    (_tl1359113652_
                                                     (##cdr _e1358913647_)))
                                                (let* ((_dphi13655_
                                                        _hd1359013650_)
                                                       (_body13657_
                                                        _tl1359113652_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi13655_)
                                                      (let ((_rbody13660_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K13548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body13657_
                         '()))
                      _current-phi13545_
                      (fx+ (gx#stx-e _dphi13655_) (_current-phi13545_)))))
                (_K13548_ _rest13581_ (foldr1 cons _r13582_ _rbody13660_)))
              (_E1358513635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1358513635_))
                                        (_E1358513635_))))
                                (_E1358513635_)))))
                    (_E1358413662_)))))
        (let* ((_e1355013557_ _stx13542_)
               (_E1355213561_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1355013557_)))
               (_E1355113576_
                (lambda ()
                  (if (gx#stx-pair? _e1355013557_)
                      (let ((_e1355313565_ (gx#syntax-e _e1355013557_)))
                        (let ((_hd1355413568_ (##car _e1355313565_))
                              (_tl1355513570_ (##cdr _e1355313565_)))
                          (let ((_body13573_ _tl1355513570_))
                            (if '#t
                                (if (_current-phi13545_)
                                    (_K13548_ _body13573_ '())
                                    (call-with-parameters
                                     (lambda () (_K13548_ _body13573_ '()))
                                     _current-phi13545_
                                     (gx#current-expander-phi)))
                                (_E1355213561_)))))
                      (_E1355213561_)))))
          (_E1355113576_)))))
  (define gx#core-expand-import%__%
    (lambda (_stx13209_ _internal-expand?13210_)
      (letrec ((_expand113212_
                (lambda (_hd13522_ _K13523_ _rest13524_ _r13525_)
                  (if (gx#core-bound-module? _hd13522_)
                      (_import113213_
                       (gx#syntax-local-e__0 _hd13522_)
                       _K13523_
                       _rest13524_
                       _r13525_)
                      (if (gx#core-library-module-path? _hd13522_)
                          (_import113213_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _hd13522_))
                           _K13523_
                           _rest13524_
                           _r13525_)
                          (let ((_e13527_ (gx#stx-e _hd13522_)))
                            (if (pair? _e13527_)
                                (let ((_$e13529_ (gx#stx-e (car _e13527_))))
                                  (if (eq? 'spec: _$e13529_)
                                      (_import-spec13216_
                                       _hd13522_
                                       _K13523_
                                       _rest13524_
                                       _r13525_)
                                      (if (eq? 'in: _$e13529_)
                                          (_import-submodule13214_
                                           _hd13522_
                                           _K13523_
                                           _rest13524_
                                           _r13525_)
                                          (if (eq? 'runtime: _$e13529_)
                                              (_import-runtime13215_
                                               _hd13522_
                                               _K13523_
                                               _rest13524_
                                               _r13525_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx13209_
                                               _hd13522_)))))
                                (if (string? _e13527_)
                                    (_import113213_
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__%
                                       _hd13522_
                                       (gx#stx-source _stx13209_)))
                                     _K13523_
                                     _rest13524_
                                     _r13525_)
                                    (if (##structure-instance-of?
                                         _e13527_
                                         'gx#module-context::t)
                                        (_K13523_
                                         _rest13524_
                                         (cons _e13527_ _r13525_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; illegal import"
                                         _stx13209_
                                         _hd13522_)))))))))
               (_import113213_
                (lambda (_ctx13511_ _K13512_ _rest13513_ _r13514_)
                  (let ((_dphi13516_
                         (fx- (gx#current-import-expander-phi)
                              (gx#current-expander-phi))))
                    (_K13512_
                     _rest13513_
                     (cons (##structure
                            gx#import-set::t
                            _ctx13511_
                            _dphi13516_
                            (map (lambda (_g1351713519_)
                                   (gx#core-module-export->import__%
                                    _g1351713519_
                                    '#f
                                    _dphi13516_))
                                 (##unchecked-structure-ref
                                  _ctx13511_
                                  '9
                                  gx#module-context::t
                                  '#f)))
                           _r13514_)))))
               (_import-submodule13214_
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
                                          (_import113213_
                                           (_import-spec-source13217_
                                            _spath13505_)
                                           _K13479_
                                           _rest13480_
                                           _r13481_)
                                          (_E1348413493_)))))
                                (_E1348413493_)))))
                    (_E1348313507_))))
               (_import-runtime13215_
                (lambda (_hd13445_ _K13446_ _rest13447_ _r13448_)
                  (let* ((_e1344913456_ _hd13445_)
                         (_E1345113460_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1344913456_)))
                         (_E1345013474_
                          (lambda ()
                            (if (gx#stx-pair? _e1344913456_)
                                (let ((_e1345213464_
                                       (gx#syntax-e _e1344913456_)))
                                  (let ((_hd1345313467_ (##car _e1345213464_))
                                        (_tl1345413469_ (##cdr _e1345213464_)))
                                    (let ((_spath13472_ _tl1345413469_))
                                      (if '#t
                                          (_K13446_
                                           _rest13447_
                                           (cons (_import-spec-source13217_
                                                  _spath13472_)
                                                 _r13448_))
                                          (_E1345113460_)))))
                                (_E1345113460_)))))
                    (_E1345013474_))))
               (_import-spec13216_
                (lambda (_hd13284_ _K13285_ _rest13286_ _r13287_)
                  (let* ((_e1328813305_ _hd13284_)
                         (_E1329713309_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1328813305_)))
                         (_E1329013419_
                          (lambda ()
                            (if (gx#stx-pair? _e1328813305_)
                                (let ((_e1329813313_
                                       (gx#syntax-e _e1328813305_)))
                                  (let ((_hd1329913316_ (##car _e1329813313_))
                                        (_tl1330013318_ (##cdr _e1329813313_)))
                                    (if (gx#stx-pair? _tl1330013318_)
                                        (let ((_e1330113321_
                                               (gx#syntax-e _tl1330013318_)))
                                          (let ((_hd1330213324_
                                                 (##car _e1330113321_))
                                                (_tl1330313326_
                                                 (##cdr _e1330113321_)))
                                            (let* ((_path13329_ _hd1330213324_)
                                                   (_specs13331_
                                                    _tl1330313326_))
                                              (if '#t
                                                  (let ((_src-ctx13333_
                                                         (_import-spec-source13217_
                                                          _path13329_))
                                                        (_exports13334_
                                                         (make-table))
                                                        (_specs13335_
                                                         (gx#syntax->list
                                                          _specs13331_)))
                                                    (for-each
                                                     (lambda (_out13337_)
                                                       (table-set!
                                                        _exports13334_
                                                        (cons (##unchecked-structure-ref
                                                               _out13337_
                                                               '3
                                                               gx#module-export::t
                                                               '#f)
                                                              (##unchecked-structure-ref
                                                               _out13337_
                                                               '4
                                                               gx#module-export::t
                                                               '#f))
                                                        _out13337_))
                                                     (##unchecked-structure-ref
                                                      _src-ctx13333_
                                                      '9
                                                      gx#module-context::t
                                                      '#f))
                                                    (_K13285_
                                                     _rest13286_
                                                     (foldl1 (lambda (_spec13339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r13340_)
                       (let* ((_e1334113357_ _spec13339_)
                              (_E1334313361_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e1334113357_)))
                              (_E1334213415_
                               (lambda ()
                                 (if (gx#stx-pair? _e1334113357_)
                                     (let ((_e1334413365_
                                            (gx#syntax-e _e1334113357_)))
                                       (let ((_hd1334513368_
                                              (##car _e1334413365_))
                                             (_tl1334613370_
                                              (##cdr _e1334413365_)))
                                         (let ((_phi13373_ _hd1334513368_))
                                           (if (gx#stx-pair? _tl1334613370_)
                                               (let ((_e1334713375_
                                                      (gx#syntax-e
                                                       _tl1334613370_)))
                                                 (let ((_hd1334813378_
                                                        (##car _e1334713375_))
                                                       (_tl1334913380_
                                                        (##cdr _e1334713375_)))
                                                   (let ((_name13383_
                                                          _hd1334813378_))
                                                     (if (gx#stx-pair?
                                                          _tl1334913380_)
                                                         (let ((_e1335013385_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1334913380_)))
                   (let ((_hd1335113388_ (##car _e1335013385_))
                         (_tl1335213390_ (##cdr _e1335013385_)))
                     (let ((_src-phi13393_ _hd1335113388_))
                       (if (gx#stx-pair? _tl1335213390_)
                           (let ((_e1335313395_ (gx#syntax-e _tl1335213390_)))
                             (let ((_hd1335413398_ (##car _e1335313395_))
                                   (_tl1335513400_ (##cdr _e1335313395_)))
                               (let ((_src-name13403_ _hd1335413398_))
                                 (if (gx#stx-null? _tl1335513400_)
                                     (if (and (gx#stx-fixnum? _src-phi13393_)
                                              (gx#identifier? _src-name13403_)
                                              (gx#stx-fixnum? _phi13373_)
                                              (gx#identifier? _name13383_))
                                         (let ((_src-phi13405_
                                                (gx#stx-e _src-phi13393_))
                                               (_src-name13406_
                                                (gx#core-identifier-key
                                                 _src-name13403_))
                                               (_phi13407_
                                                (gx#stx-e _phi13373_))
                                               (_name13408_
                                                (gx#core-identifier-key
                                                 _name13383_)))
                                           (let ((_$e13410_
                                                  (table-ref
                                                   _exports13334_
                                                   (cons _src-phi13405_
                                                         _src-name13406_)
                                                   '#f)))
                                             (if _$e13410_
                                                 ((lambda (_out13413_)
                                                    (cons (gx#core-module-export->import__%
                                                           _out13413_
                                                           _name13408_
                                                           (fx- _phi13407_
                                                                _src-phi13405_))
                                                          _r13340_))
                                                  _$e13410_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; no matching export"
                                                  _stx13209_
                                                  _hd13284_))))
                                         (_E1334313361_))
                                     (_E1334313361_)))))
                           (_E1334313361_)))))
                 (_E1334313361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1334313361_)))))
                                     (_E1334313361_)))))
                         (_E1334213415_)))
                     _r13287_
                     _specs13335_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1329713309_)))))
                                        (_E1329713309_))))
                                (_E1329713309_))))
                         (_E1328913441_
                          (lambda ()
                            (if (gx#stx-pair? _e1328813305_)
                                (let ((_e1329113423_
                                       (gx#syntax-e _e1328813305_)))
                                  (let ((_hd1329213426_ (##car _e1329113423_))
                                        (_tl1329313428_ (##cdr _e1329113423_)))
                                    (if (gx#stx-pair? _tl1329313428_)
                                        (let ((_e1329413431_
                                               (gx#syntax-e _tl1329313428_)))
                                          (let ((_hd1329513434_
                                                 (##car _e1329413431_))
                                                (_tl1329613436_
                                                 (##cdr _e1329413431_)))
                                            (let ((_path13439_ _hd1329513434_))
                                              (if (gx#stx-null? _tl1329613436_)
                                                  (if '#t
                                                      (_K13285_
                                                       _rest13286_
                                                       (cons (_import-spec-source13217_
                                                              _path13439_)
                                                             _r13287_))
                                                      (_E1329013419_))
                                                  (_E1329013419_)))))
                                        (_E1329013419_))))
                                (_E1329013419_)))))
                    (_E1328913441_))))
               (_import-spec-source13217_
                (lambda (_spath13282_)
                  (gx#core-import-nested-module _spath13282_ _stx13209_)))
               (_import!13218_
                (lambda (_rbody13231_)
                  (letrec* ((_current-ctx13233_ (gx#current-expander-context))
                            (_deps13234_ (make-table 'test: eq?))
                            (_bind!13235_
                             (lambda (_hd13280_)
                               (gx#core-bind-import!__1
                                _hd13280_
                                _current-ctx13233_))))
                    (let _lp13237_ ((_rest13239_ _rbody13231_)
                                    (_body13240_ '()))
                      (let* ((_rest1324113249_ _rest13239_)
                             (_else1324313259_
                              (lambda ()
                                (if (##structure-instance-of?
                                     _current-ctx13233_
                                     'gx#module-context::t)
                                    (##unchecked-structure-set!
                                     _current-ctx13233_
                                     (foldl1 cons
                                             (##unchecked-structure-ref
                                              _current-ctx13233_
                                              '8
                                              gx#module-context::t
                                              '#f)
                                             _body13240_)
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    '#!void)
                                (table-for-each
                                 (lambda (_ctx13257_ _g16003_)
                                   (gx#eval-module _ctx13257_))
                                 _deps13234_)
                                _body13240_))
                             (_K1324513268_
                              (lambda (_rest13262_ _hd13263_)
                                (if (##structure-direct-instance-of?
                                     _hd13263_
                                     'gx#module-import::t)
                                    (begin
                                      (_bind!13235_ _hd13263_)
                                      (if (and (fxpositive?
                                                (##unchecked-structure-ref
                                                 _hd13263_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (fxzero? (##unchecked-structure-ref
                                                         (##unchecked-structure-ref
                                                          _hd13263_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '3
                                                         gx#module-export::t
                                                         '#f)))
                                          (table-set!
                                           _deps13234_
                                           (##unchecked-structure-ref
                                            (##unchecked-structure-ref
                                             _hd13263_
                                             '1
                                             gx#module-import::t
                                             '#f)
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           '#t)
                                          '#!void))
                                    (if (##structure-direct-instance-of?
                                         _hd13263_
                                         'gx#import-set::t)
                                        (begin
                                          (for-each
                                           _bind!13235_
                                           (##unchecked-structure-ref
                                            _hd13263_
                                            '3
                                            gx#import-set::t
                                            '#f))
                                          (if (fxpositive?
                                               (##unchecked-structure-ref
                                                _hd13263_
                                                '2
                                                gx#import-set::t
                                                '#f))
                                              (table-set!
                                               _deps13234_
                                               (##unchecked-structure-ref
                                                _hd13263_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (let ((_$e13265_
                                               (##structure-instance-of?
                                                _hd13263_
                                                'gx#module-context::t)))
                                          (if _$e13265_
                                              _$e13265_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Unexpected import"
                                               _stx13209_
                                               _hd13263_)))))
                                (_lp13237_
                                 _rest13262_
                                 (cons _hd13263_ _body13240_)))))
                        (if (##pair? _rest1324113249_)
                            (let ((_hd1324613271_ (##car _rest1324113249_))
                                  (_tl1324713273_ (##cdr _rest1324113249_)))
                              (let* ((_hd13276_ _hd1324613271_)
                                     (_rest13278_ _tl1324713273_))
                                (_K1324513268_ _rest13278_ _hd13276_)))
                            (_else1324313259_)))))))
               (_expanded-import?13219_
                (lambda (_e13223_)
                  (let ((_$e13225_
                         (##structure-direct-instance-of?
                          _e13223_
                          'gx#import-set::t)))
                    (if _$e13225_
                        _$e13225_
                        (let ((_$e13228_
                               (##structure-direct-instance-of?
                                _e13223_
                                'gx#module-import::t)))
                          (if _$e13228_
                              _$e13228_
                              (##structure-instance-of?
                               _e13223_
                               'gx#module-context::t))))))))
        (let ((_rbody13221_
               (gx#core-expand-import/export
                _stx13209_
                _expanded-import?13219_
                'apply-import-expander
                gx#current-import-expander-phi
                _expand113212_)))
          (if _internal-expand?13210_
              (reverse _rbody13221_)
              (gx#core-quote-syntax__1
               (gx#core-cons '%#import (_import!13218_ _rbody13221_))
               (gx#stx-source _stx13209_)))))))
  (define gx#core-expand-import%__0
    (lambda (_stx13535_)
      (let ((_internal-expand?13537_ '#f))
        (gx#core-expand-import%__% _stx13535_ _internal-expand?13537_))))
  (define gx#core-expand-import%
    (lambda _g16005_
      (let ((_g16004_ (length _g16005_)))
        (cond ((##fx= _g16004_ 1) (apply gx#core-expand-import%__0 _g16005_))
              ((##fx= _g16004_ 2) (apply gx#core-expand-import%__% _g16005_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-import%
                _g16005_))))))
  (define gx#core-import-nested-module
    (lambda (_spath13136_ _where13137_)
      (let* ((_e1313813145_ _spath13136_)
             (_E1314013149_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1313813145_)))
             (_E1313913204_
              (lambda ()
                (if (gx#stx-pair? _e1313813145_)
                    (let ((_e1314113153_ (gx#syntax-e _e1313813145_)))
                      (let ((_hd1314213156_ (##car _e1314113153_))
                            (_tl1314313158_ (##cdr _e1314113153_)))
                        (let* ((_origin13161_ _hd1314213156_)
                               (_sub13163_ _tl1314313158_))
                          (if '#t
                              (let ((_origin-ctx13165_
                                     (if (gx#stx-false? _origin13161_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13161_))))
                                (let _lp13167_ ((_rest13169_ _sub13163_)
                                                (_ctx13170_ _origin-ctx13165_))
                                  (let* ((_e1317113178_ _rest13169_)
                                         (_E1317313182_ (lambda () _ctx13170_))
                                         (_E1317213200_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1317113178_)
                                                (let ((_e1317413186_
                                                       (gx#syntax-e
                                                        _e1317113178_)))
                                                  (let ((_hd1317513189_
                                                         (##car _e1317413186_))
                                                        (_tl1317613191_
                                                         (##cdr _e1317413186_)))
                                                    (let* ((_id13194_
                                                            _hd1317513189_)
                                                           (_rest13196_
                                                            _tl1317613191_))
                                                      (if '#t
                                                          (let ((_bind13198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13194_ '0 _ctx13170_)))
                    (if (and (##structure-direct-instance-of?
                              _bind13198_
                              'gx#syntax-binding::t)
                             (##structure-instance-of?
                              (##unchecked-structure-ref
                               _bind13198_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              'gx#module-context::t))
                        '#!void
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; not bound as module"
                         _where13137_
                         _spath13136_
                         _id13194_))
                    (_lp13167_
                     _rest13196_
                     (##unchecked-structure-ref
                      _bind13198_
                      '4
                      gx#syntax-binding::t
                      '#f)))
                  (_E1317313182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1317313182_)))))
                                    (_E1317213200_))))
                              (_E1314013149_)))))
                    (_E1314013149_)))))
        (_E1313913204_))))
  (define gx#core-expand-import-source
    (lambda (_hd13134_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13134_ '()))
       '#t)))
  (define gx#core-expand-export%__%
    (lambda (_stx12645_ _internal-expand?12646_)
      (letrec* ((_make-export__1594315944_
                 (lambda (_bind13082_ _phi13083_ _ctx13084_ _name13085_)
                   (let* ((_key13087_
                           (##unchecked-structure-ref
                            _bind13082_
                            '2
                            gx#binding::t
                            '#f))
                          (_export-key13089_
                           (if _name13085_
                               (gx#core-identifier-key _name13085_)
                               _key13087_)))
                     (##structure
                      gx#module-export::t
                      _ctx13084_
                      _key13087_
                      _phi13083_
                      _export-key13089_
                      (let ((_$e13092_
                             (##structure-instance-of?
                              _bind13082_
                              'gx#extern-binding::t)))
                        (if _$e13092_
                            _$e13092_
                            (##structure-direct-instance-of?
                             _bind13082_
                             'gx#import-binding::t)))))))
                (_make-export__0__1594515948_
                 (lambda (_bind13098_)
                   (let* ((_phi13100_ (gx#current-export-expander-phi))
                          (_ctx13102_ (gx#current-expander-context))
                          (_name13104_ '#f))
                     (_make-export__1594315944_
                      _bind13098_
                      _phi13100_
                      _ctx13102_
                      _name13104_))))
                (_make-export__1__1594615949_
                 (lambda (_bind13106_ _phi13107_)
                   (let* ((_ctx13109_ (gx#current-expander-context))
                          (_name13111_ '#f))
                     (_make-export__1594315944_
                      _bind13106_
                      _phi13107_
                      _ctx13109_
                      _name13111_))))
                (_make-export__2__1594715950_
                 (lambda (_bind13113_ _phi13114_ _ctx13115_)
                   (let ((_name13117_ '#f))
                     (_make-export__1594315944_
                      _bind13113_
                      _phi13114_
                      _ctx13115_
                      _name13117_))))
                (_make-export12648_
                 (lambda _g16007_
                   (let ((_g16006_ (length _g16007_)))
                     (cond ((##fx= _g16006_ 1)
                            (apply _make-export__0__1594515948_ _g16007_))
                           ((##fx= _g16006_ 2)
                            (apply _make-export__1__1594615949_ _g16007_))
                           ((##fx= _g16006_ 3)
                            (apply _make-export__2__1594715950_ _g16007_))
                           ((##fx= _g16006_ 4)
                            (apply _make-export__1594315944_ _g16007_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g16007_))))))
                (_expand112649_
                 (lambda (_hd12795_ _K12796_ _rest12797_ _r12798_)
                   (let* ((_e1279912831_ _hd12795_)
                          (_E1282612835_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; illegal export"
                              _stx12645_
                              _hd12795_)))
                          (_E1281612914_
                           (lambda ()
                             (if (gx#stx-pair? _e1279912831_)
                                 (let ((_e1282712839_
                                        (gx#syntax-e _e1279912831_)))
                                   (let ((_hd1282812842_ (##car _e1282712839_))
                                         (_tl1282912844_
                                          (##cdr _e1282712839_)))
                                     (if (eq? (gx#stx-e _hd1282812842_)
                                              'import:)
                                         (let ((_in12847_ _tl1282912844_))
                                           (if (gx#stx-list? _in12847_)
                                               (let _lp12849_ ((_in-rest12851_
                                                                _in12847_)
                                                               (_r12852_
                                                                _r12798_))
                                                 (let* ((_e1285312860_
                                                         _in-rest12851_)
                                                        (_E1285512864_
                                                         (lambda ()
                                                           (_K12796_
                                                            _rest12797_
                                                            _r12852_)))
                                                        (_E1285412910_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                _e1285312860_)
                                                               (let ((_e1285612868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _e1285312860_)))
                         (let ((_hd1285712871_ (##car _e1285612868_))
                               (_tl1285812873_ (##cdr _e1285612868_)))
                           (let* ((_hd12876_ _hd1285712871_)
                                  (_in-rest12878_ _tl1285812873_))
                             (if '#t
                                 (let ((_src12908_
                                        (if (gx#core-bound-module? _hd12876_)
                                            (gx#syntax-local-e__0 _hd12876_)
                                            (if (gx#core-library-module-path?
                                                 _hd12876_)
                                                (gx#import-module__0
                                                 (gx#core-resolve-library-module-path
                                                  _hd12876_))
                                                (if (gx#stx-string? _hd12876_)
                                                    (gx#import-module__0
                                                     (gx#core-resolve-module-path__%
                                                      _hd12876_
                                                      (gx#stx-source
                                                       _stx12645_)))
                                                    (let* ((_e1287912886_
                                                            _hd12876_)
                                                           (_E1288112890_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; illegal re-export"
                                                               _stx12645_
                                                               _hd12876_)))
                                                           (_E1288012904_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1287912886_)
                          (let ((_e1288212894_ (gx#syntax-e _e1287912886_)))
                            (let ((_hd1288312897_ (##car _e1288212894_))
                                  (_tl1288412899_ (##cdr _e1288212894_)))
                              (if (eq? (gx#stx-e _hd1288312897_) 'in:)
                                  (let ((_spath12902_ _tl1288412899_))
                                    (if '#t
                                        (gx#core-import-nested-module
                                         _spath12902_
                                         _stx12645_)
                                        (_E1288112890_)))
                                  (_E1288112890_))))
                          (_E1288112890_)))))
              (_E1288012904_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_lp12849_
                                    _in-rest12878_
                                    (_export-imports12650_
                                     _src12908_
                                     _r12852_)))
                                 (_E1285512864_)))))
                       (_E1285512864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1285412910_)))
                                               (_E1282612835_)))
                                         (_E1282612835_))))
                                 (_E1282612835_))))
                          (_E1280312953_
                           (lambda ()
                             (if (gx#stx-pair? _e1279912831_)
                                 (let ((_e1281712918_
                                        (gx#syntax-e _e1279912831_)))
                                   (let ((_hd1281812921_ (##car _e1281712918_))
                                         (_tl1281912923_
                                          (##cdr _e1281712918_)))
                                     (if (eq? (gx#stx-e _hd1281812921_)
                                              'rename:)
                                         (if (gx#stx-pair? _tl1281912923_)
                                             (let ((_e1282012926_
                                                    (gx#syntax-e
                                                     _tl1281912923_)))
                                               (let ((_hd1282112929_
                                                      (##car _e1282012926_))
                                                     (_tl1282212931_
                                                      (##cdr _e1282012926_)))
                                                 (let ((_id12934_
                                                        _hd1282112929_))
                                                   (if (gx#stx-pair?
                                                        _tl1282212931_)
                                                       (let ((_e1282312936_
                                                              (gx#syntax-e
                                                               _tl1282212931_)))
                                                         (let ((_hd1282412939_
                                                                (##car _e1282312936_))
                                                               (_tl1282512941_
                                                                (##cdr _e1282312936_)))
                                                           (let ((_name12944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1282412939_))
                     (if (gx#stx-null? _tl1282512941_)
                         (if '#t
                             (let* ((_phi12946_
                                     (gx#current-export-expander-phi))
                                    (_$e12948_
                                     (gx#core-resolve-identifier__1
                                      _id12934_
                                      _phi12946_)))
                               (if _$e12948_
                                   ((lambda (_bind12951_)
                                      (_K12796_
                                       _rest12797_
                                       (cons (_make-export__1594315944_
                                              _bind12951_
                                              _phi12946_
                                              (gx#current-expander-context)
                                              _name12944_)
                                             _r12798_)))
                                    _$e12948_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx12645_
                                    _hd12795_
                                    _id12934_)))
                             (_E1281612914_))
                         (_E1281612914_)))))
               (_E1281612914_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E1281612914_))
                                         (_E1281612914_))))
                                 (_E1281612914_))))
                          (_E1280213002_
                           (lambda ()
                             (if (gx#stx-pair? _e1279912831_)
                                 (let ((_e1280412957_
                                        (gx#syntax-e _e1279912831_)))
                                   (let ((_hd1280512960_ (##car _e1280412957_))
                                         (_tl1280612962_
                                          (##cdr _e1280412957_)))
                                     (if (eq? (gx#stx-e _hd1280512960_) 'spec:)
                                         (if (gx#stx-pair? _tl1280612962_)
                                             (let ((_e1280712965_
                                                    (gx#syntax-e
                                                     _tl1280612962_)))
                                               (let ((_hd1280812968_
                                                      (##car _e1280712965_))
                                                     (_tl1280912970_
                                                      (##cdr _e1280712965_)))
                                                 (let ((_phi12973_
                                                        _hd1280812968_))
                                                   (if (gx#stx-pair?
                                                        _tl1280912970_)
                                                       (let ((_e1281012975_
                                                              (gx#syntax-e
                                                               _tl1280912970_)))
                                                         (let ((_hd1281112978_
                                                                (##car _e1281012975_))
                                                               (_tl1281212980_
                                                                (##cdr _e1281012975_)))
                                                           (let ((_id12983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1281112978_))
                     (if (gx#stx-pair? _tl1281212980_)
                         (let ((_e1281312985_ (gx#syntax-e _tl1281212980_)))
                           (let ((_hd1281412988_ (##car _e1281312985_))
                                 (_tl1281512990_ (##cdr _e1281312985_)))
                             (let ((_name12993_ _hd1281412988_))
                               (if (gx#stx-null? _tl1281512990_)
                                   (if (and (gx#stx-fixnum? _phi12973_)
                                            (gx#identifier? _id12983_)
                                            (gx#identifier? _name12993_))
                                       (let* ((_phi12995_
                                               (gx#stx-e _phi12973_))
                                              (_$e12997_
                                               (gx#core-resolve-identifier__1
                                                _id12983_
                                                _phi12995_)))
                                         (if _$e12997_
                                             ((lambda (_bind13000_)
                                                (_K12796_
                                                 _rest12797_
                                                 (cons (_make-export__1594315944_
                                                        _bind13000_
                                                        _phi12995_
                                                        (gx#current-expander-context)
                                                        _name12993_)
                                                       _r12798_)))
                                              _$e12997_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _stx12645_
                                              _hd12795_
                                              _id12983_)))
                                       (_E1280312953_))
                                   (_E1280312953_)))))
                         (_E1280312953_)))))
               (_E1280312953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E1280312953_))
                                         (_E1280312953_))))
                                 (_E1280312953_))))
                          (_E1280113013_
                           (lambda ()
                             (let ((_id13006_ _e1279912831_))
                               (if (gx#identifier? _id13006_)
                                   (let ((_$e13008_
                                          (gx#core-resolve-identifier__1
                                           _id13006_
                                           (gx#current-export-expander-phi))))
                                     (if _$e13008_
                                         ((lambda (_bind13011_)
                                            (_K12796_
                                             _rest12797_
                                             (cons (_make-export__0__1594515948_
                                                    _bind13011_)
                                                   _r12798_)))
                                          _$e13008_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Reference to unbound identifier"
                                          _stx12645_
                                          _hd12795_)))
                                   (_E1280213002_)))))
                          (_E1280013077_
                           (lambda ()
                             (if (eq? (gx#stx-e _e1279912831_) '#t)
                                 (if '#t
                                     (let* ((_current-ctx13017_
                                             (gx#current-expander-context))
                                            (_current-phi13019_
                                             (gx#current-export-expander-phi))
                                            (_phi-ctx13021_
                                             (gx#core-context-shift
                                              _current-ctx13017_
                                              _current-phi13019_))
                                            (_phi-bind13023_
                                             (table->list
                                              (##unchecked-structure-ref
                                               _phi-ctx13021_
                                               '2
                                               gx#expander-context::t
                                               '#f))))
                                       (let _lp13026_ ((_bind-rest13028_
                                                        _phi-bind13023_)
                                                       (_set13029_ '()))
                                         (let* ((_bind-rest1303013040_
                                                 _bind-rest13028_)
                                                (_else1303213048_
                                                 (lambda ()
                                                   (_K12796_
                                                    _rest12797_
                                                    (cons (##structure
                                                           gx#export-set::t
                                                           '#f
                                                           _current-phi13019_
                                                           _set13029_)
                                                          _r12798_))))
                                                (_K1303413058_
                                                 (lambda (_bind-rest13051_
                                                          _bind13052_
                                                          _key13053_)
                                                   (if (or (##structure-direct-instance-of?
                                                            _bind13052_
                                                            'gx#import-binding::t)
                                                           (gx#private-feature-binding?
                                                            _bind13052_))
                                                       (_lp13026_
                                                        _bind-rest13051_
                                                        _set13029_)
                                                       (_lp13026_
                                                        _bind-rest13051_
                                                        (cons (_make-export__2__1594715950_
                                                               _bind13052_
                                                               _current-phi13019_
                                                               _current-ctx13017_)
                                                              _set13029_))))))
                                           (if (##pair? _bind-rest1303013040_)
                                               (let ((_hd1303513061_
                                                      (##car _bind-rest1303013040_))
                                                     (_tl1303613063_
                                                      (##cdr _bind-rest1303013040_)))
                                                 (if (##pair? _hd1303513061_)
                                                     (let ((_hd1303713066_
                                                            (##car _hd1303513061_))
                                                           (_tl1303813068_
                                                            (##cdr _hd1303513061_)))
                                                       (let* ((_key13071_
                                                               _hd1303713066_)
                                                              (_bind13073_
                                                               _tl1303813068_)
                                                              (_bind-rest13075_
                                                               _tl1303613063_))
                                                         (_K1303413058_
                                                          _bind-rest13075_
                                                          _bind13073_
                                                          _key13071_)))
                                                     (_else1303213048_)))
                                               (_else1303213048_)))))
                                     (_E1280113013_))
                                 (_E1280113013_)))))
                     (_E1280013077_))))
                (_export-imports12650_
                 (lambda (_src12671_ _r12672_)
                   (letrec* ((_current-ctx12674_ (gx#current-expander-context))
                             (_current-phi12675_
                              (gx#current-export-expander-phi))
                             (_import->export12676_
                              (lambda (_in12757_)
                                (let* ((_in1275812766_ _in12757_)
                                       (_E1276012770_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _in1275812766_)))
                                       (_K1276112777_
                                        (lambda (_phi12773_
                                                 _key12774_
                                                 _out12775_)
                                          (##structure
                                           gx#module-export::t
                                           _current-ctx12674_
                                           _key12774_
                                           _phi12773_
                                           _key12774_
                                           '#t))))
                                  (if (##structure-direct-instance-of?
                                       _in1275812766_
                                       'gx#module-import::t)
                                      (let* ((_e1276212780_
                                              (##vector-ref _in1275812766_ '1))
                                             (_out12783_ _e1276212780_)
                                             (_e1276312785_
                                              (##vector-ref _in1275812766_ '2))
                                             (_key12788_ _e1276312785_)
                                             (_e1276412790_
                                              (##vector-ref _in1275812766_ '3))
                                             (_phi12793_ _e1276412790_))
                                        (_K1276112777_
                                         _phi12793_
                                         _key12788_
                                         _out12783_))
                                      (_E1276012770_)))))
                             (_fold-e12677_
                              (lambda (_in12679_ _r12680_)
                                (let* ((_in1268112695_ _in12679_)
                                       (_else1268412703_ (lambda () _r12680_)))
                                  (let ((_K1269012739_
                                         (lambda (_phi12735_
                                                  _key12736_
                                                  _out12737_)
                                           (if (and (fx= _phi12735_
                                                         _current-phi12675_)
                                                    (eq? _src12671_
                                                         (##unchecked-structure-ref
                                                          _out12737_
                                                          '1
                                                          gx#module-export::t
                                                          '#f)))
                                               (cons (_import->export12676_
                                                      _in12679_)
                                                     _r12680_)
                                               _r12680_)))
                                        (_K1268612714_
                                         (lambda (_imports12707_
                                                  _phi12708_
                                                  _ctx12709_)
                                           (if (and (fx= _phi12708_
                                                         _current-phi12675_)
                                                    (eq? _src12671_
                                                         _ctx12709_))
                                               (foldl1 (lambda (_in12711_
                                                                _r12712_)
                                                         (cons (_import->export12676_
                                                                _in12711_)
                                                               _r12712_))
                                                       _r12680_
                                                       _imports12707_)
                                               _r12680_))))
                                    (let ((_try-match1268312732_
                                           (lambda ()
                                             (if (##structure-direct-instance-of?
                                                  _in1268112695_
                                                  'gx#import-set::t)
                                                 (let* ((_e1268712717_
                                                         (##vector-ref
                                                          _in1268112695_
                                                          '1))
                                                        (_e1268812722_
                                                         (##vector-ref
                                                          _in1268112695_
                                                          '2))
                                                        (_e1268912727_
                                                         (##vector-ref
                                                          _in1268112695_
                                                          '3)))
                                                   (let ((_ctx12720_
                                                          _e1268712717_)
                                                         (_phi12725_
                                                          _e1268812722_)
                                                         (_imports12730_
                                                          _e1268912727_))
                                                     (_K1268612714_
                                                      _imports12730_
                                                      _phi12725_
                                                      _ctx12720_)))
                                                 (_else1268412703_)))))
                                      (if (##structure-direct-instance-of?
                                           _in1268112695_
                                           'gx#module-import::t)
                                          (let* ((_e1269112742_
                                                  (##vector-ref
                                                   _in1268112695_
                                                   '1))
                                                 (_e1269212747_
                                                  (##vector-ref
                                                   _in1268112695_
                                                   '2))
                                                 (_e1269312752_
                                                  (##vector-ref
                                                   _in1268112695_
                                                   '3)))
                                            (let ((_out12745_ _e1269112742_)
                                                  (_key12750_ _e1269212747_)
                                                  (_phi12755_ _e1269312752_))
                                              (_K1269012739_
                                               _phi12755_
                                               _key12750_
                                               _out12745_)))
                                          (_try-match1268312732_))))))))
                     (cons (##structure
                            gx#export-set::t
                            _src12671_
                            _current-phi12675_
                            (foldl1 _fold-e12677_
                                    '()
                                    (##unchecked-structure-ref
                                     _current-ctx12674_
                                     '8
                                     gx#module-context::t
                                     '#f)))
                           _r12672_))))
                (_export!12651_
                 (lambda (_rbody12661_)
                   (letrec* ((_current-ctx12663_ (gx#current-expander-context))
                             (_fold-e12664_
                              (lambda (_out12668_ _r12669_)
                                (if (##structure-direct-instance-of?
                                     _out12668_
                                     'gx#module-export::t)
                                    (cons _out12668_ _r12669_)
                                    (if (##structure-direct-instance-of?
                                         _out12668_
                                         'gx#export-set::t)
                                        (foldl1 cons
                                                _r12669_
                                                (##unchecked-structure-ref
                                                 _out12668_
                                                 '3
                                                 gx#export-set::t
                                                 '#f))
                                        _r12669_)))))
                     (let ((_body12666_ (reverse _rbody12661_)))
                       (##unchecked-structure-set!
                        _current-ctx12663_
                        (foldl1 _fold-e12664_
                                (##unchecked-structure-ref
                                 _current-ctx12663_
                                 '9
                                 gx#module-context::t
                                 '#f)
                                _body12666_)
                        '9
                        gx#module-context::t
                        '#f)
                       _body12666_))))
                (_expanded-export?12652_
                 (lambda (_e12656_)
                   (let ((_$e12658_
                          (##structure-direct-instance-of?
                           _e12656_
                           'gx#module-export::t)))
                     (if _$e12658_
                         _$e12658_
                         (##structure-direct-instance-of?
                          _e12656_
                          'gx#export-set::t))))))
        (let ((_rbody12654_
               (gx#core-expand-import/export
                _stx12645_
                _expanded-export?12652_
                'apply-export-expander
                gx#current-export-expander-phi
                _expand112649_)))
          (if _internal-expand?12646_
              (reverse _rbody12654_)
              (gx#core-quote-syntax__1
               (gx#core-cons '%#export (_export!12651_ _rbody12654_))
               (gx#stx-source _stx12645_)))))))
  (define gx#core-expand-export%__0
    (lambda (_stx13127_)
      (let ((_internal-expand?13129_ '#f))
        (gx#core-expand-export%__% _stx13127_ _internal-expand?13129_))))
  (define gx#core-expand-export%
    (lambda _g16009_
      (let ((_g16008_ (length _g16009_)))
        (cond ((##fx= _g16008_ 1) (apply gx#core-expand-export%__0 _g16009_))
              ((##fx= _g16008_ 2) (apply gx#core-expand-export%__% _g16009_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-export%
                _g16009_))))))
  (define gx#core-expand-export-source
    (lambda (_hd12642_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12642_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12612_)
      (let* ((_e1261312620_ _stx12612_)
             (_E1261512624_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1261312620_)))
             (_E1261412638_
              (lambda ()
                (if (gx#stx-pair? _e1261312620_)
                    (let ((_e1261612628_ (gx#syntax-e _e1261312620_)))
                      (let ((_hd1261712631_ (##car _e1261612628_))
                            (_tl1261812633_ (##cdr _e1261612628_)))
                        (let ((_body12636_ _tl1261812633_))
                          (if (gx#identifier-list? _body12636_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12636_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12636_))
                                 (gx#stx-source _stx12612_)))
                              (_E1261512624_)))))
                    (_E1261512624_)))))
        (_E1261412638_))))
  (define gx#core-bind-feature!__%
    (lambda (_id12578_ _private?12579_ _phi12580_ _ctx12581_)
      (gx#core-bind-syntax!__%
       _id12578_
       ((if _private?12579_
            gx#make-private-feature-expander
            gx#make-feature-expander)
        (gx#stx-e _id12578_))
       _private?12579_
       _phi12580_
       _ctx12581_)))
  (define gx#core-bind-feature!__0
    (lambda (_id12586_)
      (let* ((_private?12588_ '#f)
             (_phi12590_ (gx#current-expander-phi))
             (_ctx12592_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12586_
         _private?12588_
         _phi12590_
         _ctx12592_))))
  (define gx#core-bind-feature!__1
    (lambda (_id12594_ _private?12595_)
      (let* ((_phi12597_ (gx#current-expander-phi))
             (_ctx12599_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12594_
         _private?12595_
         _phi12597_
         _ctx12599_))))
  (define gx#core-bind-feature!__2
    (lambda (_id12601_ _private?12602_ _phi12603_)
      (let ((_ctx12605_ (gx#current-expander-context)))
        (gx#core-bind-feature!__%
         _id12601_
         _private?12602_
         _phi12603_
         _ctx12605_))))
  (define gx#core-bind-feature!
    (lambda _g16011_
      (let ((_g16010_ (length _g16011_)))
        (cond ((##fx= _g16010_ 1) (apply gx#core-bind-feature!__0 _g16011_))
              ((##fx= _g16010_ 2) (apply gx#core-bind-feature!__1 _g16011_))
              ((##fx= _g16010_ 3) (apply gx#core-bind-feature!__2 _g16011_))
              ((##fx= _g16010_ 4) (apply gx#core-bind-feature!__% _g16011_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind-feature!
                _g16011_)))))))
