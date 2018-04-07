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
    (lambda _$args15938_
      (apply make-struct-instance gx#module-import::t _$args15938_)))
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
    (lambda _$args15935_
      (apply make-struct-instance gx#module-export::t _$args15935_)))
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
    (lambda _$args15932_
      (apply make-struct-instance gx#import-set::t _$args15932_)))
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
    (lambda _$args15929_
      (apply make-struct-instance gx#export-set::t _$args15929_)))
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
    (lambda _$args15926_
      (apply make-class-instance gx#import-expander::t _$args15926_)))
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
    (lambda _$args15923_
      (apply make-class-instance gx#export-expander::t _$args15923_)))
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
    (lambda _$args15920_
      (apply make-class-instance gx#import-export-expander::t _$args15920_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15914_ _id15915_ _super15916_ _ns15917_ _path15918_)
      (struct-instance-init!
       _self15914_
       _id15915_
       (make-table 'test: eq?)
       _super15916_
       '#f
       '#f
       _ns15917_
       _path15918_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self15758_ _ctx15759_ _root15760_)
        (let ((_super15768_
               (let ((_$e15762_ _root15760_))
                 (if _$e15762_
                     _$e15762_
                     (let ((_$e15765_ (gx#core-context-root__0)))
                       (if _$e15765_
                           _$e15765_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx15759_
              (let ((_id15771_
                     (##structure-ref
                      _ctx15759_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path15772_
                     (##structure-ref _ctx15759_ '7 gx#module-context::t '#f))
                    (_in15773_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx15759_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e15774_
                     (##make-promise (lambda () (gx#eval-module _ctx15759_)))))
                (begin
                  (struct-instance-init!
                   _self15758_
                   _id15771_
                   (make-table 'test: eq? 'size: (length _in15773_))
                   _super15768_
                   '#f
                   '#f
                   _path15772_
                   _in15773_
                   _e15774_)
                  (for-each
                   (lambda (_g1577515777_)
                     (gx#core-bind-weak-import!__% _g1577515777_ _self15758_))
                   _in15773_)))
              (struct-instance-init!
               _self15758_
               '#f
               (make-table 'test: eq?)
               _super15768_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self15783_ _ctx15784_)
          (let ((_root15786_ '#f))
            (gx#prelude-context:::init!__%
             _self15783_
             _ctx15784_
             _root15786_))))
      (define gx#prelude-context:::init!
        (lambda _g15978_
          (let ((_g15977_ (length _g15978_)))
            (cond ((##fx= _g15977_ 2)
                   (apply gx#prelude-context:::init!__0 _g15978_))
                  ((##fx= _g15977_ 3)
                   (apply gx#prelude-context:::init!__% _g15978_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g15978_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15632_ _e15633_)
      (struct-instance-init!
       _self15632_
       _e15633_
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
    (lambda (_g1525815261_ _g1525915263_)
      (gx#core-apply-user-expander__%
       _g1525815261_
       _g1525915263_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1512915132_ _g1513015134_)
      (gx#core-apply-user-expander__%
       _g1512915132_
       _g1513015134_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx15000_)
      (let* ((_path15002_
              (##structure-ref _ctx15000_ '7 gx#module-context::t '#f))
             (_path15004_
              (if (pair? _path15002_) (last _path15002_) _path15002_)))
        (if (string? _path15004_) _path15004_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path14976_ _reload?14977_ _eval?14978_)
        (let ((_ctx14980_
               ((gx#current-expander-module-import)
                _path14976_
                _reload?14977_)))
          (begin
            (if (if _ctx14980_ _eval?14978_ '#f)
                (gx#eval-module _ctx14980_)
                '#!void)
            _ctx14980_))))
    (begin
      (define gx#import-module__0
        (lambda (_path14985_)
          (let* ((_reload?14987_ '#f) (_eval?14989_ '#f))
            (gx#import-module__% _path14985_ _reload?14987_ _eval?14989_))))
      (define gx#import-module__1
        (lambda (_path14991_ _reload?14992_)
          (let ((_eval?14994_ '#f))
            (gx#import-module__% _path14991_ _reload?14992_ _eval?14994_))))
      (define gx#import-module
        (lambda _g15980_
          (let ((_g15979_ (length _g15980_)))
            (cond ((##fx= _g15979_ 1) (apply gx#import-module__0 _g15980_))
                  ((##fx= _g15979_ 2) (apply gx#import-module__1 _g15980_))
                  ((##fx= _g15979_ 3) (apply gx#import-module__% _g15980_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g15980_))))))))
  (define gx#eval-module
    (lambda (_mod14973_) ((gx#current-expander-module-eval) _mod14973_)))
  (define gx#core-eval-module
    (lambda (_obj14958_)
      (letrec ((_force-e14960_
                (lambda (_getf14969_ _e14970_)
                  (call-with-parameters
                   (lambda () (force (_getf14969_ _e14970_)))
                   gx#current-expander-context
                   _e14970_
                   gx#current-expander-phi
                   '0))))
        (let _recur14962_ ((_e14964_ _obj14958_))
          (if (##structure-instance-of? _e14964_ 'gx#module-context::t)
              (begin
                (let ((_$e14966_ (gx#core-context-prelude__% _e14964_)))
                  (if _$e14966_ (_recur14962_ _$e14966_) '#!void))
                (_force-e14960_ gx#module-context-e _e14964_))
              (if (##structure-instance-of? _e14964_ 'gx#prelude-context::t)
                  (_force-e14960_ gx#prelude-context-e _e14964_)
                  (if (gx#stx-string? _e14964_)
                      (_recur14962_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14964_)))
                      (if (gx#core-library-module-path? _e14964_)
                          (_recur14962_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14964_)))
                          (error '"Cannot eval module" _obj14958_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx14941_)
        (let _lp14943_ ((_e14945_ _ctx14941_))
          (if (let ((_$e14947_
                     (##structure-instance-of?
                      _e14945_
                      'gx#module-context::t)))
                (if _$e14947_
                    _$e14947_
                    (##structure-instance-of? _e14945_ 'gx#local-context::t)))
              (_lp14943_
               (##unchecked-structure-ref _e14945_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e14945_ 'gx#prelude-context::t)
                  _e14945_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx14954_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx14954_))))
      (define gx#core-context-prelude
        (lambda _g15982_
          (let ((_g15981_ (length _g15982_)))
            (cond ((##fx= _g15981_ 0)
                   (apply gx#core-context-prelude__0 _g15982_))
                  ((##fx= _g15981_ 1)
                   (apply gx#core-context-prelude__% _g15982_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g15982_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14931_)
      (let* ((_ht14933_ (gx#current-expander-module-registry))
             (_$e14935_ (table-ref _ht14933_ _ctx14931_ '#f)))
        (if _$e14935_
            (values _$e14935_)
            (let ((_pre14938_
                   (let ((__obj15973 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj15973 _ctx14931_)
                       __obj15973))))
              (begin
                (table-set! _ht14933_ _ctx14931_ _pre14938_)
                _pre14938_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath14812_ _reload?14813_)
        (letrec ((_import-source14815_
                  (lambda (_path14900_)
                    (begin
                      (if (member _path14900_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path14900_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g15983_ (gx#core-read-module _path14900_)))
                           (begin
                             (let ((_g15984_
                                    (if (##values? _g15983_)
                                        (##vector-length _g15983_)
                                        1)))
                               (if (not (##fx= _g15984_ 4))
                                   (error "Context expects 4 values"
                                          _g15984_)))
                             (let ((_pre14903_ (##vector-ref _g15983_ 0))
                                   (_id14904_ (##vector-ref _g15983_ 1))
                                   (_ns14905_ (##vector-ref _g15983_ 2))
                                   (_body14906_ (##vector-ref _g15983_ 3)))
                               (let* ((_prelude14911_
                                       (if (##structure-instance-of?
                                            _pre14903_
                                            'gx#prelude-context::t)
                                           _pre14903_
                                           (if (##structure-instance-of?
                                                _pre14903_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre14903_)
                                               (if (string? _pre14903_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre14903_))
                                                   (if (not _pre14903_)
                                                       (let ((_$e14908_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e14908_
                                                             _$e14908_
                                                             (let ((__obj15974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj15974 '#f)
                         __obj15974))))
               (error '"Cannot import module; unknown prelude"
                      _rpath14812_
                      _pre14903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx14913_
                                       (let ((__obj15975
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj15975
                                            _id14904_
                                            _prelude14911_
                                            _ns14905_
                                            _path14900_)
                                           __obj15975)))
                                      (_body14915_
                                       (gx#core-expand-module-begin
                                        _body14906_
                                        _ctx14913_))
                                      (_body14917_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body14915_)
                                        _path14900_
                                        _ctx14913_
                                        '())))
                                 (begin
                                   (##unchecked-structure-set!
                                    _ctx14913_
                                    (##make-promise
                                     (lambda () (gx#eval-syntax* _body14917_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##unchecked-structure-set!
                                    _ctx14913_
                                    _body14917_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path14900_
                                    _ctx14913_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id14904_
                                    _ctx14913_)
                                   _ctx14913_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path14900_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule14816_
                  (lambda (_rpath14828_)
                    (let* ((_rpath1482914836_ _rpath14828_)
                           (_E1483114840_
                            (lambda ()
                              (error '"No clause matching" _rpath1482914836_)))
                           (_K1483214888_
                            (lambda (_refs14843_ _origin14844_)
                              (let ((_ctx14846_
                                     (if _origin14844_
                                         (gx#core-import-module__%
                                          _origin14844_
                                          _reload?14813_)
                                         (gx#current-expander-context))))
                                (let _lp14848_ ((_rest14850_ _refs14843_)
                                                (_ctx14851_ _ctx14846_))
                                  (let* ((_rest1485214860_ _rest14850_)
                                         (_else1485414868_
                                          (lambda () _ctx14851_))
                                         (_K1485614876_
                                          (lambda (_rest14871_ _id14872_)
                                            (let ((_bind14874_
                                                   (gx#resolve-identifier__%
                                                    _id14872_
                                                    '0
                                                    _ctx14851_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind14874_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##unchecked-structure-ref
                                                        _bind14874_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp14848_
                                                   _rest14871_
                                                   (##unchecked-structure-ref
                                                    _bind14874_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath14828_
                                                         _id14872_
                                                         _bind14874_))))))
                                    (if (##pair? _rest1485214860_)
                                        (let ((_hd1485714879_
                                               (##car _rest1485214860_))
                                              (_tl1485814881_
                                               (##cdr _rest1485214860_)))
                                          (let* ((_id14884_ _hd1485714879_)
                                                 (_rest14886_ _tl1485814881_))
                                            (_K1485614876_
                                             _rest14886_
                                             _id14884_)))
                                        (_else1485414868_))))))))
                      (if (##pair? _rpath1482914836_)
                          (let ((_hd1483314891_ (##car _rpath1482914836_))
                                (_tl1483414893_ (##cdr _rpath1482914836_)))
                            (let* ((_origin14896_ _hd1483314891_)
                                   (_refs14898_ _tl1483414893_))
                              (_K1483214888_ _refs14898_ _origin14896_)))
                          (_E1483114840_))))))
          (let ((_$e14818_
                 (if (not _reload?14813_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath14812_
                      '#f)
                     '#f)))
            (if _$e14818_
                (values _$e14818_)
                (if (list? _rpath14812_)
                    (_import-submodule14816_ _rpath14812_)
                    (if (gx#core-library-module-path? _rpath14812_)
                        (let ((_ctx14821_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath14812_)
                                _reload?14813_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath14812_
                             _ctx14821_)
                            _ctx14821_))
                        (let* ((_npath14823_ (path-normalize _rpath14812_))
                               (_$e14825_
                                (if (not _reload?14813_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath14823_
                                     '#f)
                                    '#f)))
                          (if _$e14825_
                              (values _$e14825_)
                              (_import-source14815_ _npath14823_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath14924_)
          (let ((_reload?14926_ '#f))
            (gx#core-import-module__% _rpath14924_ _reload?14926_))))
      (define gx#core-import-module
        (lambda _g15986_
          (let ((_g15985_ (length _g15986_)))
            (cond ((##fx= _g15985_ 1)
                   (apply gx#core-import-module__0 _g15986_))
                  ((##fx= _g15985_ 2)
                   (apply gx#core-import-module__% _g15986_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g15986_))))))))
  (define gx#core-read-module
    (lambda (_path14806_)
      (with-exception-catcher
       (lambda (_exn14808_)
         (if (if (datum-parsing-exception? _exn14808_)
                 (eq? (datum-parsing-exception-filepos _exn14808_) '0)
                 '#f)
             (gx#core-read-module/lang _path14806_)
             (raise _exn14808_)))
       (lambda () (gx#core-read-module/sexp _path14806_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14666_)
      (let _lp14668_ ((_body14670_ (read-syntax-from-file _path14666_))
                      (_pre14671_ '#f)
                      (_ns14672_ '#f)
                      (_pkg14673_ '#f))
        (let* ((_e1467414698_ _body14670_)
               (_E1469014720_
                (lambda ()
                  (let ((_g15987_
                         (if _pkg14673_
                             (values _pre14671_ _ns14672_ _pkg14673_)
                             (gx#core-read-module-package
                              _path14666_
                              _pre14671_
                              _ns14672_))))
                    (begin
                      (let ((_g15988_
                             (if (##values? _g15987_)
                                 (##vector-length _g15987_)
                                 1)))
                        (if (not (##fx= _g15988_ 3))
                            (error "Context expects 3 values" _g15988_)))
                      (let ((_pre14702_ (##vector-ref _g15987_ 0))
                            (_ns14703_ (##vector-ref _g15987_ 1))
                            (_pkg14704_ (##vector-ref _g15987_ 2)))
                        (let* ((_prelude14706_
                                (if (gx#core-bound-module-prelude? _pre14702_)
                                    (gx#syntax-local-e__0 _pre14702_)
                                    (if (gx#core-library-module-path?
                                         _pre14702_)
                                        (gx#core-resolve-library-module-path
                                         _pre14702_)
                                        (if (gx#stx-string? _pre14702_)
                                            (gx#core-resolve-module-path__%
                                             _pre14702_
                                             _path14666_)
                                            (gx#stx-e _pre14702_)))))
                               (_path-id14708_
                                (gx#core-module-path->namespace _path14666_))
                               (_pkg-id14710_
                                (if _pkg14704_
                                    (string-append
                                     _pkg14704_
                                     '"/"
                                     _path-id14708_)
                                    _path-id14708_))
                               (_module-id14712_
                                (string->symbol _pkg-id14710_))
                               (_module-ns14717_
                                (let ((_$e14714_ _ns14703_))
                                  (if _$e14714_ _$e14714_ _pkg-id14710_))))
                          (values _prelude14706_
                                  _module-id14712_
                                  _module-ns14717_
                                  _body14670_)))))))
               (_E1468314749_
                (lambda ()
                  (if (gx#stx-pair? _e1467414698_)
                      (let ((_e1469114724_ (gx#syntax-e _e1467414698_)))
                        (let ((_hd1469214727_ (##car _e1469114724_))
                              (_tl1469314729_ (##cdr _e1469114724_)))
                          (if (eq? (gx#stx-e _hd1469214727_) 'package:)
                              (if (gx#stx-pair? _tl1469314729_)
                                  (let ((_e1469414732_
                                         (gx#syntax-e _tl1469314729_)))
                                    (let ((_hd1469514735_
                                           (##car _e1469414732_))
                                          (_tl1469614737_
                                           (##cdr _e1469414732_)))
                                      (let* ((_pkg14740_ _hd1469514735_)
                                             (_rest14742_ _tl1469614737_))
                                        (if '#t
                                            (let ((_pkg14747_
                                                   (if (gx#identifier?
                                                        _pkg14740_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14740_))
                                                       (if (let ((_$e14744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg14740_)))
                     (if _$e14744_ _$e14744_ (gx#stx-false? _pkg14740_)))
                   (gx#stx-e _pkg14740_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg14740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14668_
                                               _rest14742_
                                               _pre14671_
                                               _ns14672_
                                               _pkg14747_))
                                            (_E1469014720_)))))
                                  (_E1469014720_))
                              (_E1469014720_))))
                      (_E1469014720_))))
               (_E1467614778_
                (lambda ()
                  (if (gx#stx-pair? _e1467414698_)
                      (let ((_e1468414753_ (gx#syntax-e _e1467414698_)))
                        (let ((_hd1468514756_ (##car _e1468414753_))
                              (_tl1468614758_ (##cdr _e1468414753_)))
                          (if (eq? (gx#stx-e _hd1468514756_) 'namespace:)
                              (if (gx#stx-pair? _tl1468614758_)
                                  (let ((_e1468714761_
                                         (gx#syntax-e _tl1468614758_)))
                                    (let ((_hd1468814764_
                                           (##car _e1468714761_))
                                          (_tl1468914766_
                                           (##cdr _e1468714761_)))
                                      (let* ((_ns14769_ _hd1468814764_)
                                             (_rest14771_ _tl1468914766_))
                                        (if '#t
                                            (let ((_ns14776_
                                                   (if (gx#identifier?
                                                        _ns14769_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14769_))
                                                       (if (let ((_$e14773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns14769_)))
                     (if _$e14773_ _$e14773_ (gx#stx-false? _ns14769_)))
                   (gx#stx-e _ns14769_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns14769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14668_
                                               _rest14771_
                                               _pre14671_
                                               _ns14776_
                                               _pkg14673_))
                                            (_E1468314749_)))))
                                  (_E1468314749_))
                              (_E1468314749_))))
                      (_E1468314749_))))
               (_E1467514802_
                (lambda ()
                  (if (gx#stx-pair? _e1467414698_)
                      (let ((_e1467714782_ (gx#syntax-e _e1467414698_)))
                        (let ((_hd1467814785_ (##car _e1467714782_))
                              (_tl1467914787_ (##cdr _e1467714782_)))
                          (if (eq? (gx#stx-e _hd1467814785_) 'prelude:)
                              (if (gx#stx-pair? _tl1467914787_)
                                  (let ((_e1468014790_
                                         (gx#syntax-e _tl1467914787_)))
                                    (let ((_hd1468114793_
                                           (##car _e1468014790_))
                                          (_tl1468214795_
                                           (##cdr _e1468014790_)))
                                      (let* ((_prelude14798_ _hd1468114793_)
                                             (_rest14800_ _tl1468214795_))
                                        (if '#t
                                            (_lp14668_
                                             _rest14800_
                                             _prelude14798_
                                             _ns14672_
                                             _pkg14673_)
                                            (_E1467614778_)))))
                                  (_E1467614778_))
                              (_E1467614778_))))
                      (_E1467614778_)))))
          (_E1467514802_)))))
  (define gx#core-read-module/lang
    (lambda (_path14493_)
      (letrec ((_default-read-module-body14495_
                (lambda (_inp14658_)
                  (let _lp14660_ ((_body14662_ '()))
                    (let ((_next14664_ (read-syntax _inp14658_)))
                      (if (eof-object? _next14664_)
                          (reverse _body14662_)
                          (_lp14660_ (cons _next14664_ _body14662_)))))))
               (_read-body14496_
                (lambda (_inp14577_
                         _pre14578_
                         _ns14579_
                         _pkg14580_
                         _args14581_)
                  (let ((_g15989_
                         (if _pkg14580_
                             (values _pre14578_ _ns14579_ _pkg14580_)
                             (gx#core-read-module-package
                              _path14493_
                              _pre14578_
                              _ns14579_))))
                    (begin
                      (let ((_g15990_
                             (if (##values? _g15989_)
                                 (##vector-length _g15989_)
                                 1)))
                        (if (not (##fx= _g15990_ 3))
                            (error "Context expects 3 values" _g15990_)))
                      (let ((_pre14583_ (##vector-ref _g15989_ 0))
                            (_ns14584_ (##vector-ref _g15989_ 1))
                            (_pkg14585_ (##vector-ref _g15989_ 2)))
                        (let* ((_prelude14587_
                                (gx#import-module__0 _pre14583_))
                               (_read-module-body14641_
                                (let ((_$e14633_
                                       (find (lambda (_e1458814590_)
                                               (let* ((_g1459214602_
                                                       _e1458814590_)
                                                      (_else1459414610_
                                                       (lambda () '#f))
                                                      (_K1459614614_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1459214602_
                                                      'gx#module-export::t)
                                                     (let* ((_e1459714617_
                                                             (##vector-ref
                                                              _g1459214602_
                                                              '1))
                                                            (_e1459814620_
                                                             (##vector-ref
                                                              _g1459214602_
                                                              '2))
                                                            (_e1459914623_
                                                             (##vector-ref
                                                              _g1459214602_
                                                              '3)))
                                                       (if (##eq? _e1459914623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1460014626_ (##vector-ref _g1459214602_ '4)))
                     (if ((lambda (_g1462814630_)
                            (eq? _g1462814630_ 'read-module-body))
                          _e1460014626_)
                         (_K1459614614_)
                         (_else1459414610_)))
                   (_else1459414610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1459414610_))))
                                             (##unchecked-structure-ref
                                              _prelude14587_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14633_
                                      ((lambda (_xport14636_)
                                         (let ((_proc14639_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14636_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14639_)
                                               _proc14639_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14493_
                                                _pre14583_
                                                _proc14639_))))
                                       _$e14633_)
                                      _default-read-module-body14495_)))
                               (_path-id14643_
                                (gx#core-module-path->namespace _path14493_))
                               (_pkg-id14645_
                                (if _pkg14585_
                                    (string-append
                                     _pkg14585_
                                     '"/"
                                     _path-id14643_)
                                    _path-id14643_))
                               (_module-id14647_
                                (string->symbol _pkg-id14645_))
                               (_module-ns14652_
                                (let ((_$e14649_ _ns14584_))
                                  (if _$e14649_ _$e14649_ _pkg-id14645_)))
                               (_body14655_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14641_ _inp14577_))
                                 gx#current-module-reader-path
                                 _path14493_
                                 gx#current-module-reader-args
                                 _args14581_)))
                          (values _prelude14587_
                                  _module-id14647_
                                  _module-ns14652_
                                  _body14655_)))))))
               (_string-e14497_
                (lambda (_obj14574_ _what14575_)
                  (if (string? _obj14574_)
                      _obj14574_
                      (if (symbol? _obj14574_)
                          (symbol->string _obj14574_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14575_)
                           _path14493_
                           _obj14574_)))))
               (_read-lang-args14498_
                (lambda (_inp14529_ _args14530_)
                  (let* ((_args1453114539_ _args14530_)
                         (_else1453314547_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14493_)))
                         (_K1453514562_
                          (lambda (_args14550_ _prelude14551_)
                            (let* ((_pkg14553_ (pgetq 'package: _args14550_))
                                   (_pkg14555_
                                    (if _pkg14553_
                                        (_string-e14497_ _pkg14553_ '"package")
                                        '#f))
                                   (_ns14557_ (pgetq 'namespace: _args14550_))
                                   (_ns14559_
                                    (if _ns14557_
                                        (_string-e14497_
                                         _ns14557_
                                         '"namespace")
                                        '#f)))
                              (_read-body14496_
                               _inp14529_
                               _prelude14551_
                               _ns14559_
                               _pkg14555_
                               _args14550_)))))
                    (if (##pair? _args1453114539_)
                        (let ((_hd1453614565_ (##car _args1453114539_))
                              (_tl1453714567_ (##cdr _args1453114539_)))
                          (let* ((_prelude14570_ _hd1453614565_)
                                 (_args14572_ _tl1453714567_))
                            (_K1453514562_ _args14572_ _prelude14570_)))
                        (_else1453314547_)))))
               (_read-lang14499_
                (lambda (_inp14504_)
                  (let* ((_head14506_ (read-line _inp14504_))
                         (_$e14508_ (string-index _head14506_ '#\space)))
                    (if _$e14508_
                        ((lambda (_ix14511_)
                           (let ((_lang14513_
                                  (substring _head14506_ '0 _ix14511_)))
                             (if (equal? _lang14513_ '"#lang")
                                 (let* ((_rest14515_
                                         (substring
                                          _head14506_
                                          (fx+ _ix14511_ '1)
                                          (string-length _head14506_)))
                                        (_args14526_
                                         (with-exception-catcher
                                          (lambda (_g1451614518_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14493_
                                             _g1451614518_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14515_
                                             (lambda (_g1452114523_)
                                               (read-all
                                                _g1452114523_
                                                read)))))))
                                   (_read-lang-args14498_
                                    _inp14504_
                                    _args14526_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14493_))))
                         _$e14508_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14493_)))))
               (_read-e14500_
                (lambda (_inp14502_)
                  (if (eq? (peek-char _inp14502_) '#\#)
                      (_read-lang14499_ _inp14502_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14493_)))))
        (call-with-input-file _path14493_ _read-e14500_))))
  (define gx#core-read-module-package
    (lambda (_path14447_ _pre14448_ _ns14449_)
      (letrec ((_string-e14451_
                (lambda (_e14491_)
                  (if (symbol? _e14491_)
                      (symbol->string _e14491_)
                      (if (string? _e14491_)
                          _e14491_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14491_))))))
        (let _lp14453_ ((_dir14455_ (path-directory _path14447_))
                        (_pkg-path14456_ '()))
          (let ((_gerbil.pkg14458_ (path-expand '"gerbil.pkg" _dir14455_)))
            (if (file-exists? _gerbil.pkg14458_)
                (let ((_plist14460_
                       (gx#core-library-package-plist__% _dir14455_ '#t)))
                  (if (null? _plist14460_)
                      (let ((_pkg14462_
                             (if (not (null? _pkg-path14456_))
                                 (string-join _pkg-path14456_ '"/")
                                 '#f)))
                        (values _pre14448_ _ns14449_ _pkg14462_))
                      (if (list? _plist14460_)
                          (let* ((_root14464_ (pgetq 'package: _plist14460_))
                                 (_pkg14468_
                                  (let ((_pkg-path14466_
                                         (if _root14464_
                                             (cons (_string-e14451_
                                                    _root14464_)
                                                   _pkg-path14456_)
                                             _pkg-path14456_)))
                                    (if (not (null? _pkg-path14466_))
                                        (string-join _pkg-path14466_ '"/")
                                        '#f)))
                                 (_ns14475_
                                  (let ((_ns14473_
                                         (let ((_$e14470_ _ns14449_))
                                           (if _$e14470_
                                               _$e14470_
                                               (pgetq 'namespace:
                                                      _plist14460_)))))
                                    (if _ns14473_
                                        (_string-e14451_ _ns14473_)
                                        '#f)))
                                 (_pre14480_
                                  (let ((_$e14477_ _pre14448_))
                                    (if _$e14477_
                                        _$e14477_
                                        (pgetq 'prelude: _plist14460_)))))
                            (values _pre14480_ _ns14475_ _pkg14468_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14460_))))
                (let ((_dir*14483_
                       (path-strip-trailing-directory-separator _dir14455_)))
                  (if (let ((_$e14485_ (string-empty? _dir*14483_)))
                        (if _$e14485_
                            _$e14485_
                            (equal? _dir14455_ _dir*14483_)))
                      (values _pre14448_ _ns14449_ '#f)
                      (let ((_xpath14488_ (path-strip-directory _dir*14483_))
                            (_xdir14489_ (path-directory _dir*14483_)))
                        (_lp14453_
                         _xdir14489_
                         (cons _xpath14488_ _pkg-path14456_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14445_)
      (path-strip-extension (path-strip-directory _path14445_))))
  (define gx#core-module-path->id
    (lambda (_path14443_)
      (string->symbol (gx#core-module-path->namespace _path14443_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path14422_ _rel14423_)
        (let* ((_path14425_ (gx#stx-e _stx-path14422_))
               (_path14427_
                (if (string-empty? (path-extension _path14425_))
                    (string-append _path14425_ '".ss")
                    _path14425_)))
          (gx#core-resolve-path__%
           _path14427_
           (let ((_$e14430_ (gx#stx-source _stx-path14422_)))
             (if _$e14430_ _$e14430_ _rel14423_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path14436_)
          (let ((_rel14438_ '#f))
            (gx#core-resolve-module-path__% _stx-path14436_ _rel14438_))))
      (define gx#core-resolve-module-path
        (lambda _g15992_
          (let ((_g15991_ (length _g15992_)))
            (cond ((##fx= _g15991_ 1)
                   (apply gx#core-resolve-module-path__0 _g15992_))
                  ((##fx= _g15991_ 2)
                   (apply gx#core-resolve-module-path__% _g15992_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g15992_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14349_)
      (let* ((_spath14351_ (symbol->string (gx#stx-e _libpath14349_)))
             (_spath14353_
              (substring _spath14351_ '1 (string-length _spath14351_)))
             (_ext14355_ (path-extension _spath14353_))
             (_ssi14357_
              (if (string-empty? _ext14355_)
                  (string-append _spath14353_ '".ssi")
                  (string-append (path-strip-extension _spath14353_) '".ssi")))
             (_src14359_
              (if (string-empty? _ext14355_)
                  (string-append _spath14353_ '".ss")
                  _spath14353_)))
        (let _lp14362_ ((_rest14364_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1436514374_ _rest14364_)
                 (_E1436814378_
                  (lambda () (error '"No clause matching" _rest1436514374_))))
            (let ((_K1437014409_
                   (lambda (_rest14389_ _dir14390_)
                     (letrec ((_resolve14392_
                               (lambda (_ssi14402_ _src14403_)
                                 (let ((_compiled-path14405_
                                        (path-expand _ssi14402_ _dir14390_)))
                                   (if (file-exists? _compiled-path14405_)
                                       (path-normalize _compiled-path14405_)
                                       (let ((_src-path14407_
                                              (path-expand
                                               _src14403_
                                               _dir14390_)))
                                         (if (file-exists? _src-path14407_)
                                             (path-normalize _src-path14407_)
                                             (_lp14362_ _rest14389_))))))))
                       (let ((_$e14394_
                              (gx#core-library-package-path-prefix
                               _dir14390_)))
                         (if _$e14394_
                             ((lambda (_prefix14397_)
                                (if (string-prefix? _spath14353_ _prefix14397_)
                                    (let ((_ssi14399_
                                           (substring
                                            _ssi14357_
                                            (string-length _prefix14397_)
                                            (string-length _ssi14357_)))
                                          (_src14400_
                                           (substring
                                            _src14359_
                                            (string-length _prefix14397_)
                                            (string-length _src14359_))))
                                      (_resolve14392_ _ssi14399_ _src14400_))
                                    (_lp14362_ _rest14389_)))
                              _$e14394_)
                             (_resolve14392_ _ssi14357_ _src14359_))))))
                  (_K1436914383_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14349_))))
              (let ((_try-match1436714386_
                     (lambda ()
                       (if (##null? _rest1436514374_)
                           (_K1436914383_)
                           (_E1436814378_)))))
                (if (##pair? _rest1436514374_)
                    (let ((_tl1437214414_ (##cdr _rest1436514374_))
                          (_hd1437114412_ (##car _rest1436514374_)))
                      (let ((_dir14417_ _hd1437114412_)
                            (_rest14419_ _tl1437214414_))
                        (_K1437014409_ _rest14419_ _dir14417_)))
                    (_try-match1436714386_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14342_)
      (let ((_$e14344_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14342_))))
        (if _$e14344_
            ((lambda (_pkg14347_)
               (string-append (symbol->string _pkg14347_) '"/"))
             _$e14344_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir14314_ _exists?14315_)
        (let* ((_cache14317_ (gx#core-library-package-cache))
               (_$e14319_ (table-ref _cache14317_ _dir14314_ '#f)))
          (if _$e14319_
              (values _$e14319_)
              (let* ((_gerbil.pkg14322_ (path-expand '"gerbil.pkg" _dir14314_))
                     (_plist14329_
                      (if (let ((_$e14324_ _exists?14315_))
                            (if _$e14324_
                                _$e14324_
                                (file-exists? _gerbil.pkg14322_)))
                          (let ((_e14327_
                                 (call-with-input-file
                                  _gerbil.pkg14322_
                                  read)))
                            (if (eof-object? _e14327_)
                                '()
                                (if (list? _e14327_)
                                    _e14327_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14322_
                                     _e14327_))))
                          '())))
                (begin
                  (table-set! _cache14317_ _dir14314_ _plist14329_)
                  _plist14329_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir14335_)
          (let ((_exists?14337_ '#f))
            (gx#core-library-package-plist__% _dir14335_ _exists?14337_))))
      (define gx#core-library-package-plist
        (lambda _g15994_
          (let ((_g15993_ (length _g15994_)))
            (cond ((##fx= _g15993_ 1)
                   (apply gx#core-library-package-plist__0 _g15994_))
                  ((##fx= _g15993_ 2)
                   (apply gx#core-library-package-plist__% _g15994_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g15994_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14308_ (gx#current-expander-module-library-package-cache)))
        (if _$e14308_
            (values _$e14308_)
            (let ((_cache14311_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache14311_)
                _cache14311_))))))
  (define gx#core-library-module-path?
    (lambda (_stx14305_) (gx#core-special-module-path? _stx14305_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14300_ _char14301_)
      (if (gx#identifier? _stx14300_)
          (if (interned-symbol? (gx#stx-e _stx14300_))
              (let ((_str14303_ (symbol->string (gx#stx-e _stx14300_))))
                (if (fx> (string-length _str14303_) '1)
                    (eq? (string-ref _str14303_ '0) _char14301_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14294_)
      (gx#core-bound-identifier?__%
       _stx14294_
       (lambda (_g1429514297_)
         (gx#expander-binding?__% _g1429514297_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14288_)
      (gx#core-bound-identifier?__%
       _stx14288_
       (lambda (_g1428914291_)
         (gx#expander-binding?__% _g1428914291_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14275_)
      (letrec ((_module-prelude?14277_
                (lambda (_e14283_)
                  (let ((_$e14285_
                         (##structure-instance-of?
                          _e14283_
                          'gx#module-context::t)))
                    (if _$e14285_
                        _$e14285_
                        (##structure-instance-of?
                         _e14283_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14275_
         (lambda (_g1427814280_)
           (gx#expander-binding?__% _g1427814280_ _module-prelude?14277_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in14205_ _ctx14206_ _force-weak?14207_)
        (let* ((_in1420814217_ _in14205_)
               (_E1421014221_
                (lambda () (error '"No clause matching" _in1420814217_)))
               (_K1421114234_
                (lambda (_weak?14224_ _phi14225_ _key14226_ _source14227_)
                  (gx#core-bind!__%
                   _key14226_
                   (let ((_e14229_
                          (gx#core-resolve-module-export _source14227_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e14229_ '1 gx#binding::t '#f)
                      _key14226_
                      _phi14225_
                      _e14229_
                      (##unchecked-structure-ref
                       _source14227_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e14231_ _force-weak?14207_))
                        (if _$e14231_ _$e14231_ _weak?14224_))))
                   gx#core-context-rebind?
                   _phi14225_
                   _ctx14206_))))
          (if (##structure-direct-instance-of?
               _in1420814217_
               'gx#module-import::t)
              (let* ((_e1421214237_ (##vector-ref _in1420814217_ '1))
                     (_source14240_ _e1421214237_)
                     (_e1421314242_ (##vector-ref _in1420814217_ '2))
                     (_key14245_ _e1421314242_)
                     (_e1421414247_ (##vector-ref _in1420814217_ '3))
                     (_phi14250_ _e1421414247_)
                     (_e1421514252_ (##vector-ref _in1420814217_ '4))
                     (_weak?14255_ _e1421514252_))
                (_K1421114234_
                 _weak?14255_
                 _phi14250_
                 _key14245_
                 _source14240_))
              (_E1421014221_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in14260_)
          (let* ((_ctx14262_ (gx#current-expander-context))
                 (_force-weak?14264_ '#f))
            (gx#core-bind-import!__%
             _in14260_
             _ctx14262_
             _force-weak?14264_))))
      (define gx#core-bind-import!__1
        (lambda (_in14266_ _ctx14267_)
          (let ((_force-weak?14269_ '#f))
            (gx#core-bind-import!__%
             _in14266_
             _ctx14267_
             _force-weak?14269_))))
      (define gx#core-bind-import!
        (lambda _g15996_
          (let ((_g15995_ (length _g15996_)))
            (cond ((##fx= _g15995_ 1) (apply gx#core-bind-import!__0 _g15996_))
                  ((##fx= _g15995_ 2) (apply gx#core-bind-import!__1 _g15996_))
                  ((##fx= _g15995_ 3) (apply gx#core-bind-import!__% _g15996_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g15996_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in14191_ _ctx14192_)
        (gx#core-bind-import!__% _in14191_ _ctx14192_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in14197_)
          (let ((_ctx14199_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in14197_ _ctx14199_))))
      (define gx#core-bind-weak-import!
        (lambda _g15998_
          (let ((_g15997_ (length _g15998_)))
            (cond ((##fx= _g15997_ 1)
                   (apply gx#core-bind-weak-import!__0 _g15998_))
                  ((##fx= _g15997_ 2)
                   (apply gx#core-bind-weak-import!__% _g15998_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g15998_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out14082_)
      (letrec ((_subst14084_
                (lambda (_key14130_)
                  (let* ((_key1413114139_ _key14130_)
                         (_else1413314147_ (lambda () _key14130_))
                         (_K1413514178_
                          (lambda (_mark14150_ _id14151_)
                            (let* ((_mark1415214158_ _mark14150_)
                                   (_E1415414162_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1415214158_)))
                                   (_K1415514170_
                                    (lambda (_subst14165_)
                                      (let ((_$e14167_
                                             (if _subst14165_
                                                 (table-ref
                                                  _subst14165_
                                                  _id14151_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14167_
                                            _$e14167_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14130_))))))
                              (if (##structure-instance-of?
                                   _mark1415214158_
                                   'gx#expander-mark::t)
                                  (let* ((_e1415614173_
                                          (##vector-ref _mark1415214158_ '1))
                                         (_subst14176_ _e1415614173_))
                                    (_K1415514170_ _subst14176_))
                                  (_E1415414162_))))))
                    (if (##pair? _key1413114139_)
                        (let ((_hd1413614181_ (##car _key1413114139_))
                              (_tl1413714183_ (##cdr _key1413114139_)))
                          (let* ((_id14186_ _hd1413614181_)
                                 (_mark14188_ _tl1413714183_))
                            (_K1413514178_ _mark14188_ _id14186_)))
                        (_else1413314147_))))))
        (let* ((_out1408514095_ _out14082_)
               (_E1408714099_
                (lambda () (error '"No clause matching" _out1408514095_)))
               (_K1408814106_
                (lambda (_phi14102_ _key14103_ _ctx14104_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14104_ _phi14102_)
                   (_subst14084_ _key14103_)))))
          (if (##structure-direct-instance-of?
               _out1408514095_
               'gx#module-export::t)
              (let* ((_e1408914109_ (##vector-ref _out1408514095_ '1))
                     (_ctx14112_ _e1408914109_)
                     (_e1409014114_ (##vector-ref _out1408514095_ '2))
                     (_key14117_ _e1409014114_)
                     (_e1409114119_ (##vector-ref _out1408514095_ '3))
                     (_phi14122_ _e1409114119_)
                     (_e1409214124_ (##vector-ref _out1408514095_ '4))
                     (_e1409314127_ (##vector-ref _out1408514095_ '5)))
                (_K1408814106_ _phi14122_ _key14117_ _ctx14112_))
              (_E1408714099_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out14007_ _rename14008_ _dphi14009_)
        (let* ((_out1401014020_ _out14007_)
               (_E1401214024_
                (lambda () (error '"No clause matching" _out1401014020_)))
               (_K1401314036_
                (lambda (_weak?14027_
                         _name14028_
                         _phi14029_
                         _key14030_
                         _ctx14031_)
                  (##structure
                   gx#module-import::t
                   _out14007_
                   (let ((_$e14033_ _rename14008_))
                     (if _$e14033_ _$e14033_ _name14028_))
                   (fx+ _phi14029_ _dphi14009_)
                   _weak?14027_))))
          (if (##structure-direct-instance-of?
               _out1401014020_
               'gx#module-export::t)
              (let* ((_e1401414039_ (##vector-ref _out1401014020_ '1))
                     (_ctx14042_ _e1401414039_)
                     (_e1401514044_ (##vector-ref _out1401014020_ '2))
                     (_key14047_ _e1401514044_)
                     (_e1401614049_ (##vector-ref _out1401014020_ '3))
                     (_phi14052_ _e1401614049_)
                     (_e1401714054_ (##vector-ref _out1401014020_ '4))
                     (_name14057_ _e1401714054_)
                     (_e1401814059_ (##vector-ref _out1401014020_ '5))
                     (_weak?14062_ _e1401814059_))
                (_K1401314036_
                 _weak?14062_
                 _name14057_
                 _phi14052_
                 _key14047_
                 _ctx14042_))
              (_E1401214024_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out14067_)
          (let* ((_rename14069_ '#f) (_dphi14071_ '0))
            (gx#core-module-export->import__%
             _out14067_
             _rename14069_
             _dphi14071_))))
      (define gx#core-module-export->import__1
        (lambda (_out14073_ _rename14074_)
          (let ((_dphi14076_ '0))
            (gx#core-module-export->import__%
             _out14073_
             _rename14074_
             _dphi14076_))))
      (define gx#core-module-export->import
        (lambda _g16000_
          (let ((_g15999_ (length _g16000_)))
            (cond ((##fx= _g15999_ 1)
                   (apply gx#core-module-export->import__0 _g16000_))
                  ((##fx= _g15999_ 2)
                   (apply gx#core-module-export->import__1 _g16000_))
                  ((##fx= _g15999_ 3)
                   (apply gx#core-module-export->import__% _g16000_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g16000_))))))))
  (define gx#core-expand-module%
    (lambda (_stx13935_)
      (letrec ((_make-context13937_
                (lambda (_id13988_)
                  (let* ((_super13990_ (gx#current-expander-context))
                         (_bind-id13992_ (gx#stx-e _id13988_))
                         (_mod-id13994_
                          (if (##structure-instance-of?
                               _super13990_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super13990_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id13992_)
                              _bind-id13992_))
                         (_ns13996_ (symbol->string _mod-id13994_))
                         (_path14003_
                          (if (##structure-instance-of?
                               _super13990_
                               'gx#module-context::t)
                              (let ((_path13998_
                                     (##unchecked-structure-ref
                                      _super13990_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e14000_ (pair? _path13998_)))
                                      (if _$e14000_
                                          _$e14000_
                                          (null? _path13998_)))
                                    (cons _bind-id13992_ _path13998_)
                                    (if (not _path13998_)
                                        _bind-id13992_
                                        (cons _bind-id13992_
                                              (cons _path13998_ '())))))
                              _bind-id13992_)))
                    (let ((__obj15976 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj15976
                         _mod-id13994_
                         _super13990_
                         _ns13996_
                         _path14003_)
                        __obj15976))))))
        (let* ((_e1393813948_ _stx13935_)
               (_E1394013952_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1393813948_)))
               (_E1393913984_
                (lambda ()
                  (if (gx#stx-pair? _e1393813948_)
                      (let ((_e1394113956_ (gx#syntax-e _e1393813948_)))
                        (let ((_hd1394213959_ (##car _e1394113956_))
                              (_tl1394313961_ (##cdr _e1394113956_)))
                          (if (gx#stx-pair? _tl1394313961_)
                              (let ((_e1394413964_
                                     (gx#syntax-e _tl1394313961_)))
                                (let ((_hd1394513967_ (##car _e1394413964_))
                                      (_tl1394613969_ (##cdr _e1394413964_)))
                                  (let* ((_id13972_ _hd1394513967_)
                                         (_body13974_ _tl1394613969_))
                                    (if (if (gx#identifier? _id13972_)
                                            (gx#stx-list? _body13974_)
                                            '#f)
                                        (let* ((_ctx13976_
                                                (_make-context13937_
                                                 _id13972_))
                                               (_body13978_
                                                (gx#core-expand-module-begin
                                                 _body13974_
                                                 _ctx13976_))
                                               (_body13980_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body13978_)
                                                 (gx#stx-source _stx13935_))))
                                          (begin
                                            (##unchecked-structure-set!
                                             _ctx13976_
                                             (##make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body13980_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx13976_
                                             _body13980_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id13972_
                                             _ctx13976_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id13972_)
                                              _body13980_)
                                             (gx#stx-source _stx13935_))))
                                        (_E1394013952_)))))
                              (_E1394013952_))))
                      (_E1394013952_)))))
          (_E1393913984_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13901_ _ctx13902_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx13905_
                   (gx#core-expand-head (cons '%%begin-module _body13901_)))
                  (_e1390613913_ _stx13905_)
                  (_E1390813917_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx13905_)))
                  (_E1390713931_
                   (lambda ()
                     (if (gx#stx-pair? _e1390613913_)
                         (let ((_e1390913921_ (gx#syntax-e _e1390613913_)))
                           (let ((_hd1391013924_ (##car _e1390913921_))
                                 (_tl1391113926_ (##cdr _e1390913921_)))
                             (if (if (gx#identifier? _hd1391013924_)
                                     (gx#core-identifier=?
                                      _hd1391013924_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body13929_ _tl1391113926_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx13905_)
                                           _body13929_
                                           (gx#core-expand-module-body
                                            _body13929_))
                                       (_E1390813917_)))
                                 (_E1390813917_))))
                         (_E1390813917_)))))
             (_E1390713931_))))
       gx#current-expander-context
       _ctx13902_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13697_)
      (letrec ((_expand-special13699_
                (lambda (_hd13828_ _K13829_ _rest13830_ _r13831_)
                  (let* ((_e1383213849_ _hd13828_)
                         (_E1384413853_
                          (lambda ()
                            (_K13829_
                             _rest13830_
                             (cons (gx#core-expand-top _hd13828_) _r13831_))))
                         (_E1383413865_
                          (lambda ()
                            (if (gx#stx-pair? _e1383213849_)
                                (let ((_e1384513857_
                                       (gx#syntax-e _e1383213849_)))
                                  (let ((_hd1384613860_ (##car _e1384513857_))
                                        (_tl1384713862_ (##cdr _e1384513857_)))
                                    (if (if (gx#identifier? _hd1384613860_)
                                            (gx#core-identifier=?
                                             _hd1384613860_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K13829_
                                             _rest13830_
                                             (cons _hd13828_ _r13831_))
                                            (_E1384413853_))
                                        (_E1384413853_))))
                                (_E1384413853_))))
                         (_E1383313897_
                          (lambda ()
                            (if (gx#stx-pair? _e1383213849_)
                                (let ((_e1383513869_
                                       (gx#syntax-e _e1383213849_)))
                                  (let ((_hd1383613872_ (##car _e1383513869_))
                                        (_tl1383713874_ (##cdr _e1383513869_)))
                                    (if (if (gx#identifier? _hd1383613872_)
                                            (gx#core-identifier=?
                                             _hd1383613872_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1383713874_)
                                            (let ((_e1383813877_
                                                   (gx#syntax-e
                                                    _tl1383713874_)))
                                              (let ((_hd1383913880_
                                                     (##car _e1383813877_))
                                                    (_tl1384013882_
                                                     (##cdr _e1383813877_)))
                                                (let ((_hd-bind13885_
                                                       _hd1383913880_))
                                                  (if (gx#stx-pair?
                                                       _tl1384013882_)
                                                      (let ((_e1384113887_
                                                             (gx#syntax-e
                                                              _tl1384013882_)))
                                                        (let ((_hd1384213890_
                                                               (##car _e1384113887_))
                                                              (_tl1384313892_
                                                               (##cdr _e1384113887_)))
                                                          (let ((_expr13895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1384213890_))
                    (if (gx#stx-null? _tl1384313892_)
                        (if (gx#core-bind-values? _hd-bind13885_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13885_)
                              (_K13829_ _rest13830_ (cons _hd13828_ _r13831_)))
                            (_E1383413865_))
                        (_E1383413865_)))))
              (_E1383413865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1383413865_))
                                        (_E1383413865_))))
                                (_E1383413865_)))))
                    (_E1383313897_))))
               (_expand-body13700_
                (lambda (_rbody13702_)
                  (let _lp13704_ ((_rest13706_ _rbody13702_) (_body13707_ '()))
                    (let* ((_rest1370813716_ _rest13706_)
                           (_else1371013724_ (lambda () _body13707_))
                           (_K1371213816_
                            (lambda (_rest13727_ _hd13728_)
                              (let* ((_e1372913750_ _hd13728_)
                                     (_E1374513754_
                                      (lambda ()
                                        (_lp13704_
                                         _rest13727_
                                         (cons (gx#core-expand-expression
                                                _hd13728_)
                                               _body13707_))))
                                     (_E1374113768_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1372913750_)
                                            (let ((_e1374613758_
                                                   (gx#syntax-e
                                                    _e1372913750_)))
                                              (let ((_hd1374713761_
                                                     (##car _e1374613758_))
                                                    (_tl1374813763_
                                                     (##cdr _e1374613758_)))
                                                (let ((_form13766_
                                                       _hd1374713761_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13766_
                                                       gx#special-form-binding?)
                                                      (_lp13704_
                                                       _rest13727_
                                                       (cons _hd13728_
                                                             _body13707_))
                                                      (_E1374513754_)))))
                                            (_E1374513754_))))
                                     (_E1373113780_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1372913750_)
                                            (let ((_e1374213772_
                                                   (gx#syntax-e
                                                    _e1372913750_)))
                                              (let ((_hd1374313775_
                                                     (##car _e1374213772_))
                                                    (_tl1374413777_
                                                     (##cdr _e1374213772_)))
                                                (if (if (gx#identifier?
                                                         _hd1374313775_)
                                                        (gx#core-identifier=?
                                                         _hd1374313775_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp13704_
                                                         _rest13727_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13728_)
                                                               _body13707_))
                                                        (_E1374113768_))
                                                    (_E1374113768_))))
                                            (_E1374113768_))))
                                     (_E1373013812_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1372913750_)
                                            (let ((_e1373213784_
                                                   (gx#syntax-e
                                                    _e1372913750_)))
                                              (let ((_hd1373313787_
                                                     (##car _e1373213784_))
                                                    (_tl1373413789_
                                                     (##cdr _e1373213784_)))
                                                (if (if (gx#identifier?
                                                         _hd1373313787_)
                                                        (gx#core-identifier=?
                                                         _hd1373313787_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1373413789_)
                                                        (let ((_e1373513792_
                                                               (gx#syntax-e
                                                                _tl1373413789_)))
                                                          (let ((_hd1373613795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1373513792_))
                        (_tl1373713797_ (##cdr _e1373513792_)))
                    (let ((_hd-bind13800_ _hd1373613795_))
                      (if (gx#stx-pair? _tl1373713797_)
                          (let ((_e1373813802_ (gx#syntax-e _tl1373713797_)))
                            (let ((_hd1373913805_ (##car _e1373813802_))
                                  (_tl1374013807_ (##cdr _e1373813802_)))
                              (let ((_expr13810_ _hd1373913805_))
                                (if (gx#stx-null? _tl1374013807_)
                                    (if '#t
                                        (_lp13704_
                                         _rest13727_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13800_)
                                                 (gx#core-expand-expression
                                                  _expr13810_))
                                                (gx#stx-source _hd13728_))
                                               _body13707_))
                                        (_E1373113780_))
                                    (_E1373113780_)))))
                          (_E1373113780_)))))
                (_E1373113780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1373113780_))))
                                            (_E1373113780_)))))
                                (_E1373013812_)))))
                      (if (##pair? _rest1370813716_)
                          (let ((_hd1371313819_ (##car _rest1370813716_))
                                (_tl1371413821_ (##cdr _rest1370813716_)))
                            (let* ((_hd13824_ _hd1371313819_)
                                   (_rest13826_ _tl1371413821_))
                              (_K1371213816_ _rest13826_ _hd13824_)))
                          (_else1371013724_)))))))
        (_expand-body13700_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13697_)
          _expand-special13699_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13540_
             _expanded?13541_
             _method13542_
             _current-phi13543_
             _expand113544_)
      (letrec ((_K13546_
                (lambda (_rest13664_ _r13665_)
                  (let* ((_e1366613673_ _rest13664_)
                         (_E1366813677_ (lambda () _r13665_))
                         (_E1366713693_
                          (lambda ()
                            (if (gx#stx-pair? _e1366613673_)
                                (let ((_e1366913681_
                                       (gx#syntax-e _e1366613673_)))
                                  (let ((_hd1367013684_ (##car _e1366913681_))
                                        (_tl1367113686_ (##cdr _e1366913681_)))
                                    (let* ((_hd13689_ _hd1367013684_)
                                           (_rest13691_ _tl1367113686_))
                                      (if '#t
                                          (_step13547_
                                           _hd13689_
                                           _rest13691_
                                           _r13665_)
                                          (_E1366813677_)))))
                                (_E1366813677_)))))
                    (_E1366713693_))))
               (_step13547_
                (lambda (_hd13578_ _rest13579_ _r13580_)
                  (let* ((_e1358113599_ _hd13578_)
                         (_E1359413603_
                          (lambda ()
                            (if (_expanded?13541_ (gx#stx-e _hd13578_))
                                (_K13546_
                                 _rest13579_
                                 (cons (gx#stx-e _hd13578_) _r13580_))
                                (_expand113544_
                                 _hd13578_
                                 _K13546_
                                 _rest13579_
                                 _r13580_))))
                         (_E1359013619_
                          (lambda ()
                            (if (gx#stx-pair? _e1358113599_)
                                (let ((_e1359513607_
                                       (gx#syntax-e _e1358113599_)))
                                  (let ((_hd1359613610_ (##car _e1359513607_))
                                        (_tl1359713612_ (##cdr _e1359513607_)))
                                    (let* ((_macro13615_ _hd1359613610_)
                                           (_body13617_ _tl1359713612_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro13615_
                                           gx#syntax-binding?)
                                          (_K13546_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro13615_)
                                                  _hd13578_
                                                  _method13542_)
                                                 _rest13579_)
                                           _r13580_)
                                          (_E1359413603_)))))
                                (_E1359413603_))))
                         (_E1358313633_
                          (lambda ()
                            (if (gx#stx-pair? _e1358113599_)
                                (let ((_e1359113623_
                                       (gx#syntax-e _e1358113599_)))
                                  (let ((_hd1359213626_ (##car _e1359113623_))
                                        (_tl1359313628_ (##cdr _e1359113623_)))
                                    (if (eq? (gx#stx-e _hd1359213626_) 'begin:)
                                        (let ((_body13631_ _tl1359313628_))
                                          (if '#t
                                              (_K13546_
                                               (gx#stx-foldr
                                                cons
                                                _rest13579_
                                                _body13631_)
                                               _r13580_)
                                              (_E1359013619_)))
                                        (_E1359013619_))))
                                (_E1359013619_))))
                         (_E1358213660_
                          (lambda ()
                            (if (gx#stx-pair? _e1358113599_)
                                (let ((_e1358413637_
                                       (gx#syntax-e _e1358113599_)))
                                  (let ((_hd1358513640_ (##car _e1358413637_))
                                        (_tl1358613642_ (##cdr _e1358413637_)))
                                    (if (eq? (gx#stx-e _hd1358513640_) 'phi:)
                                        (if (gx#stx-pair? _tl1358613642_)
                                            (let ((_e1358713645_
                                                   (gx#syntax-e
                                                    _tl1358613642_)))
                                              (let ((_hd1358813648_
                                                     (##car _e1358713645_))
                                                    (_tl1358913650_
                                                     (##cdr _e1358713645_)))
                                                (let* ((_dphi13653_
                                                        _hd1358813648_)
                                                       (_body13655_
                                                        _tl1358913650_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi13653_)
                                                      (let ((_rbody13658_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K13546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body13655_
                         '()))
                      _current-phi13543_
                      (fx+ (gx#stx-e _dphi13653_) (_current-phi13543_)))))
                (_K13546_ _rest13579_ (foldr1 cons _r13580_ _rbody13658_)))
              (_E1358313633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1358313633_))
                                        (_E1358313633_))))
                                (_E1358313633_)))))
                    (_E1358213660_)))))
        (let* ((_e1354813555_ _stx13540_)
               (_E1355013559_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1354813555_)))
               (_E1354913574_
                (lambda ()
                  (if (gx#stx-pair? _e1354813555_)
                      (let ((_e1355113563_ (gx#syntax-e _e1354813555_)))
                        (let ((_hd1355213566_ (##car _e1355113563_))
                              (_tl1355313568_ (##cdr _e1355113563_)))
                          (let ((_body13571_ _tl1355313568_))
                            (if '#t
                                (if (_current-phi13543_)
                                    (_K13546_ _body13571_ '())
                                    (call-with-parameters
                                     (lambda () (_K13546_ _body13571_ '()))
                                     _current-phi13543_
                                     (gx#current-expander-phi)))
                                (_E1355013559_)))))
                      (_E1355013559_)))))
          (_E1354913574_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx13207_ _internal-expand?13208_)
        (letrec ((_expand113210_
                  (lambda (_hd13520_ _K13521_ _rest13522_ _r13523_)
                    (if (gx#core-bound-module? _hd13520_)
                        (_import113211_
                         (gx#syntax-local-e__0 _hd13520_)
                         _K13521_
                         _rest13522_
                         _r13523_)
                        (if (gx#core-library-module-path? _hd13520_)
                            (_import113211_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd13520_))
                             _K13521_
                             _rest13522_
                             _r13523_)
                            (let ((_e13525_ (gx#stx-e _hd13520_)))
                              (if (string? _e13525_)
                                  (_import113211_
                                   (gx#import-module__0
                                    (gx#core-resolve-module-path__%
                                     _hd13520_
                                     (gx#stx-source _stx13207_)))
                                   _K13521_
                                   _rest13522_
                                   _r13523_)
                                  (if (##structure-instance-of?
                                       _e13525_
                                       'gx#module-context::t)
                                      (_K13521_
                                       _rest13522_
                                       (cons _e13525_ _r13523_))
                                      (if (pair? _e13525_)
                                          (let ((_$e13527_
                                                 (gx#stx-e (car _e13525_))))
                                            (if (eq? 'spec: _$e13527_)
                                                (_import-spec13214_
                                                 _hd13520_
                                                 _K13521_
                                                 _rest13522_
                                                 _r13523_)
                                                (if (eq? 'in: _$e13527_)
                                                    (_import-submodule13212_
                                                     _hd13520_
                                                     _K13521_
                                                     _rest13522_
                                                     _r13523_)
                                                    (if (eq? 'runtime:
                                                             _$e13527_)
                                                        (_import-runtime13213_
                                                         _hd13520_
                                                         _K13521_
                                                         _rest13522_
                                                         _r13523_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal import"
                                                         _stx13207_
                                                         _hd13520_)))))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; illegal import"
                                           _stx13207_
                                           _hd13520_)))))))))
                 (_import113211_
                  (lambda (_ctx13509_ _K13510_ _rest13511_ _r13512_)
                    (let ((_dphi13514_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K13510_
                       _rest13511_
                       (cons (##structure
                              gx#import-set::t
                              _ctx13509_
                              _dphi13514_
                              (map (lambda (_g1351513517_)
                                     (gx#core-module-export->import__%
                                      _g1351513517_
                                      '#f
                                      _dphi13514_))
                                   (##unchecked-structure-ref
                                    _ctx13509_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r13512_)))))
                 (_import-submodule13212_
                  (lambda (_hd13476_ _K13477_ _rest13478_ _r13479_)
                    (let* ((_e1348013487_ _hd13476_)
                           (_E1348213491_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1348013487_)))
                           (_E1348113505_
                            (lambda ()
                              (if (gx#stx-pair? _e1348013487_)
                                  (let ((_e1348313495_
                                         (gx#syntax-e _e1348013487_)))
                                    (let ((_hd1348413498_
                                           (##car _e1348313495_))
                                          (_tl1348513500_
                                           (##cdr _e1348313495_)))
                                      (let ((_spath13503_ _tl1348513500_))
                                        (if '#t
                                            (_import113211_
                                             (_import-spec-source13215_
                                              _spath13503_)
                                             _K13477_
                                             _rest13478_
                                             _r13479_)
                                            (_E1348213491_)))))
                                  (_E1348213491_)))))
                      (_E1348113505_))))
                 (_import-runtime13213_
                  (lambda (_hd13443_ _K13444_ _rest13445_ _r13446_)
                    (let* ((_e1344713454_ _hd13443_)
                           (_E1344913458_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1344713454_)))
                           (_E1344813472_
                            (lambda ()
                              (if (gx#stx-pair? _e1344713454_)
                                  (let ((_e1345013462_
                                         (gx#syntax-e _e1344713454_)))
                                    (let ((_hd1345113465_
                                           (##car _e1345013462_))
                                          (_tl1345213467_
                                           (##cdr _e1345013462_)))
                                      (let ((_spath13470_ _tl1345213467_))
                                        (if '#t
                                            (_K13444_
                                             _rest13445_
                                             (cons (_import-spec-source13215_
                                                    _spath13470_)
                                                   _r13446_))
                                            (_E1344913458_)))))
                                  (_E1344913458_)))))
                      (_E1344813472_))))
                 (_import-spec13214_
                  (lambda (_hd13282_ _K13283_ _rest13284_ _r13285_)
                    (let* ((_e1328613303_ _hd13282_)
                           (_E1329513307_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1328613303_)))
                           (_E1328813417_
                            (lambda ()
                              (if (gx#stx-pair? _e1328613303_)
                                  (let ((_e1329613311_
                                         (gx#syntax-e _e1328613303_)))
                                    (let ((_hd1329713314_
                                           (##car _e1329613311_))
                                          (_tl1329813316_
                                           (##cdr _e1329613311_)))
                                      (if (gx#stx-pair? _tl1329813316_)
                                          (let ((_e1329913319_
                                                 (gx#syntax-e _tl1329813316_)))
                                            (let ((_hd1330013322_
                                                   (##car _e1329913319_))
                                                  (_tl1330113324_
                                                   (##cdr _e1329913319_)))
                                              (let* ((_path13327_
                                                      _hd1330013322_)
                                                     (_specs13329_
                                                      _tl1330113324_))
                                                (if '#t
                                                    (let ((_src-ctx13331_
                                                           (_import-spec-source13215_
                                                            _path13327_))
                                                          (_exports13332_
                                                           (make-table))
                                                          (_specs13333_
                                                           (gx#syntax->list
                                                            _specs13329_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out13335_)
                                                           (table-set!
                                                            _exports13332_
                                                            (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out13335_
                           '3
                           gx#module-export::t
                           '#f)
                          (##unchecked-structure-ref
                           _out13335_
                           '4
                           gx#module-export::t
                           '#f))
                    _out13335_))
                 (##unchecked-structure-ref
                  _src-ctx13331_
                  '9
                  gx#module-context::t
                  '#f))
                (_K13283_
                 _rest13284_
                 (foldl1 (lambda (_spec13337_ _r13338_)
                           (let* ((_e1333913355_ _spec13337_)
                                  (_E1334113359_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1333913355_)))
                                  (_E1334013413_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1333913355_)
                                         (let ((_e1334213363_
                                                (gx#syntax-e _e1333913355_)))
                                           (let ((_hd1334313366_
                                                  (##car _e1334213363_))
                                                 (_tl1334413368_
                                                  (##cdr _e1334213363_)))
                                             (let ((_phi13371_ _hd1334313366_))
                                               (if (gx#stx-pair?
                                                    _tl1334413368_)
                                                   (let ((_e1334513373_
                                                          (gx#syntax-e
                                                           _tl1334413368_)))
                                                     (let ((_hd1334613376_
                                                            (##car _e1334513373_))
                                                           (_tl1334713378_
                                                            (##cdr _e1334513373_)))
                                                       (let ((_name13381_
                                                              _hd1334613376_))
                                                         (if (gx#stx-pair?
                                                              _tl1334713378_)
                                                             (let ((_e1334813383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1334713378_)))
                       (let ((_hd1334913386_ (##car _e1334813383_))
                             (_tl1335013388_ (##cdr _e1334813383_)))
                         (let ((_src-phi13391_ _hd1334913386_))
                           (if (gx#stx-pair? _tl1335013388_)
                               (let ((_e1335113393_
                                      (gx#syntax-e _tl1335013388_)))
                                 (let ((_hd1335213396_ (##car _e1335113393_))
                                       (_tl1335313398_ (##cdr _e1335113393_)))
                                   (let ((_src-name13401_ _hd1335213396_))
                                     (if (gx#stx-null? _tl1335313398_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi13391_)
                                                 (if (gx#identifier?
                                                      _src-name13401_)
                                                     (if (gx#stx-fixnum?
                                                          _phi13371_)
                                                         (gx#identifier?
                                                          _name13381_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi13403_
                                                    (gx#stx-e _src-phi13391_))
                                                   (_src-name13404_
                                                    (gx#core-identifier-key
                                                     _src-name13401_))
                                                   (_phi13405_
                                                    (gx#stx-e _phi13371_))
                                                   (_name13406_
                                                    (gx#core-identifier-key
                                                     _name13381_)))
                                               (let ((_$e13408_
                                                      (table-ref
                                                       _exports13332_
                                                       (cons _src-phi13403_
                                                             _src-name13404_)
                                                       '#f)))
                                                 (if _$e13408_
                                                     ((lambda (_out13411_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out13411_
                                                               _name13406_
                                                               (fx- _phi13405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi13403_))
                      _r13338_))
              _$e13408_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx13207_
                                                      _hd13282_))))
                                             (_E1334113359_))
                                         (_E1334113359_)))))
                               (_E1334113359_)))))
                     (_E1334113359_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1334113359_)))))
                                         (_E1334113359_)))))
                             (_E1334013413_)))
                         _r13285_
                         _specs13333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1329513307_)))))
                                          (_E1329513307_))))
                                  (_E1329513307_))))
                           (_E1328713439_
                            (lambda ()
                              (if (gx#stx-pair? _e1328613303_)
                                  (let ((_e1328913421_
                                         (gx#syntax-e _e1328613303_)))
                                    (let ((_hd1329013424_
                                           (##car _e1328913421_))
                                          (_tl1329113426_
                                           (##cdr _e1328913421_)))
                                      (if (gx#stx-pair? _tl1329113426_)
                                          (let ((_e1329213429_
                                                 (gx#syntax-e _tl1329113426_)))
                                            (let ((_hd1329313432_
                                                   (##car _e1329213429_))
                                                  (_tl1329413434_
                                                   (##cdr _e1329213429_)))
                                              (let ((_path13437_
                                                     _hd1329313432_))
                                                (if (gx#stx-null?
                                                     _tl1329413434_)
                                                    (if '#t
                                                        (_K13283_
                                                         _rest13284_
                                                         (cons (_import-spec-source13215_
                                                                _path13437_)
                                                               _r13285_))
                                                        (_E1328813417_))
                                                    (_E1328813417_)))))
                                          (_E1328813417_))))
                                  (_E1328813417_)))))
                      (_E1328713439_))))
                 (_import-spec-source13215_
                  (lambda (_spath13280_)
                    (gx#core-import-nested-module _spath13280_ _stx13207_)))
                 (_import!13216_
                  (lambda (_rbody13229_)
                    (letrec* ((_current-ctx13231_
                               (gx#current-expander-context))
                              (_deps13232_ (make-table 'test: eq?))
                              (_bind!13233_
                               (lambda (_hd13278_)
                                 (gx#core-bind-import!__1
                                  _hd13278_
                                  _current-ctx13231_))))
                      (let _lp13235_ ((_rest13237_ _rbody13229_)
                                      (_body13238_ '()))
                        (let* ((_rest1323913247_ _rest13237_)
                               (_else1324113257_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx13231_
                                         'gx#module-context::t)
                                        (##unchecked-structure-set!
                                         _current-ctx13231_
                                         (foldl1 cons
                                                 (##unchecked-structure-ref
                                                  _current-ctx13231_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body13238_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx13255_ _g16001_)
                                       (gx#eval-module _ctx13255_))
                                     _deps13232_)
                                    _body13238_)))
                               (_K1324313266_
                                (lambda (_rest13260_ _hd13261_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd13261_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!13233_ _hd13261_)
                                          (if (if (fxpositive?
                                                   (##unchecked-structure-ref
                                                    _hd13261_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##unchecked-structure-ref
                                                            (##unchecked-structure-ref
                                                             _hd13261_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps13232_
                                               (##unchecked-structure-ref
                                                (##unchecked-structure-ref
                                                 _hd13261_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd13261_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!13233_
                                               (##unchecked-structure-ref
                                                _hd13261_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##unchecked-structure-ref
                                                    _hd13261_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps13232_
                                                   (##unchecked-structure-ref
                                                    _hd13261_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e13263_
                                                   (##structure-instance-of?
                                                    _hd13261_
                                                    'gx#module-context::t)))
                                              (if _$e13263_
                                                  _$e13263_
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx13207_
                                                   _hd13261_)))))
                                    (_lp13235_
                                     _rest13260_
                                     (cons _hd13261_ _body13238_))))))
                          (if (##pair? _rest1323913247_)
                              (let ((_hd1324413269_ (##car _rest1323913247_))
                                    (_tl1324513271_ (##cdr _rest1323913247_)))
                                (let* ((_hd13274_ _hd1324413269_)
                                       (_rest13276_ _tl1324513271_))
                                  (_K1324313266_ _rest13276_ _hd13274_)))
                              (_else1324113257_)))))))
                 (_expanded-import?13217_
                  (lambda (_e13221_)
                    (let ((_$e13223_
                           (##structure-direct-instance-of?
                            _e13221_
                            'gx#import-set::t)))
                      (if _$e13223_
                          _$e13223_
                          (let ((_$e13226_
                                 (##structure-direct-instance-of?
                                  _e13221_
                                  'gx#module-import::t)))
                            (if _$e13226_
                                _$e13226_
                                (##structure-instance-of?
                                 _e13221_
                                 'gx#module-context::t))))))))
          (let ((_rbody13219_
                 (gx#core-expand-import/export
                  _stx13207_
                  _expanded-import?13217_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand113210_)))
            (if _internal-expand?13208_
                (reverse _rbody13219_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!13216_ _rbody13219_))
                 (gx#stx-source _stx13207_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx13533_)
          (let ((_internal-expand?13535_ '#f))
            (gx#core-expand-import%__% _stx13533_ _internal-expand?13535_))))
      (define gx#core-expand-import%
        (lambda _g16003_
          (let ((_g16002_ (length _g16003_)))
            (cond ((##fx= _g16002_ 1)
                   (apply gx#core-expand-import%__0 _g16003_))
                  ((##fx= _g16002_ 2)
                   (apply gx#core-expand-import%__% _g16003_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g16003_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath13134_ _where13135_)
      (let* ((_e1313613143_ _spath13134_)
             (_E1313813147_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1313613143_)))
             (_E1313713202_
              (lambda ()
                (if (gx#stx-pair? _e1313613143_)
                    (let ((_e1313913151_ (gx#syntax-e _e1313613143_)))
                      (let ((_hd1314013154_ (##car _e1313913151_))
                            (_tl1314113156_ (##cdr _e1313913151_)))
                        (let* ((_origin13159_ _hd1314013154_)
                               (_sub13161_ _tl1314113156_))
                          (if '#t
                              (let ((_origin-ctx13163_
                                     (if (gx#stx-false? _origin13159_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13159_))))
                                (let _lp13165_ ((_rest13167_ _sub13161_)
                                                (_ctx13168_ _origin-ctx13163_))
                                  (let* ((_e1316913176_ _rest13167_)
                                         (_E1317113180_ (lambda () _ctx13168_))
                                         (_E1317013198_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1316913176_)
                                                (let ((_e1317213184_
                                                       (gx#syntax-e
                                                        _e1316913176_)))
                                                  (let ((_hd1317313187_
                                                         (##car _e1317213184_))
                                                        (_tl1317413189_
                                                         (##cdr _e1317213184_)))
                                                    (let* ((_id13192_
                                                            _hd1317313187_)
                                                           (_rest13194_
                                                            _tl1317413189_))
                                                      (if '#t
                                                          (let ((_bind13196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13192_ '0 _ctx13168_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind13196_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##unchecked-structure-ref
                                _bind13196_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13135_
                           _spath13134_
                           _id13192_))
                      (_lp13165_
                       _rest13194_
                       (##unchecked-structure-ref
                        _bind13196_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1317113180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1317113180_)))))
                                    (_E1317013198_))))
                              (_E1313813147_)))))
                    (_E1313813147_)))))
        (_E1313713202_))))
  (define gx#core-expand-import-source
    (lambda (_hd13132_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13132_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx12643_ _internal-expand?12644_)
        (letrec* ((_make-export__1594115942_
                   (lambda (_bind13080_ _phi13081_ _ctx13082_ _name13083_)
                     (let* ((_key13085_
                             (##unchecked-structure-ref
                              _bind13080_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key13087_
                             (if _name13083_
                                 (gx#core-identifier-key _name13083_)
                                 _key13085_)))
                       (##structure
                        gx#module-export::t
                        _ctx13082_
                        _key13085_
                        _phi13081_
                        _export-key13087_
                        (let ((_$e13090_
                               (##structure-instance-of?
                                _bind13080_
                                'gx#extern-binding::t)))
                          (if _$e13090_
                              _$e13090_
                              (##structure-direct-instance-of?
                               _bind13080_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1594315946_
                   (lambda (_bind13096_)
                     (let* ((_phi13098_ (gx#current-export-expander-phi))
                            (_ctx13100_ (gx#current-expander-context))
                            (_name13102_ '#f))
                       (_make-export__1594115942_
                        _bind13096_
                        _phi13098_
                        _ctx13100_
                        _name13102_))))
                  (_make-export__1__1594415947_
                   (lambda (_bind13104_ _phi13105_)
                     (let* ((_ctx13107_ (gx#current-expander-context))
                            (_name13109_ '#f))
                       (_make-export__1594115942_
                        _bind13104_
                        _phi13105_
                        _ctx13107_
                        _name13109_))))
                  (_make-export__2__1594515948_
                   (lambda (_bind13111_ _phi13112_ _ctx13113_)
                     (let ((_name13115_ '#f))
                       (_make-export__1594115942_
                        _bind13111_
                        _phi13112_
                        _ctx13113_
                        _name13115_))))
                  (_make-export12646_
                   (lambda _g16005_
                     (let ((_g16004_ (length _g16005_)))
                       (cond ((##fx= _g16004_ 1)
                              (apply _make-export__0__1594315946_ _g16005_))
                             ((##fx= _g16004_ 2)
                              (apply _make-export__1__1594415947_ _g16005_))
                             ((##fx= _g16004_ 3)
                              (apply _make-export__2__1594515948_ _g16005_))
                             ((##fx= _g16004_ 4)
                              (apply _make-export__1594115942_ _g16005_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g16005_))))))
                  (_expand112647_
                   (lambda (_hd12793_ _K12794_ _rest12795_ _r12796_)
                     (let* ((_e1279712829_ _hd12793_)
                            (_E1282412833_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx12643_
                                _hd12793_)))
                            (_E1281412912_
                             (lambda ()
                               (if (gx#stx-pair? _e1279712829_)
                                   (let ((_e1282512837_
                                          (gx#syntax-e _e1279712829_)))
                                     (let ((_hd1282612840_
                                            (##car _e1282512837_))
                                           (_tl1282712842_
                                            (##cdr _e1282512837_)))
                                       (if (eq? (gx#stx-e _hd1282612840_)
                                                'import:)
                                           (let ((_in12845_ _tl1282712842_))
                                             (if (gx#stx-list? _in12845_)
                                                 (let _lp12847_ ((_in-rest12849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in12845_)
                         (_r12850_ _r12796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1285112858_
                                                           _in-rest12849_)
                                                          (_E1285312862_
                                                           (lambda ()
                                                             (_K12794_
                                                              _rest12795_
                                                              _r12850_)))
                                                          (_E1285212908_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1285112858_)
                         (let ((_e1285412866_ (gx#syntax-e _e1285112858_)))
                           (let ((_hd1285512869_ (##car _e1285412866_))
                                 (_tl1285612871_ (##cdr _e1285412866_)))
                             (let* ((_hd12874_ _hd1285512869_)
                                    (_in-rest12876_ _tl1285612871_))
                               (if '#t
                                   (let ((_src12906_
                                          (if (gx#core-bound-module? _hd12874_)
                                              (gx#syntax-local-e__0 _hd12874_)
                                              (if (gx#core-library-module-path?
                                                   _hd12874_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd12874_))
                                                  (if (gx#stx-string?
                                                       _hd12874_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd12874_
                                                        (gx#stx-source
                                                         _stx12643_)))
                                                      (let* ((_e1287712884_
                                                              _hd12874_)
                                                             (_E1287912888_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx12643_
                         _hd12874_)))
                     (_E1287812902_
                      (lambda ()
                        (if (gx#stx-pair? _e1287712884_)
                            (let ((_e1288012892_ (gx#syntax-e _e1287712884_)))
                              (let ((_hd1288112895_ (##car _e1288012892_))
                                    (_tl1288212897_ (##cdr _e1288012892_)))
                                (if (eq? (gx#stx-e _hd1288112895_) 'in:)
                                    (let ((_spath12900_ _tl1288212897_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath12900_
                                           _stx12643_)
                                          (_E1287912888_)))
                                    (_E1287912888_))))
                            (_E1287912888_)))))
                (_E1287812902_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp12847_
                                      _in-rest12876_
                                      (_export-imports12648_
                                       _src12906_
                                       _r12850_)))
                                   (_E1285312862_)))))
                         (_E1285312862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1285212908_)))
                                                 (_E1282412833_)))
                                           (_E1282412833_))))
                                   (_E1282412833_))))
                            (_E1280112951_
                             (lambda ()
                               (if (gx#stx-pair? _e1279712829_)
                                   (let ((_e1281512916_
                                          (gx#syntax-e _e1279712829_)))
                                     (let ((_hd1281612919_
                                            (##car _e1281512916_))
                                           (_tl1281712921_
                                            (##cdr _e1281512916_)))
                                       (if (eq? (gx#stx-e _hd1281612919_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1281712921_)
                                               (let ((_e1281812924_
                                                      (gx#syntax-e
                                                       _tl1281712921_)))
                                                 (let ((_hd1281912927_
                                                        (##car _e1281812924_))
                                                       (_tl1282012929_
                                                        (##cdr _e1281812924_)))
                                                   (let ((_id12932_
                                                          _hd1281912927_))
                                                     (if (gx#stx-pair?
                                                          _tl1282012929_)
                                                         (let ((_e1282112934_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1282012929_)))
                   (let ((_hd1282212937_ (##car _e1282112934_))
                         (_tl1282312939_ (##cdr _e1282112934_)))
                     (let ((_name12942_ _hd1282212937_))
                       (if (gx#stx-null? _tl1282312939_)
                           (if '#t
                               (let* ((_phi12944_
                                       (gx#current-export-expander-phi))
                                      (_$e12946_
                                       (gx#core-resolve-identifier__1
                                        _id12932_
                                        _phi12944_)))
                                 (if _$e12946_
                                     ((lambda (_bind12949_)
                                        (_K12794_
                                         _rest12795_
                                         (cons (_make-export__1594115942_
                                                _bind12949_
                                                _phi12944_
                                                (gx#current-expander-context)
                                                _name12942_)
                                               _r12796_)))
                                      _$e12946_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx12643_
                                      _hd12793_
                                      _id12932_)))
                               (_E1281412912_))
                           (_E1281412912_)))))
                 (_E1281412912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1281412912_))
                                           (_E1281412912_))))
                                   (_E1281412912_))))
                            (_E1280013000_
                             (lambda ()
                               (if (gx#stx-pair? _e1279712829_)
                                   (let ((_e1280212955_
                                          (gx#syntax-e _e1279712829_)))
                                     (let ((_hd1280312958_
                                            (##car _e1280212955_))
                                           (_tl1280412960_
                                            (##cdr _e1280212955_)))
                                       (if (eq? (gx#stx-e _hd1280312958_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1280412960_)
                                               (let ((_e1280512963_
                                                      (gx#syntax-e
                                                       _tl1280412960_)))
                                                 (let ((_hd1280612966_
                                                        (##car _e1280512963_))
                                                       (_tl1280712968_
                                                        (##cdr _e1280512963_)))
                                                   (let ((_phi12971_
                                                          _hd1280612966_))
                                                     (if (gx#stx-pair?
                                                          _tl1280712968_)
                                                         (let ((_e1280812973_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1280712968_)))
                   (let ((_hd1280912976_ (##car _e1280812973_))
                         (_tl1281012978_ (##cdr _e1280812973_)))
                     (let ((_id12981_ _hd1280912976_))
                       (if (gx#stx-pair? _tl1281012978_)
                           (let ((_e1281112983_ (gx#syntax-e _tl1281012978_)))
                             (let ((_hd1281212986_ (##car _e1281112983_))
                                   (_tl1281312988_ (##cdr _e1281112983_)))
                               (let ((_name12991_ _hd1281212986_))
                                 (if (gx#stx-null? _tl1281312988_)
                                     (if (if (gx#stx-fixnum? _phi12971_)
                                             (if (gx#identifier? _id12981_)
                                                 (gx#identifier? _name12991_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi12993_
                                                 (gx#stx-e _phi12971_))
                                                (_$e12995_
                                                 (gx#core-resolve-identifier__1
                                                  _id12981_
                                                  _phi12993_)))
                                           (if _$e12995_
                                               ((lambda (_bind12998_)
                                                  (_K12794_
                                                   _rest12795_
                                                   (cons (_make-export__1594115942_
                                                          _bind12998_
                                                          _phi12993_
                                                          (gx#current-expander-context)
                                                          _name12991_)
                                                         _r12796_)))
                                                _$e12995_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx12643_
                                                _hd12793_
                                                _id12981_)))
                                         (_E1280112951_))
                                     (_E1280112951_)))))
                           (_E1280112951_)))))
                 (_E1280112951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1280112951_))
                                           (_E1280112951_))))
                                   (_E1280112951_))))
                            (_E1279913011_
                             (lambda ()
                               (let ((_id13004_ _e1279712829_))
                                 (if (gx#identifier? _id13004_)
                                     (let ((_$e13006_
                                            (gx#core-resolve-identifier__1
                                             _id13004_
                                             (gx#current-export-expander-phi))))
                                       (if _$e13006_
                                           ((lambda (_bind13009_)
                                              (_K12794_
                                               _rest12795_
                                               (cons (_make-export__0__1594315946_
                                                      _bind13009_)
                                                     _r12796_)))
                                            _$e13006_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx12643_
                                            _hd12793_)))
                                     (_E1280013000_)))))
                            (_E1279813075_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1279712829_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx13015_
                                               (gx#current-expander-context))
                                              (_current-phi13017_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx13019_
                                               (gx#core-context-shift
                                                _current-ctx13015_
                                                _current-phi13017_))
                                              (_phi-bind13021_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx13019_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp13024_ ((_bind-rest13026_
                                                          _phi-bind13021_)
                                                         (_set13027_ '()))
                                           (let* ((_bind-rest1302813038_
                                                   _bind-rest13026_)
                                                  (_else1303013046_
                                                   (lambda ()
                                                     (_K12794_
                                                      _rest12795_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi13017_
                                                             _set13027_)
                                                            _r12796_))))
                                                  (_K1303213056_
                                                   (lambda (_bind-rest13049_
                                                            _bind13050_
                                                            _key13051_)
                                                     (if (let ((_$e13053_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind13050_
                         'gx#import-binding::t)))
                   (if _$e13053_
                       _$e13053_
                       (gx#private-feature-binding? _bind13050_)))
                 (_lp13024_ _bind-rest13049_ _set13027_)
                 (_lp13024_
                  _bind-rest13049_
                  (cons (_make-export__2__1594515948_
                         _bind13050_
                         _current-phi13017_
                         _current-ctx13015_)
                        _set13027_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1302813038_)
                                                 (let ((_hd1303313059_
                                                        (##car _bind-rest1302813038_))
                                                       (_tl1303413061_
                                                        (##cdr _bind-rest1302813038_)))
                                                   (if (##pair? _hd1303313059_)
                                                       (let ((_hd1303513064_
                                                              (##car _hd1303313059_))
                                                             (_tl1303613066_
                                                              (##cdr _hd1303313059_)))
                                                         (let* ((_key13069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1303513064_)
                        (_bind13071_ _tl1303613066_)
                        (_bind-rest13073_ _tl1303413061_))
                   (_K1303213056_ _bind-rest13073_ _bind13071_ _key13069_)))
               (_else1303013046_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1303013046_)))))
                                       (_E1279913011_))
                                   (_E1279913011_)))))
                       (_E1279813075_))))
                  (_export-imports12648_
                   (lambda (_src12669_ _r12670_)
                     (letrec* ((_current-ctx12672_
                                (gx#current-expander-context))
                               (_current-phi12673_
                                (gx#current-export-expander-phi))
                               (_import->export12674_
                                (lambda (_in12755_)
                                  (let* ((_in1275612764_ _in12755_)
                                         (_E1275812768_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1275612764_)))
                                         (_K1275912775_
                                          (lambda (_phi12771_
                                                   _key12772_
                                                   _out12773_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx12672_
                                             _key12772_
                                             _phi12771_
                                             _key12772_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1275612764_
                                         'gx#module-import::t)
                                        (let* ((_e1276012778_
                                                (##vector-ref
                                                 _in1275612764_
                                                 '1))
                                               (_out12781_ _e1276012778_)
                                               (_e1276112783_
                                                (##vector-ref
                                                 _in1275612764_
                                                 '2))
                                               (_key12786_ _e1276112783_)
                                               (_e1276212788_
                                                (##vector-ref
                                                 _in1275612764_
                                                 '3))
                                               (_phi12791_ _e1276212788_))
                                          (_K1275912775_
                                           _phi12791_
                                           _key12786_
                                           _out12781_))
                                        (_E1275812768_)))))
                               (_fold-e12675_
                                (lambda (_in12677_ _r12678_)
                                  (let* ((_in1267912693_ _in12677_)
                                         (_else1268212701_
                                          (lambda () _r12678_)))
                                    (let ((_K1268812737_
                                           (lambda (_phi12733_
                                                    _key12734_
                                                    _out12735_)
                                             (if (if (fx= _phi12733_
                                                          _current-phi12673_)
                                                     (eq? _src12669_
                                                          (##unchecked-structure-ref
                                                           _out12735_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export12674_
                                                        _in12677_)
                                                       _r12678_)
                                                 _r12678_)))
                                          (_K1268412712_
                                           (lambda (_imports12705_
                                                    _phi12706_
                                                    _ctx12707_)
                                             (if (if (fx= _phi12706_
                                                          _current-phi12673_)
                                                     (eq? _src12669_
                                                          _ctx12707_)
                                                     '#f)
                                                 (foldl1 (lambda (_in12709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r12710_)
                   (cons (_import->export12674_ _in12709_) _r12710_))
                 _r12678_
                 _imports12705_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r12678_))))
                                      (let ((_try-match1268112730_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1267912693_
                                                    'gx#import-set::t)
                                                   (let* ((_e1268512715_
                                                           (##vector-ref
                                                            _in1267912693_
                                                            '1))
                                                          (_e1268612720_
                                                           (##vector-ref
                                                            _in1267912693_
                                                            '2))
                                                          (_e1268712725_
                                                           (##vector-ref
                                                            _in1267912693_
                                                            '3)))
                                                     (let ((_ctx12718_
                                                            _e1268512715_)
                                                           (_phi12723_
                                                            _e1268612720_)
                                                           (_imports12728_
                                                            _e1268712725_))
                                                       (_K1268412712_
                                                        _imports12728_
                                                        _phi12723_
                                                        _ctx12718_)))
                                                   (_else1268212701_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1267912693_
                                             'gx#module-import::t)
                                            (let* ((_e1268912740_
                                                    (##vector-ref
                                                     _in1267912693_
                                                     '1))
                                                   (_e1269012745_
                                                    (##vector-ref
                                                     _in1267912693_
                                                     '2))
                                                   (_e1269112750_
                                                    (##vector-ref
                                                     _in1267912693_
                                                     '3)))
                                              (let ((_out12743_ _e1268912740_)
                                                    (_key12748_ _e1269012745_)
                                                    (_phi12753_ _e1269112750_))
                                                (_K1268812737_
                                                 _phi12753_
                                                 _key12748_
                                                 _out12743_)))
                                            (_try-match1268112730_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src12669_
                              _current-phi12673_
                              (foldl1 _fold-e12675_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx12672_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r12670_))))
                  (_export!12649_
                   (lambda (_rbody12659_)
                     (letrec* ((_current-ctx12661_
                                (gx#current-expander-context))
                               (_fold-e12662_
                                (lambda (_out12666_ _r12667_)
                                  (if (##structure-direct-instance-of?
                                       _out12666_
                                       'gx#module-export::t)
                                      (cons _out12666_ _r12667_)
                                      (if (##structure-direct-instance-of?
                                           _out12666_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r12667_
                                                  (##unchecked-structure-ref
                                                   _out12666_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r12667_)))))
                       (let ((_body12664_ (reverse _rbody12659_)))
                         (begin
                           (##unchecked-structure-set!
                            _current-ctx12661_
                            (foldl1 _fold-e12662_
                                    (##unchecked-structure-ref
                                     _current-ctx12661_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body12664_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body12664_)))))
                  (_expanded-export?12650_
                   (lambda (_e12654_)
                     (let ((_$e12656_
                            (##structure-direct-instance-of?
                             _e12654_
                             'gx#module-export::t)))
                       (if _$e12656_
                           _$e12656_
                           (##structure-direct-instance-of?
                            _e12654_
                            'gx#export-set::t))))))
          (let ((_rbody12652_
                 (gx#core-expand-import/export
                  _stx12643_
                  _expanded-export?12650_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand112647_)))
            (if _internal-expand?12644_
                (reverse _rbody12652_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!12649_ _rbody12652_))
                 (gx#stx-source _stx12643_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx13125_)
          (let ((_internal-expand?13127_ '#f))
            (gx#core-expand-export%__% _stx13125_ _internal-expand?13127_))))
      (define gx#core-expand-export%
        (lambda _g16007_
          (let ((_g16006_ (length _g16007_)))
            (cond ((##fx= _g16006_ 1)
                   (apply gx#core-expand-export%__0 _g16007_))
                  ((##fx= _g16006_ 2)
                   (apply gx#core-expand-export%__% _g16007_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g16007_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd12640_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12640_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12610_)
      (let* ((_e1261112618_ _stx12610_)
             (_E1261312622_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1261112618_)))
             (_E1261212636_
              (lambda ()
                (if (gx#stx-pair? _e1261112618_)
                    (let ((_e1261412626_ (gx#syntax-e _e1261112618_)))
                      (let ((_hd1261512629_ (##car _e1261412626_))
                            (_tl1261612631_ (##cdr _e1261412626_)))
                        (let ((_body12634_ _tl1261612631_))
                          (if (gx#identifier-list? _body12634_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12634_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12634_))
                                 (gx#stx-source _stx12610_)))
                              (_E1261312622_)))))
                    (_E1261312622_)))))
        (_E1261212636_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id12576_ _private?12577_ _phi12578_ _ctx12579_)
        (gx#core-bind-syntax!__%
         _id12576_
         ((if _private?12577_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id12576_))
         _private?12577_
         _phi12578_
         _ctx12579_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id12584_)
          (let* ((_private?12586_ '#f)
                 (_phi12588_ (gx#current-expander-phi))
                 (_ctx12590_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12584_
             _private?12586_
             _phi12588_
             _ctx12590_))))
      (define gx#core-bind-feature!__1
        (lambda (_id12592_ _private?12593_)
          (let* ((_phi12595_ (gx#current-expander-phi))
                 (_ctx12597_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12592_
             _private?12593_
             _phi12595_
             _ctx12597_))))
      (define gx#core-bind-feature!__2
        (lambda (_id12599_ _private?12600_ _phi12601_)
          (let ((_ctx12603_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12599_
             _private?12600_
             _phi12601_
             _ctx12603_))))
      (define gx#core-bind-feature!
        (lambda _g16009_
          (let ((_g16008_ (length _g16009_)))
            (cond ((##fx= _g16008_ 1)
                   (apply gx#core-bind-feature!__0 _g16009_))
                  ((##fx= _g16008_ 2)
                   (apply gx#core-bind-feature!__1 _g16009_))
                  ((##fx= _g16008_ 3)
                   (apply gx#core-bind-feature!__2 _g16009_))
                  ((##fx= _g16008_ 4)
                   (apply gx#core-bind-feature!__% _g16009_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g16009_)))))))))
