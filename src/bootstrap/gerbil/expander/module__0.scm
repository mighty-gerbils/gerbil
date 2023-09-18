(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1695066982)
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
      (lambda _$args11922_
        (apply make-struct-instance gx#module-import::t _$args11922_)))
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
      (lambda _$args11919_
        (apply make-struct-instance gx#module-export::t _$args11919_)))
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
      (lambda _$args11916_
        (apply make-struct-instance gx#import-set::t _$args11916_)))
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
      (lambda _$args11913_
        (apply make-struct-instance gx#export-set::t _$args11913_)))
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
      (lambda _$args11910_
        (apply make-class-instance gx#import-expander::t _$args11910_)))
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
      (lambda _$args11907_
        (apply make-class-instance gx#export-expander::t _$args11907_)))
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
      (lambda _$args11904_
        (apply make-class-instance gx#import-export-expander::t _$args11904_)))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path11901_ _fun11902_)
        (call-with-input-file
         (cons 'path: (cons _path11901_ gx#source-file-settings))
         _fun11902_)))
    (define gx#module-context:::init!
      (lambda (_self11895_ _id11896_ _super11897_ _ns11898_ _path11899_)
        (if (##fx< '11 (##vector-length _self11895_))
            (begin
              (##vector-set! _self11895_ '1 _id11896_)
              (##vector-set! _self11895_ '2 (make-table 'test: eq?))
              (##vector-set! _self11895_ '3 _super11897_)
              (##vector-set! _self11895_ '4 '#f)
              (##vector-set! _self11895_ '5 '#f)
              (##vector-set! _self11895_ '6 _ns11898_)
              (##vector-set! _self11895_ '7 _path11899_)
              (##vector-set! _self11895_ '8 '())
              (##vector-set! _self11895_ '9 '())
              (##vector-set! _self11895_ '10 '#f)
              (##vector-set! _self11895_ '11 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self11895_))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self11739_ _ctx11740_ _root11741_)
        (let ((_super11749_
               (let ((_$e11743_ _root11741_))
                 (if _$e11743_
                     _$e11743_
                     (let ((_$e11746_ (gx#core-context-root__0)))
                       (if _$e11746_
                           _$e11746_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11740_
              (let ((_id11752_
                     (##structure-ref
                      _ctx11740_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11753_
                     (##structure-ref _ctx11740_ '7 gx#module-context::t '#f))
                    (_in11754_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11740_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11755_
                     (make-promise (lambda () (gx#eval-module _ctx11740_)))))
                (if (##fx< '8 (##vector-length _self11739_))
                    (begin
                      (##vector-set! _self11739_ '1 _id11752_)
                      (##vector-set!
                       _self11739_
                       '2
                       (make-table 'test: eq? 'size: (length _in11754_)))
                      (##vector-set! _self11739_ '3 _super11749_)
                      (##vector-set! _self11739_ '4 '#f)
                      (##vector-set! _self11739_ '5 '#f)
                      (##vector-set! _self11739_ '6 _path11753_)
                      (##vector-set! _self11739_ '7 _in11754_)
                      (##vector-set! _self11739_ '8 _e11755_))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self11739_))
                (for-each
                 (lambda (_g1175611758_)
                   (gx#core-bind-weak-import!__% _g1175611758_ _self11739_))
                 _in11754_))
              (if (##fx< '8 (##vector-length _self11739_))
                  (begin
                    (##vector-set! _self11739_ '1 '#f)
                    (##vector-set! _self11739_ '2 (make-table 'test: eq?))
                    (##vector-set! _self11739_ '3 _super11749_)
                    (##vector-set! _self11739_ '4 '#f)
                    (##vector-set! _self11739_ '5 '#f)
                    (##vector-set! _self11739_ '6 '#f)
                    (##vector-set! _self11739_ '7 '())
                    (##vector-set! _self11739_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self11739_))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self11764_ _ctx11765_)
        (let ((_root11767_ '#f))
          (gx#prelude-context:::init!__% _self11764_ _ctx11765_ _root11767_))))
    (define gx#prelude-context:::init!
      (lambda _g16140_
        (let ((_g16139_ (##length _g16140_)))
          (cond ((##fx= _g16139_ 2)
                 (apply gx#prelude-context:::init!__0 _g16140_))
                ((##fx= _g16139_ 3)
                 (apply gx#prelude-context:::init!__% _g16140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g16140_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self11613_ _e11614_)
        (if (##fx< '3 (##vector-length _self11613_))
            (begin
              (##vector-set! _self11613_ '1 _e11614_)
              (##vector-set! _self11613_ '2 (gx#current-expander-context))
              (##vector-set!
               _self11613_
               '3
               (fx- (gx#current-expander-phi) '1)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self11613_))))
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
      (lambda (_g1123911242_ _g1124011244_)
        (gx#core-apply-user-expander__%
         _g1123911242_
         _g1124011244_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g1111011113_ _g1111111115_)
        (gx#core-apply-user-expander__%
         _g1111011113_
         _g1111111115_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx10981_)
        (let* ((_path10983_
                (##structure-ref _ctx10981_ '7 gx#module-context::t '#f))
               (_path10985_
                (if (pair? _path10983_) (last _path10983_) _path10983_)))
          (if (string? _path10985_) _path10985_ '#f))))
    (define gx#import-module__%
      (lambda (_path10957_ _reload?10958_ _eval?10959_)
        (let ((_ctx10961_
               ((gx#current-expander-module-import)
                _path10957_
                _reload?10958_)))
          (if (and _ctx10961_ _eval?10959_)
              (gx#eval-module _ctx10961_)
              '#!void)
          _ctx10961_)))
    (define gx#import-module__0
      (lambda (_path10966_)
        (let* ((_reload?10968_ '#f) (_eval?10970_ '#f))
          (gx#import-module__% _path10966_ _reload?10968_ _eval?10970_))))
    (define gx#import-module__1
      (lambda (_path10972_ _reload?10973_)
        (let ((_eval?10975_ '#f))
          (gx#import-module__% _path10972_ _reload?10973_ _eval?10975_))))
    (define gx#import-module
      (lambda _g16142_
        (let ((_g16141_ (##length _g16142_)))
          (cond ((##fx= _g16141_ 1) (apply gx#import-module__0 _g16142_))
                ((##fx= _g16141_ 2) (apply gx#import-module__1 _g16142_))
                ((##fx= _g16141_ 3) (apply gx#import-module__% _g16142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g16142_))))))
    (define gx#eval-module
      (lambda (_mod10954_) ((gx#current-expander-module-eval) _mod10954_)))
    (define gx#core-eval-module
      (lambda (_obj10939_)
        (letrec ((_force-e10941_
                  (lambda (_getf10950_ _e10951_)
                    (call-with-parameters
                     (lambda () (force (_getf10950_ _e10951_)))
                     gx#current-expander-context
                     _e10951_
                     gx#current-expander-phi
                     '0))))
          (let _recur10943_ ((_e10945_ _obj10939_))
            (if (##structure-instance-of? _e10945_ 'gx#module-context::t)
                (begin
                  (let ((_$e10947_ (gx#core-context-prelude__% _e10945_)))
                    (if _$e10947_ (_recur10943_ _$e10947_) '#!void))
                  (_force-e10941_ gx#module-context-e _e10945_))
                (if (##structure-instance-of? _e10945_ 'gx#prelude-context::t)
                    (_force-e10941_ gx#prelude-context-e _e10945_)
                    (if (gx#stx-string? _e10945_)
                        (_recur10943_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e10945_)))
                        (if (gx#core-library-module-path? _e10945_)
                            (_recur10943_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e10945_)))
                            (error '"Cannot eval module" _obj10939_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx10922_)
        (let _lp10924_ ((_e10926_ _ctx10922_))
          (if (or (##structure-instance-of? _e10926_ 'gx#module-context::t)
                  (##structure-instance-of? _e10926_ 'gx#local-context::t))
              (_lp10924_
               (##unchecked-structure-ref _e10926_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e10926_ 'gx#prelude-context::t)
                  _e10926_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx10935_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx10935_))))
    (define gx#core-context-prelude
      (lambda _g16144_
        (let ((_g16143_ (##length _g16144_)))
          (cond ((##fx= _g16143_ 0)
                 (apply gx#core-context-prelude__0 _g16144_))
                ((##fx= _g16143_ 1)
                 (apply gx#core-context-prelude__% _g16144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g16144_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx10912_)
        (let* ((_ht10914_ (gx#current-expander-module-registry))
               (_$e10916_ (table-ref _ht10914_ _ctx10912_ '#f)))
          (if _$e10916_
              (values _$e10916_)
              (let ((_pre10919_
                     (let ((__obj16135 (make-object gx#prelude-context::t '8)))
                       (gx#prelude-context:::init!__0 __obj16135 _ctx10912_)
                       __obj16135)))
                (table-set! _ht10914_ _ctx10912_ _pre10919_)
                _pre10919_)))))
    (define gx#core-import-module__%
      (lambda (_rpath10793_ _reload?10794_)
        (letrec ((_import-source10796_
                  (lambda (_path10881_)
                    (if (member _path10881_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path10881_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g16145_ (gx#core-read-module _path10881_)))
                         (begin
                           (let ((_g16146_
                                  (if (##values? _g16145_)
                                      (##vector-length _g16145_)
                                      1)))
                             (if (not (##fx= _g16146_ 4))
                                 (error "Context expects 4 values" _g16146_)))
                           (let ((_pre10884_ (##vector-ref _g16145_ 0))
                                 (_id10885_ (##vector-ref _g16145_ 1))
                                 (_ns10886_ (##vector-ref _g16145_ 2))
                                 (_body10887_ (##vector-ref _g16145_ 3)))
                             (let* ((_prelude10892_
                                     (if (##structure-instance-of?
                                          _pre10884_
                                          'gx#prelude-context::t)
                                         _pre10884_
                                         (if (##structure-instance-of?
                                              _pre10884_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre10884_)
                                             (if (string? _pre10884_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre10884_))
                                                 (if (not _pre10884_)
                                                     (let ((_$e10889_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e10889_
                                                           _$e10889_
                                                           (let ((__obj16136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj16136 '#f)
                     __obj16136)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath10793_
                                                            _pre10884_))))))
                                    (_ctx10894_
                                     (let ((__obj16137
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (gx#module-context:::init!
                                        __obj16137
                                        _id10885_
                                        _prelude10892_
                                        _ns10886_
                                        _path10881_)
                                       __obj16137))
                                    (_body10896_
                                     (gx#core-expand-module-begin
                                      _body10887_
                                      _ctx10894_))
                                    (_body10898_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body10896_)
                                      _path10881_
                                      _ctx10894_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx10894_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body10898_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx10894_
                                _body10898_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path10881_
                                _ctx10894_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id10885_
                                _ctx10894_)
                               _ctx10894_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path10881_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule10797_
                  (lambda (_rpath10809_)
                    (let* ((_rpath1081010817_ _rpath10809_)
                           (_E1081210821_
                            (lambda ()
                              (error '"No clause matching" _rpath1081010817_)))
                           (_K1081310869_
                            (lambda (_refs10824_ _origin10825_)
                              (let ((_ctx10827_
                                     (if _origin10825_
                                         (gx#core-import-module__%
                                          _origin10825_
                                          _reload?10794_)
                                         (gx#current-expander-context))))
                                (let _lp10829_ ((_rest10831_ _refs10824_)
                                                (_ctx10832_ _ctx10827_))
                                  (let* ((_rest1083310841_ _rest10831_)
                                         (_else1083510849_
                                          (lambda () _ctx10832_))
                                         (_K1083710857_
                                          (lambda (_rest10852_ _id10853_)
                                            (let ((_bind10855_
                                                   (gx#resolve-identifier__%
                                                    _id10853_
                                                    '0
                                                    _ctx10832_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind10855_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind10855_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp10829_
                                                   _rest10852_
                                                   (##unchecked-structure-ref
                                                    _bind10855_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath10809_
                                                         _id10853_
                                                         _bind10855_))))))
                                    (if (##pair? _rest1083310841_)
                                        (let ((_hd1083810860_
                                               (##car _rest1083310841_))
                                              (_tl1083910862_
                                               (##cdr _rest1083310841_)))
                                          (let* ((_id10865_ _hd1083810860_)
                                                 (_rest10867_ _tl1083910862_))
                                            (_K1083710857_
                                             _rest10867_
                                             _id10865_)))
                                        (_else1083510849_))))))))
                      (if (##pair? _rpath1081010817_)
                          (let ((_hd1081410872_ (##car _rpath1081010817_))
                                (_tl1081510874_ (##cdr _rpath1081010817_)))
                            (let* ((_origin10877_ _hd1081410872_)
                                   (_refs10879_ _tl1081510874_))
                              (_K1081310869_ _refs10879_ _origin10877_)))
                          (_E1081210821_))))))
          (let ((_$e10799_
                 (if (not _reload?10794_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath10793_
                      '#f)
                     '#f)))
            (if _$e10799_
                (values _$e10799_)
                (if (list? _rpath10793_)
                    (_import-submodule10797_ _rpath10793_)
                    (if (gx#core-library-module-path? _rpath10793_)
                        (let ((_ctx10802_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath10793_)
                                _reload?10794_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath10793_
                           _ctx10802_)
                          _ctx10802_)
                        (let* ((_npath10804_ (path-normalize _rpath10793_))
                               (_$e10806_
                                (if (not _reload?10794_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath10804_
                                     '#f)
                                    '#f)))
                          (if _$e10806_
                              (values _$e10806_)
                              (_import-source10796_ _npath10804_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath10905_)
        (let ((_reload?10907_ '#f))
          (gx#core-import-module__% _rpath10905_ _reload?10907_))))
    (define gx#core-import-module
      (lambda _g16148_
        (let ((_g16147_ (##length _g16148_)))
          (cond ((##fx= _g16147_ 1) (apply gx#core-import-module__0 _g16148_))
                ((##fx= _g16147_ 2) (apply gx#core-import-module__% _g16148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g16148_))))))
    (define gx#core-read-module
      (lambda (_path10787_)
        (with-exception-catcher
         (lambda (_exn10789_)
           (if (and (datum-parsing-exception? _exn10789_)
                    (eq? (datum-parsing-exception-filepos _exn10789_) '0))
               (gx#core-read-module/lang _path10787_)
               (raise _exn10789_)))
         (lambda () (gx#core-read-module/sexp _path10787_)))))
    (define gx#core-read-module/sexp
      (lambda (_path10650_)
        (let _lp10652_ ((_body10654_ (read-syntax-from-file _path10650_))
                        (_pre10655_ '#f)
                        (_ns10656_ '#f)
                        (_pkg10657_ '#f))
          (let* ((_e1065810682_ _body10654_)
                 (_E1067410704_
                  (lambda ()
                    (let ((_g16149_
                           (if _pkg10657_
                               (values _pre10655_ _ns10656_ _pkg10657_)
                               (gx#core-read-module-package
                                _path10650_
                                _pre10655_
                                _ns10656_))))
                      (begin
                        (let ((_g16150_
                               (if (##values? _g16149_)
                                   (##vector-length _g16149_)
                                   1)))
                          (if (not (##fx= _g16150_ 3))
                              (error "Context expects 3 values" _g16150_)))
                        (let ((_pre10686_ (##vector-ref _g16149_ 0))
                              (_ns10687_ (##vector-ref _g16149_ 1))
                              (_pkg10688_ (##vector-ref _g16149_ 2)))
                          (let* ((_prelude10690_
                                  (if (gx#core-bound-module-prelude?
                                       _pre10686_)
                                      (gx#syntax-local-e__0 _pre10686_)
                                      (if (gx#core-library-module-path?
                                           _pre10686_)
                                          (gx#core-resolve-library-module-path
                                           _pre10686_)
                                          (if (gx#stx-string? _pre10686_)
                                              (gx#core-resolve-module-path__%
                                               _pre10686_
                                               _path10650_)
                                              (gx#stx-e _pre10686_)))))
                                 (_path-id10692_
                                  (gx#core-module-path->namespace _path10650_))
                                 (_pkg-id10694_
                                  (if _pkg10688_
                                      (string-append
                                       _pkg10688_
                                       '"/"
                                       _path-id10692_)
                                      _path-id10692_))
                                 (_module-id10696_
                                  (string->symbol _pkg-id10694_))
                                 (_module-ns10701_
                                  (if (eq? _ns10687_ '#!void)
                                      '#f
                                      (let ((_$e10698_ _ns10687_))
                                        (if _$e10698_
                                            _$e10698_
                                            _pkg-id10694_)))))
                            (values _prelude10690_
                                    _module-id10696_
                                    _module-ns10701_
                                    _body10654_)))))))
                 (_E1066710733_
                  (lambda ()
                    (if (gx#stx-pair? _e1065810682_)
                        (let ((_e1067510708_ (gx#syntax-e _e1065810682_)))
                          (let ((_hd1067610711_ (##car _e1067510708_))
                                (_tl1067710713_ (##cdr _e1067510708_)))
                            (if (eq? (gx#stx-e _hd1067610711_) 'package:)
                                (if (gx#stx-pair? _tl1067710713_)
                                    (let ((_e1067810716_
                                           (gx#syntax-e _tl1067710713_)))
                                      (let ((_hd1067910719_
                                             (##car _e1067810716_))
                                            (_tl1068010721_
                                             (##cdr _e1067810716_)))
                                        (let* ((_pkg10724_ _hd1067910719_)
                                               (_rest10726_ _tl1068010721_))
                                          (if '#t
                                              (let ((_pkg10731_
                                                     (if (gx#identifier?
                                                          _pkg10724_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg10724_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg10724_)
                         (gx#stx-false? _pkg10724_))
                     (gx#stx-e _pkg10724_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg10724_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp10652_
                                                 _rest10726_
                                                 _pre10655_
                                                 _ns10656_
                                                 _pkg10731_))
                                              (_E1067410704_)))))
                                    (_E1067410704_))
                                (_E1067410704_))))
                        (_E1067410704_))))
                 (_E1066010759_
                  (lambda ()
                    (if (gx#stx-pair? _e1065810682_)
                        (let ((_e1066810737_ (gx#syntax-e _e1065810682_)))
                          (let ((_hd1066910740_ (##car _e1066810737_))
                                (_tl1067010742_ (##cdr _e1066810737_)))
                            (if (eq? (gx#stx-e _hd1066910740_) 'namespace:)
                                (if (gx#stx-pair? _tl1067010742_)
                                    (let ((_e1067110745_
                                           (gx#syntax-e _tl1067010742_)))
                                      (let ((_hd1067210748_
                                             (##car _e1067110745_))
                                            (_tl1067310750_
                                             (##cdr _e1067110745_)))
                                        (let* ((_ns10753_ _hd1067210748_)
                                               (_rest10755_ _tl1067310750_))
                                          (if '#t
                                              (let ((_ns10757_
                                                     (if (gx#identifier?
                                                          _ns10753_)
                                                         (symbol->string
                                                          (gx#stx-e _ns10753_))
                                                         (if (gx#stx-string?
                                                              _ns10753_)
                                                             (gx#stx-e
                                                              _ns10753_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns10753_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns10753_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp10652_
                                                 _rest10755_
                                                 _pre10655_
                                                 _ns10757_
                                                 _pkg10657_))
                                              (_E1066710733_)))))
                                    (_E1066710733_))
                                (_E1066710733_))))
                        (_E1066710733_))))
                 (_E1065910783_
                  (lambda ()
                    (if (gx#stx-pair? _e1065810682_)
                        (let ((_e1066110763_ (gx#syntax-e _e1065810682_)))
                          (let ((_hd1066210766_ (##car _e1066110763_))
                                (_tl1066310768_ (##cdr _e1066110763_)))
                            (if (eq? (gx#stx-e _hd1066210766_) 'prelude:)
                                (if (gx#stx-pair? _tl1066310768_)
                                    (let ((_e1066410771_
                                           (gx#syntax-e _tl1066310768_)))
                                      (let ((_hd1066510774_
                                             (##car _e1066410771_))
                                            (_tl1066610776_
                                             (##cdr _e1066410771_)))
                                        (let* ((_prelude10779_ _hd1066510774_)
                                               (_rest10781_ _tl1066610776_))
                                          (if '#t
                                              (_lp10652_
                                               _rest10781_
                                               _prelude10779_
                                               _ns10656_
                                               _pkg10657_)
                                              (_E1066010759_)))))
                                    (_E1066010759_))
                                (_E1066010759_))))
                        (_E1066010759_)))))
            (_E1065910783_)))))
    (define gx#core-read-module/lang
      (lambda (_path10477_)
        (letrec ((_default-read-module-body10479_
                  (lambda (_inp10642_)
                    (let _lp10644_ ((_body10646_ '()))
                      (let ((_next10648_ (read-syntax _inp10642_)))
                        (if (eof-object? _next10648_)
                            (reverse _body10646_)
                            (_lp10644_ (cons _next10648_ _body10646_)))))))
                 (_read-body10480_
                  (lambda (_inp10561_
                           _pre10562_
                           _ns10563_
                           _pkg10564_
                           _args10565_)
                    (let ((_g16151_
                           (if _pkg10564_
                               (values _pre10562_ _ns10563_ _pkg10564_)
                               (gx#core-read-module-package
                                _path10477_
                                _pre10562_
                                _ns10563_))))
                      (begin
                        (let ((_g16152_
                               (if (##values? _g16151_)
                                   (##vector-length _g16151_)
                                   1)))
                          (if (not (##fx= _g16152_ 3))
                              (error "Context expects 3 values" _g16152_)))
                        (let ((_pre10567_ (##vector-ref _g16151_ 0))
                              (_ns10568_ (##vector-ref _g16151_ 1))
                              (_pkg10569_ (##vector-ref _g16151_ 2)))
                          (let* ((_prelude10571_
                                  (gx#import-module__0 _pre10567_))
                                 (_read-module-body10625_
                                  (let ((_$e10617_
                                         (find (lambda (_e1057210574_)
                                                 (let* ((_g1057610586_
                                                         _e1057210574_)
                                                        (_else1057810594_
                                                         (lambda () '#f))
                                                        (_K1058010598_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g1057610586_
                                                        'gx#module-export::t)
                                                       (let* ((_e1058110601_
                                                               (##vector-ref
                                                                _g1057610586_
                                                                '1))
                                                              (_e1058210604_
                                                               (##vector-ref
                                                                _g1057610586_
                                                                '2))
                                                              (_e1058310607_
                                                               (##vector-ref
                                                                _g1057610586_
                                                                '3)))
                                                         (if (##eq? _e1058310607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1058410610_ (##vector-ref _g1057610586_ '4)))
                       (if ((lambda (_g1061210614_)
                              (eq? _g1061210614_ 'read-module-body))
                            _e1058410610_)
                           (_K1058010598_)
                           (_else1057810594_)))
                     (_else1057810594_)))
               (_else1057810594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude10571_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e10617_
                                        ((lambda (_xport10620_)
                                           (let ((_proc10623_
                                                  (with-exception-catcher
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport10620_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc10623_)
                                                 _proc10623_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path10477_
                                                  _pre10567_
                                                  _proc10623_))))
                                         _$e10617_)
                                        _default-read-module-body10479_)))
                                 (_path-id10627_
                                  (gx#core-module-path->namespace _path10477_))
                                 (_pkg-id10629_
                                  (if _pkg10569_
                                      (string-append
                                       _pkg10569_
                                       '"/"
                                       _path-id10627_)
                                      _path-id10627_))
                                 (_module-id10631_
                                  (string->symbol _pkg-id10629_))
                                 (_module-ns10636_
                                  (let ((_$e10633_ _ns10568_))
                                    (if _$e10633_ _$e10633_ _pkg-id10629_)))
                                 (_body10639_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body10625_ _inp10561_))
                                   gx#current-module-reader-path
                                   _path10477_
                                   gx#current-module-reader-args
                                   _args10565_)))
                            (values _prelude10571_
                                    _module-id10631_
                                    _module-ns10636_
                                    _body10639_)))))))
                 (_string-e10481_
                  (lambda (_obj10558_ _what10559_)
                    (if (string? _obj10558_)
                        _obj10558_
                        (if (symbol? _obj10558_)
                            (symbol->string _obj10558_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what10559_)
                             _path10477_
                             _obj10558_)))))
                 (_read-lang-args10482_
                  (lambda (_inp10513_ _args10514_)
                    (let* ((_args1051510523_ _args10514_)
                           (_else1051710531_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path10477_)))
                           (_K1051910546_
                            (lambda (_args10534_ _prelude10535_)
                              (let* ((_pkg10537_ (pgetq 'package: _args10534_))
                                     (_pkg10539_
                                      (if _pkg10537_
                                          (_string-e10481_
                                           _pkg10537_
                                           '"package")
                                          '#f))
                                     (_ns10541_
                                      (pgetq 'namespace: _args10534_))
                                     (_ns10543_
                                      (if _ns10541_
                                          (_string-e10481_
                                           _ns10541_
                                           '"namespace")
                                          '#f)))
                                (_read-body10480_
                                 _inp10513_
                                 _prelude10535_
                                 _ns10543_
                                 _pkg10539_
                                 _args10534_)))))
                      (if (##pair? _args1051510523_)
                          (let ((_hd1052010549_ (##car _args1051510523_))
                                (_tl1052110551_ (##cdr _args1051510523_)))
                            (let* ((_prelude10554_ _hd1052010549_)
                                   (_args10556_ _tl1052110551_))
                              (_K1051910546_ _args10556_ _prelude10554_)))
                          (_else1051710531_)))))
                 (_read-lang10483_
                  (lambda (_inp10488_)
                    (let* ((_head10490_ (read-line _inp10488_))
                           (_$e10492_ (string-index _head10490_ '#\space)))
                      (if _$e10492_
                          ((lambda (_ix10495_)
                             (let ((_lang10497_
                                    (substring _head10490_ '0 _ix10495_)))
                               (if (equal? _lang10497_ '"#lang")
                                   (let* ((_rest10499_
                                           (substring
                                            _head10490_
                                            (fx+ _ix10495_ '1)
                                            (string-length _head10490_)))
                                          (_args10510_
                                           (with-exception-catcher
                                            (lambda (_g1050010502_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path10477_
                                               _g1050010502_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest10499_
                                               (lambda (_g1050510507_)
                                                 (read-all
                                                  _g1050510507_
                                                  read)))))))
                                     (_read-lang-args10482_
                                      _inp10488_
                                      _args10510_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path10477_))))
                           _$e10492_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path10477_)))))
                 (_read-e10484_
                  (lambda (_inp10486_)
                    (if (eq? (peek-char _inp10486_) '#\#)
                        (_read-lang10483_ _inp10486_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path10477_)))))
          (gx#call-with-input-source-file _path10477_ _read-e10484_))))
    (define gx#core-read-module-package
      (lambda (_path10431_ _pre10432_ _ns10433_)
        (letrec ((_string-e10435_
                  (lambda (_e10475_)
                    (if (symbol? _e10475_)
                        (symbol->string _e10475_)
                        (if (string? _e10475_)
                            _e10475_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e10475_))))))
          (let _lp10437_ ((_dir10439_ (path-directory _path10431_))
                          (_pkg-path10440_ '()))
            (let ((_gerbil.pkg10442_ (path-expand '"gerbil.pkg" _dir10439_)))
              (if (file-exists? _gerbil.pkg10442_)
                  (let ((_plist10444_
                         (gx#core-library-package-plist__% _dir10439_ '#t)))
                    (if (null? _plist10444_)
                        (let ((_pkg10446_
                               (if (not (null? _pkg-path10440_))
                                   (string-join _pkg-path10440_ '"/")
                                   '#f)))
                          (values _pre10432_ _ns10433_ _pkg10446_))
                        (if (list? _plist10444_)
                            (let* ((_root10448_ (pgetq 'package: _plist10444_))
                                   (_pkg10452_
                                    (let ((_pkg-path10450_
                                           (if _root10448_
                                               (cons (_string-e10435_
                                                      _root10448_)
                                                     _pkg-path10440_)
                                               _pkg-path10440_)))
                                      (if (not (null? _pkg-path10450_))
                                          (string-join _pkg-path10450_ '"/")
                                          '#f)))
                                   (_ns10459_
                                    (let ((_ns10457_
                                           (let ((_$e10454_ _ns10433_))
                                             (if _$e10454_
                                                 _$e10454_
                                                 (pgetq 'namespace:
                                                        _plist10444_)))))
                                      (if _ns10457_
                                          (_string-e10435_ _ns10457_)
                                          '#f)))
                                   (_pre10464_
                                    (let ((_$e10461_ _pre10432_))
                                      (if _$e10461_
                                          _$e10461_
                                          (pgetq 'prelude: _plist10444_)))))
                              (values _pre10464_ _ns10459_ _pkg10452_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist10444_))))
                  (let ((_dir*10467_
                         (path-strip-trailing-directory-separator _dir10439_)))
                    (if (or (string-empty? _dir*10467_)
                            (equal? _dir10439_ _dir*10467_))
                        (values _pre10432_ _ns10433_ '#f)
                        (let ((_xpath10472_ (path-strip-directory _dir*10467_))
                              (_xdir10473_ (path-directory _dir*10467_)))
                          (_lp10437_
                           _xdir10473_
                           (cons _xpath10472_ _pkg-path10440_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path10429_)
        (path-strip-extension (path-strip-directory _path10429_))))
    (define gx#core-module-path->id
      (lambda (_path10427_)
        (string->symbol (gx#core-module-path->namespace _path10427_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path10406_ _rel10407_)
        (let* ((_path10409_ (gx#stx-e _stx-path10406_))
               (_path10411_
                (if (string-empty? (path-extension _path10409_))
                    (string-append _path10409_ '".ss")
                    _path10409_)))
          (gx#core-resolve-path__%
           _path10411_
           (let ((_$e10414_ (gx#stx-source _stx-path10406_)))
             (if _$e10414_ _$e10414_ _rel10407_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path10420_)
        (let ((_rel10422_ '#f))
          (gx#core-resolve-module-path__% _stx-path10420_ _rel10422_))))
    (define gx#core-resolve-module-path
      (lambda _g16154_
        (let ((_g16153_ (##length _g16154_)))
          (cond ((##fx= _g16153_ 1)
                 (apply gx#core-resolve-module-path__0 _g16154_))
                ((##fx= _g16153_ 2)
                 (apply gx#core-resolve-module-path__% _g16154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g16154_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath10292_)
        (let* ((_spath10294_ (symbol->string (gx#stx-e _libpath10292_)))
               (_spath10296_
                (substring _spath10294_ '1 (string-length _spath10294_)))
               (_ext10298_ (path-extension _spath10296_))
               (_ssi10300_
                (if (string-empty? _ext10298_)
                    (string-append _spath10296_ '".ssi")
                    (string-append
                     (path-strip-extension _spath10296_)
                     '".ssi")))
               (_srcs10304_
                (if (string-empty? _ext10298_)
                    (map (lambda (_ext10302_)
                           (string-append _spath10296_ _ext10302_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath10296_ '()))))
          (let _lp10307_ ((_rest10309_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest1031010319_ _rest10309_)
                   (_E1031310323_
                    (lambda ()
                      (error '"No clause matching" _rest1031010319_))))
              (let ((_K1031510393_
                     (lambda (_rest10334_ _dir10335_)
                       (letrec ((_resolve10337_
                                 (lambda (_ssi10349_ _srcs10350_)
                                   (let ((_compiled-path10352_
                                          (path-expand _ssi10349_ _dir10335_)))
                                     (if (file-exists? _compiled-path10352_)
                                         (path-normalize _compiled-path10352_)
                                         (let _lpr10354_ ((_rest-src10356_
                                                           _srcs10350_))
                                           (let* ((_rest-src1035710365_
                                                   _rest-src10356_)
                                                  (_else1035910373_
                                                   (lambda ()
                                                     (_lp10307_ _rest10334_)))
                                                  (_K1036110381_
                                                   (lambda (_rest-src10376_
                                                            _src10377_)
                                                     (let ((_src-path10379_
                                                            (path-expand
                                                             _src10377_
                                                             _dir10335_)))
                                                       (if (file-exists?
                                                            _src-path10379_)
                                                           (path-normalize
                                                            _src-path10379_)
                                                           (_lpr10354_
                                                            _rest-src10376_))))))
                                             (if (##pair? _rest-src1035710365_)
                                                 (let ((_hd1036210384_
                                                        (##car _rest-src1035710365_))
                                                       (_tl1036310386_
                                                        (##cdr _rest-src1035710365_)))
                                                   (let* ((_src10389_
                                                           _hd1036210384_)
                                                          (_rest-src10391_
                                                           _tl1036310386_))
                                                     (_K1036110381_
                                                      _rest-src10391_
                                                      _src10389_)))
                                                 (_else1035910373_)))))))))
                         (let ((_$e10339_
                                (gx#core-library-package-path-prefix
                                 _dir10335_)))
                           (if _$e10339_
                               ((lambda (_prefix10342_)
                                  (if (string-prefix?
                                       _prefix10342_
                                       _spath10296_)
                                      (let ((_ssi10346_
                                             (substring
                                              _ssi10300_
                                              (string-length _prefix10342_)
                                              (string-length _ssi10300_)))
                                            (_srcs10347_
                                             (map (lambda (_src10344_)
                                                    (substring
                                                     _src10344_
                                                     (string-length
                                                      _prefix10342_)
                                                     (string-length
                                                      _src10344_)))
                                                  _srcs10304_)))
                                        (_resolve10337_
                                         _ssi10346_
                                         _srcs10347_))
                                      (_lp10307_ _rest10334_)))
                                _$e10339_)
                               (_resolve10337_ _ssi10300_ _srcs10304_))))))
                    (_K1031410328_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath10292_))))
                (let ((_try-match1031210331_
                       (lambda ()
                         (if (##null? _rest1031010319_)
                             (_K1031410328_)
                             (_E1031310323_)))))
                  (if (##pair? _rest1031010319_)
                      (let ((_tl1031710398_ (##cdr _rest1031010319_))
                            (_hd1031610396_ (##car _rest1031010319_)))
                        (let ((_dir10401_ _hd1031610396_)
                              (_rest10403_ _tl1031710398_))
                          (_K1031510393_ _rest10403_ _dir10401_)))
                      (_try-match1031210331_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath10265_)
        (letrec ((_resolve10267_
                  (lambda (_path10284_ _base10285_)
                    (let ((_$e10287_ (string-rindex _base10285_ '#\/)))
                      (if _$e10287_
                          ((lambda (_idx10290_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base10285_ '0 _idx10290_)
                                '"/"
                                _path10284_))))
                           _$e10287_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path10284_))))))))
          (let ((_spath10269_ (symbol->string (gx#stx-e _modpath10265_)))
                (_mod10270_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod10270_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath10265_))
            (let ((_mpath10272_
                   (symbol->string
                    (##structure-ref
                     _mod10270_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp10274_ ((_spath10276_ _spath10269_)
                              (_mpath10277_ _mpath10272_))
                (if (string-prefix? '"../" _spath10276_)
                    (let ((_$e10279_ (string-rindex _mpath10277_ '#\/)))
                      (if _$e10279_
                          ((lambda (_idx10282_)
                             (_lp10274_
                              (substring
                               _spath10276_
                               '3
                               (string-length _spath10276_))
                              (substring _mpath10277_ '0 _idx10282_)))
                           _$e10279_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath10265_)))
                    (if (string-prefix? '"./" _spath10276_)
                        (_lp10274_
                         (substring
                          _spath10276_
                          '2
                          (string-length _spath10276_))
                         _mpath10277_)
                        (_resolve10267_ _spath10276_ _mpath10277_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir10258_)
        (let ((_$e10260_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir10258_))))
          (if _$e10260_
              ((lambda (_pkg10263_)
                 (string-append (symbol->string _pkg10263_) '"/"))
               _$e10260_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir10230_ _exists?10231_)
        (let* ((_cache10233_ (gx#core-library-package-cache))
               (_$e10235_ (table-ref _cache10233_ _dir10230_ '#f)))
          (if _$e10235_
              (values _$e10235_)
              (let* ((_gerbil.pkg10238_ (path-expand '"gerbil.pkg" _dir10230_))
                     (_plist10245_
                      (if (or _exists?10231_ (file-exists? _gerbil.pkg10238_))
                          (let ((_e10243_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg10238_
                                  read)))
                            (if (eof-object? _e10243_)
                                '()
                                (if (list? _e10243_)
                                    _e10243_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg10238_
                                     _e10243_))))
                          '())))
                (table-set! _cache10233_ _dir10230_ _plist10245_)
                _plist10245_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir10251_)
        (let ((_exists?10253_ '#f))
          (gx#core-library-package-plist__% _dir10251_ _exists?10253_))))
    (define gx#core-library-package-plist
      (lambda _g16156_
        (let ((_g16155_ (##length _g16156_)))
          (cond ((##fx= _g16155_ 1)
                 (apply gx#core-library-package-plist__0 _g16156_))
                ((##fx= _g16155_ 2)
                 (apply gx#core-library-package-plist__% _g16156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g16156_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e10224_ (gx#current-expander-module-library-package-cache)))
          (if _$e10224_
              (values _$e10224_)
              (let ((_cache10227_ (make-table)))
                (gx#current-expander-module-library-package-cache _cache10227_)
                _cache10227_)))))
    (define gx#core-library-module-path?
      (lambda (_stx10221_) (gx#core-special-module-path? _stx10221_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx10219_) (gx#core-special-module-path? _stx10219_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx10214_ _char10215_)
        (if (gx#identifier? _stx10214_)
            (if (interned-symbol? (gx#stx-e _stx10214_))
                (let ((_str10217_ (symbol->string (gx#stx-e _stx10214_))))
                  (if (fx> (string-length _str10217_) '1)
                      (eq? (string-ref _str10217_ '0) _char10215_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx10208_)
        (gx#core-bound-identifier?__%
         _stx10208_
         (lambda (_g1020910211_)
           (gx#expander-binding?__% _g1020910211_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx10202_)
        (gx#core-bound-identifier?__%
         _stx10202_
         (lambda (_g1020310205_)
           (gx#expander-binding?__% _g1020310205_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx10189_)
        (letrec ((_module-prelude?10191_
                  (lambda (_e10197_)
                    (let ((_$e10199_
                           (##structure-instance-of?
                            _e10197_
                            'gx#module-context::t)))
                      (if _$e10199_
                          _$e10199_
                          (##structure-instance-of?
                           _e10197_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx10189_
           (lambda (_g1019210194_)
             (gx#expander-binding?__%
              _g1019210194_
              _module-prelude?10191_))))))
    (define gx#core-bind-import!__%
      (lambda (_in10119_ _ctx10120_ _force-weak?10121_)
        (let* ((_in1012210131_ _in10119_)
               (_E1012410135_
                (lambda () (error '"No clause matching" _in1012210131_)))
               (_K1012510148_
                (lambda (_weak?10138_ _phi10139_ _key10140_ _source10141_)
                  (gx#core-bind!__%
                   _key10140_
                   (let ((_e10143_
                          (gx#core-resolve-module-export _source10141_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e10143_ '1 gx#binding::t '#f)
                      _key10140_
                      _phi10139_
                      _e10143_
                      (##unchecked-structure-ref
                       _source10141_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e10145_ _force-weak?10121_))
                        (if _$e10145_ _$e10145_ _weak?10138_))))
                   gx#core-context-rebind?
                   _phi10139_
                   _ctx10120_))))
          (if (##structure-direct-instance-of?
               _in1012210131_
               'gx#module-import::t)
              (let* ((_e1012610151_ (##vector-ref _in1012210131_ '1))
                     (_source10154_ _e1012610151_)
                     (_e1012710156_ (##vector-ref _in1012210131_ '2))
                     (_key10159_ _e1012710156_)
                     (_e1012810161_ (##vector-ref _in1012210131_ '3))
                     (_phi10164_ _e1012810161_)
                     (_e1012910166_ (##vector-ref _in1012210131_ '4))
                     (_weak?10169_ _e1012910166_))
                (_K1012510148_
                 _weak?10169_
                 _phi10164_
                 _key10159_
                 _source10154_))
              (_E1012410135_)))))
    (define gx#core-bind-import!__0
      (lambda (_in10174_)
        (let* ((_ctx10176_ (gx#current-expander-context))
               (_force-weak?10178_ '#f))
          (gx#core-bind-import!__% _in10174_ _ctx10176_ _force-weak?10178_))))
    (define gx#core-bind-import!__1
      (lambda (_in10180_ _ctx10181_)
        (let ((_force-weak?10183_ '#f))
          (gx#core-bind-import!__% _in10180_ _ctx10181_ _force-weak?10183_))))
    (define gx#core-bind-import!
      (lambda _g16158_
        (let ((_g16157_ (##length _g16158_)))
          (cond ((##fx= _g16157_ 1) (apply gx#core-bind-import!__0 _g16158_))
                ((##fx= _g16157_ 2) (apply gx#core-bind-import!__1 _g16158_))
                ((##fx= _g16157_ 3) (apply gx#core-bind-import!__% _g16158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g16158_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in10105_ _ctx10106_)
        (gx#core-bind-import!__% _in10105_ _ctx10106_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in10111_)
        (let ((_ctx10113_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in10111_ _ctx10113_))))
    (define gx#core-bind-weak-import!
      (lambda _g16160_
        (let ((_g16159_ (##length _g16160_)))
          (cond ((##fx= _g16159_ 1)
                 (apply gx#core-bind-weak-import!__0 _g16160_))
                ((##fx= _g16159_ 2)
                 (apply gx#core-bind-weak-import!__% _g16160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g16160_))))))
    (define gx#core-resolve-module-export
      (lambda (_out9996_)
        (letrec ((_subst9998_
                  (lambda (_key10044_)
                    (let* ((_key1004510053_ _key10044_)
                           (_else1004710061_ (lambda () _key10044_))
                           (_K1004910092_
                            (lambda (_mark10064_ _id10065_)
                              (let* ((_mark1006610072_ _mark10064_)
                                     (_E1006810076_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark1006610072_)))
                                     (_K1006910084_
                                      (lambda (_subst10079_)
                                        (let ((_$e10081_
                                               (if _subst10079_
                                                   (table-ref
                                                    _subst10079_
                                                    _id10065_
                                                    '#f)
                                                   '#f)))
                                          (if _$e10081_
                                              _$e10081_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key10044_))))))
                                (if (##structure-instance-of?
                                     _mark1006610072_
                                     'gx#expander-mark::t)
                                    (let* ((_e1007010087_
                                            (##vector-ref _mark1006610072_ '1))
                                           (_subst10090_ _e1007010087_))
                                      (_K1006910084_ _subst10090_))
                                    (_E1006810076_))))))
                      (if (##pair? _key1004510053_)
                          (let ((_hd1005010095_ (##car _key1004510053_))
                                (_tl1005110097_ (##cdr _key1004510053_)))
                            (let* ((_id10100_ _hd1005010095_)
                                   (_mark10102_ _tl1005110097_))
                              (_K1004910092_ _mark10102_ _id10100_)))
                          (_else1004710061_))))))
          (let* ((_out999910009_ _out9996_)
                 (_E1000110013_
                  (lambda () (error '"No clause matching" _out999910009_)))
                 (_K1000210020_
                  (lambda (_phi10016_ _key10017_ _ctx10018_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx10018_ _phi10016_)
                     (_subst9998_ _key10017_)))))
            (if (##structure-direct-instance-of?
                 _out999910009_
                 'gx#module-export::t)
                (let* ((_e1000310023_ (##vector-ref _out999910009_ '1))
                       (_ctx10026_ _e1000310023_)
                       (_e1000410028_ (##vector-ref _out999910009_ '2))
                       (_key10031_ _e1000410028_)
                       (_e1000510033_ (##vector-ref _out999910009_ '3))
                       (_phi10036_ _e1000510033_)
                       (_e1000610038_ (##vector-ref _out999910009_ '4))
                       (_e1000710041_ (##vector-ref _out999910009_ '5)))
                  (_K1000210020_ _phi10036_ _key10031_ _ctx10026_))
                (_E1000110013_))))))
    (define gx#core-module-export->import__%
      (lambda (_out9921_ _rename9922_ _dphi9923_)
        (let* ((_out99249934_ _out9921_)
               (_E99269938_
                (lambda () (error '"No clause matching" _out99249934_)))
               (_K99279950_
                (lambda (_weak?9941_ _name9942_ _phi9943_ _key9944_ _ctx9945_)
                  (##structure
                   gx#module-import::t
                   _out9921_
                   (let ((_$e9947_ _rename9922_))
                     (if _$e9947_ _$e9947_ _name9942_))
                   (fx+ _phi9943_ _dphi9923_)
                   _weak?9941_))))
          (if (##structure-direct-instance-of?
               _out99249934_
               'gx#module-export::t)
              (let* ((_e99289953_ (##vector-ref _out99249934_ '1))
                     (_ctx9956_ _e99289953_)
                     (_e99299958_ (##vector-ref _out99249934_ '2))
                     (_key9961_ _e99299958_)
                     (_e99309963_ (##vector-ref _out99249934_ '3))
                     (_phi9966_ _e99309963_)
                     (_e99319968_ (##vector-ref _out99249934_ '4))
                     (_name9971_ _e99319968_)
                     (_e99329973_ (##vector-ref _out99249934_ '5))
                     (_weak?9976_ _e99329973_))
                (_K99279950_
                 _weak?9976_
                 _name9971_
                 _phi9966_
                 _key9961_
                 _ctx9956_))
              (_E99269938_)))))
    (define gx#core-module-export->import__0
      (lambda (_out9981_)
        (let* ((_rename9983_ '#f) (_dphi9985_ '0))
          (gx#core-module-export->import__%
           _out9981_
           _rename9983_
           _dphi9985_))))
    (define gx#core-module-export->import__1
      (lambda (_out9987_ _rename9988_)
        (let ((_dphi9990_ '0))
          (gx#core-module-export->import__%
           _out9987_
           _rename9988_
           _dphi9990_))))
    (define gx#core-module-export->import
      (lambda _g16162_
        (let ((_g16161_ (##length _g16162_)))
          (cond ((##fx= _g16161_ 1)
                 (apply gx#core-module-export->import__0 _g16162_))
                ((##fx= _g16161_ 2)
                 (apply gx#core-module-export->import__1 _g16162_))
                ((##fx= _g16161_ 3)
                 (apply gx#core-module-export->import__% _g16162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g16162_))))))
    (define gx#core-expand-module%
      (lambda (_stx9849_)
        (letrec ((_make-context9851_
                  (lambda (_id9902_)
                    (let* ((_super9904_ (gx#current-expander-context))
                           (_bind-id9906_ (gx#stx-e _id9902_))
                           (_mod-id9908_
                            (if (##structure-instance-of?
                                 _super9904_
                                 'gx#module-context::t)
                                (make-symbol
                                 (##structure-ref
                                  _super9904_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id9906_)
                                _bind-id9906_))
                           (_ns9910_ (symbol->string _mod-id9908_))
                           (_path9917_
                            (if (##structure-instance-of?
                                 _super9904_
                                 'gx#module-context::t)
                                (let ((_path9912_
                                       (##unchecked-structure-ref
                                        _super9904_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path9912_)
                                          (null? _path9912_))
                                      (cons _bind-id9906_ _path9912_)
                                      (if (not _path9912_)
                                          _bind-id9906_
                                          (cons _bind-id9906_
                                                (cons _path9912_ '())))))
                                _bind-id9906_)))
                      (let ((__obj16138
                             (make-object gx#module-context::t '11)))
                        (gx#module-context:::init!
                         __obj16138
                         _mod-id9908_
                         _super9904_
                         _ns9910_
                         _path9917_)
                        __obj16138)))))
          (let* ((_e98529862_ _stx9849_)
                 (_E98549866_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e98529862_)))
                 (_E98539898_
                  (lambda ()
                    (if (gx#stx-pair? _e98529862_)
                        (let ((_e98559870_ (gx#syntax-e _e98529862_)))
                          (let ((_hd98569873_ (##car _e98559870_))
                                (_tl98579875_ (##cdr _e98559870_)))
                            (if (gx#stx-pair? _tl98579875_)
                                (let ((_e98589878_ (gx#syntax-e _tl98579875_)))
                                  (let ((_hd98599881_ (##car _e98589878_))
                                        (_tl98609883_ (##cdr _e98589878_)))
                                    (let* ((_id9886_ _hd98599881_)
                                           (_body9888_ _tl98609883_))
                                      (if (and (gx#identifier? _id9886_)
                                               (gx#stx-list? _body9888_))
                                          (let* ((_ctx9890_
                                                  (_make-context9851_
                                                   _id9886_))
                                                 (_body9892_
                                                  (gx#core-expand-module-begin
                                                   _body9888_
                                                   _ctx9890_))
                                                 (_body9894_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body9892_)
                                                   (gx#stx-source _stx9849_))))
                                            (##unchecked-structure-set!
                                             _ctx9890_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body9894_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx9890_
                                             _body9894_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id9886_
                                             _ctx9890_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id9886_)
                                              _body9894_)
                                             (gx#stx-source _stx9849_)))
                                          (_E98549866_)))))
                                (_E98549866_))))
                        (_E98549866_)))))
            (_E98539898_)))))
    (define gx#core-expand-module-begin
      (lambda (_body9815_ _ctx9816_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx9819_
                   (gx#core-expand-head (cons '%%begin-module _body9815_)))
                  (_e98209827_ _stx9819_)
                  (_E98229831_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx9819_)))
                  (_E98219845_
                   (lambda ()
                     (if (gx#stx-pair? _e98209827_)
                         (let ((_e98239835_ (gx#syntax-e _e98209827_)))
                           (let ((_hd98249838_ (##car _e98239835_))
                                 (_tl98259840_ (##cdr _e98239835_)))
                             (if (and (gx#identifier? _hd98249838_)
                                      (gx#core-identifier=?
                                       _hd98249838_
                                       '%#begin-module))
                                 (let ((_body9843_ _tl98259840_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx9819_)
                                           _body9843_
                                           (gx#core-expand-module-body
                                            _body9843_))
                                       (_E98229831_)))
                                 (_E98229831_))))
                         (_E98229831_)))))
             (_E98219845_)))
         gx#current-expander-context
         _ctx9816_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body9611_)
        (letrec ((_expand-special9613_
                  (lambda (_hd9742_ _K9743_ _rest9744_ _r9745_)
                    (let* ((_e97469763_ _hd9742_)
                           (_E97589767_
                            (lambda ()
                              (_K9743_ _rest9744_
                                       (cons (gx#core-expand-top _hd9742_)
                                             _r9745_))))
                           (_E97489779_
                            (lambda ()
                              (if (gx#stx-pair? _e97469763_)
                                  (let ((_e97599771_
                                         (gx#syntax-e _e97469763_)))
                                    (let ((_hd97609774_ (##car _e97599771_))
                                          (_tl97619776_ (##cdr _e97599771_)))
                                      (if (and (gx#identifier? _hd97609774_)
                                               (gx#core-identifier=?
                                                _hd97609774_
                                                '%#export))
                                          (if '#t
                                              (_K9743_ _rest9744_
                                                       (cons _hd9742_ _r9745_))
                                              (_E97589767_))
                                          (_E97589767_))))
                                  (_E97589767_))))
                           (_E97479811_
                            (lambda ()
                              (if (gx#stx-pair? _e97469763_)
                                  (let ((_e97499783_
                                         (gx#syntax-e _e97469763_)))
                                    (let ((_hd97509786_ (##car _e97499783_))
                                          (_tl97519788_ (##cdr _e97499783_)))
                                      (if (and (gx#identifier? _hd97509786_)
                                               (gx#core-identifier=?
                                                _hd97509786_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl97519788_)
                                              (let ((_e97529791_
                                                     (gx#syntax-e
                                                      _tl97519788_)))
                                                (let ((_hd97539794_
                                                       (##car _e97529791_))
                                                      (_tl97549796_
                                                       (##cdr _e97529791_)))
                                                  (let ((_hd-bind9799_
                                                         _hd97539794_))
                                                    (if (gx#stx-pair?
                                                         _tl97549796_)
                                                        (let ((_e97559801_
                                                               (gx#syntax-e
                                                                _tl97549796_)))
                                                          (let ((_hd97569804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97559801_))
                        (_tl97579806_ (##cdr _e97559801_)))
                    (let ((_expr9809_ _hd97569804_))
                      (if (gx#stx-null? _tl97579806_)
                          (if (gx#core-bind-values? _hd-bind9799_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind9799_)
                                (_K9743_ _rest9744_ (cons _hd9742_ _r9745_)))
                              (_E97489779_))
                          (_E97489779_)))))
                (_E97489779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E97489779_))
                                          (_E97489779_))))
                                  (_E97489779_)))))
                      (_E97479811_))))
                 (_expand-body9614_
                  (lambda (_rbody9616_)
                    (let _lp9618_ ((_rest9620_ _rbody9616_) (_body9621_ '()))
                      (let* ((_rest96229630_ _rest9620_)
                             (_else96249638_ (lambda () _body9621_))
                             (_K96269730_
                              (lambda (_rest9641_ _hd9642_)
                                (let* ((_e96439664_ _hd9642_)
                                       (_E96599668_
                                        (lambda ()
                                          (_lp9618_
                                           _rest9641_
                                           (cons (gx#core-expand-expression
                                                  _hd9642_)
                                                 _body9621_))))
                                       (_E96559682_
                                        (lambda ()
                                          (if (gx#stx-pair? _e96439664_)
                                              (let ((_e96609672_
                                                     (gx#syntax-e
                                                      _e96439664_)))
                                                (let ((_hd96619675_
                                                       (##car _e96609672_))
                                                      (_tl96629677_
                                                       (##cdr _e96609672_)))
                                                  (let ((_form9680_
                                                         _hd96619675_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form9680_
                                                         gx#special-form-binding?)
                                                        (_lp9618_
                                                         _rest9641_
                                                         (cons _hd9642_
                                                               _body9621_))
                                                        (_E96599668_)))))
                                              (_E96599668_))))
                                       (_E96459694_
                                        (lambda ()
                                          (if (gx#stx-pair? _e96439664_)
                                              (let ((_e96569686_
                                                     (gx#syntax-e
                                                      _e96439664_)))
                                                (let ((_hd96579689_
                                                       (##car _e96569686_))
                                                      (_tl96589691_
                                                       (##cdr _e96569686_)))
                                                  (if (and (gx#identifier?
                                                            _hd96579689_)
                                                           (gx#core-identifier=?
                                                            _hd96579689_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp9618_
                                                           _rest9641_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd9642_)
                         _body9621_))
                  (_E96559682_))
              (_E96559682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E96559682_))))
                                       (_E96449726_
                                        (lambda ()
                                          (if (gx#stx-pair? _e96439664_)
                                              (let ((_e96469698_
                                                     (gx#syntax-e
                                                      _e96439664_)))
                                                (let ((_hd96479701_
                                                       (##car _e96469698_))
                                                      (_tl96489703_
                                                       (##cdr _e96469698_)))
                                                  (if (and (gx#identifier?
                                                            _hd96479701_)
                                                           (gx#core-identifier=?
                                                            _hd96479701_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl96489703_)
                                                          (let ((_e96499706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl96489703_)))
                    (let ((_hd96509709_ (##car _e96499706_))
                          (_tl96519711_ (##cdr _e96499706_)))
                      (let ((_hd-bind9714_ _hd96509709_))
                        (if (gx#stx-pair? _tl96519711_)
                            (let ((_e96529716_ (gx#syntax-e _tl96519711_)))
                              (let ((_hd96539719_ (##car _e96529716_))
                                    (_tl96549721_ (##cdr _e96529716_)))
                                (let ((_expr9724_ _hd96539719_))
                                  (if (gx#stx-null? _tl96549721_)
                                      (if '#t
                                          (_lp9618_
                                           _rest9641_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind9714_)
                                                   (gx#core-expand-expression
                                                    _expr9724_))
                                                  (gx#stx-source _hd9642_))
                                                 _body9621_))
                                          (_E96459694_))
                                      (_E96459694_)))))
                            (_E96459694_)))))
                  (_E96459694_))
              (_E96459694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E96459694_)))))
                                  (_E96449726_)))))
                        (if (##pair? _rest96229630_)
                            (let ((_hd96279733_ (##car _rest96229630_))
                                  (_tl96289735_ (##cdr _rest96229630_)))
                              (let* ((_hd9738_ _hd96279733_)
                                     (_rest9740_ _tl96289735_))
                                (_K96269730_ _rest9740_ _hd9738_)))
                            (_else96249638_)))))))
          (_expand-body9614_
           (gx#core-expand-block__%
            (cons '%#begin-module _body9611_)
            _expand-special9613_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx9454_
               _expanded?9455_
               _method9456_
               _current-phi9457_
               _expand19458_)
        (letrec ((_K9460_ (lambda (_rest9578_ _r9579_)
                            (let* ((_e95809587_ _rest9578_)
                                   (_E95829591_ (lambda () _r9579_))
                                   (_E95819607_
                                    (lambda ()
                                      (if (gx#stx-pair? _e95809587_)
                                          (let ((_e95839595_
                                                 (gx#syntax-e _e95809587_)))
                                            (let ((_hd95849598_
                                                   (##car _e95839595_))
                                                  (_tl95859600_
                                                   (##cdr _e95839595_)))
                                              (let* ((_hd9603_ _hd95849598_)
                                                     (_rest9605_ _tl95859600_))
                                                (if '#t
                                                    (_step9461_
                                                     _hd9603_
                                                     _rest9605_
                                                     _r9579_)
                                                    (_E95829591_)))))
                                          (_E95829591_)))))
                              (_E95819607_))))
                 (_step9461_
                  (lambda (_hd9492_ _rest9493_ _r9494_)
                    (let* ((_e94959513_ _hd9492_)
                           (_E95089517_
                            (lambda ()
                              (if (_expanded?9455_ (gx#stx-e _hd9492_))
                                  (_K9460_ _rest9493_
                                           (cons (gx#stx-e _hd9492_) _r9494_))
                                  (_expand19458_
                                   _hd9492_
                                   _K9460_
                                   _rest9493_
                                   _r9494_))))
                           (_E95049533_
                            (lambda ()
                              (if (gx#stx-pair? _e94959513_)
                                  (let ((_e95099521_
                                         (gx#syntax-e _e94959513_)))
                                    (let ((_hd95109524_ (##car _e95099521_))
                                          (_tl95119526_ (##cdr _e95099521_)))
                                      (let* ((_macro9529_ _hd95109524_)
                                             (_body9531_ _tl95119526_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro9529_
                                             gx#syntax-binding?)
                                            (_K9460_ (cons (gx#core-apply-expander__%
                                                            (gx#syntax-local-e__0
                                                             _macro9529_)
                                                            _hd9492_
                                                            _method9456_)
                                                           _rest9493_)
                                                     _r9494_)
                                            (_E95089517_)))))
                                  (_E95089517_))))
                           (_E94979547_
                            (lambda ()
                              (if (gx#stx-pair? _e94959513_)
                                  (let ((_e95059537_
                                         (gx#syntax-e _e94959513_)))
                                    (let ((_hd95069540_ (##car _e95059537_))
                                          (_tl95079542_ (##cdr _e95059537_)))
                                      (if (eq? (gx#stx-e _hd95069540_) 'begin:)
                                          (let ((_body9545_ _tl95079542_))
                                            (if '#t
                                                (_K9460_ (gx#stx-foldr
                                                          cons
                                                          _rest9493_
                                                          _body9545_)
                                                         _r9494_)
                                                (_E95049533_)))
                                          (_E95049533_))))
                                  (_E95049533_))))
                           (_E94969574_
                            (lambda ()
                              (if (gx#stx-pair? _e94959513_)
                                  (let ((_e94989551_
                                         (gx#syntax-e _e94959513_)))
                                    (let ((_hd94999554_ (##car _e94989551_))
                                          (_tl95009556_ (##cdr _e94989551_)))
                                      (if (eq? (gx#stx-e _hd94999554_) 'phi:)
                                          (if (gx#stx-pair? _tl95009556_)
                                              (let ((_e95019559_
                                                     (gx#syntax-e
                                                      _tl95009556_)))
                                                (let ((_hd95029562_
                                                       (##car _e95019559_))
                                                      (_tl95039564_
                                                       (##cdr _e95019559_)))
                                                  (let* ((_dphi9567_
                                                          _hd95029562_)
                                                         (_body9569_
                                                          _tl95039564_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi9567_)
                                                        (let ((_rbody9572_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K9460_ _body9569_ '()))
                        _current-phi9457_
                        (fx+ (gx#stx-e _dphi9567_) (_current-phi9457_)))))
                  (_K9460_ _rest9493_ (foldr1 cons _r9494_ _rbody9572_)))
                (_E94979547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E94979547_))
                                          (_E94979547_))))
                                  (_E94979547_)))))
                      (_E94969574_)))))
          (let* ((_e94629469_ _stx9454_)
                 (_E94649473_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e94629469_)))
                 (_E94639488_
                  (lambda ()
                    (if (gx#stx-pair? _e94629469_)
                        (let ((_e94659477_ (gx#syntax-e _e94629469_)))
                          (let ((_hd94669480_ (##car _e94659477_))
                                (_tl94679482_ (##cdr _e94659477_)))
                            (let ((_body9485_ _tl94679482_))
                              (if '#t
                                  (if (_current-phi9457_)
                                      (_K9460_ _body9485_ '())
                                      (call-with-parameters
                                       (lambda () (_K9460_ _body9485_ '()))
                                       _current-phi9457_
                                       (gx#current-expander-phi)))
                                  (_E94649473_)))))
                        (_E94649473_)))))
            (_E94639488_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx9121_ _internal-expand?9122_)
        (letrec ((_expand19124_
                  (lambda (_hd9434_ _K9435_ _rest9436_ _r9437_)
                    (if (gx#core-bound-module? _hd9434_)
                        (_import19125_
                         (gx#syntax-local-e__0 _hd9434_)
                         _K9435_
                         _rest9436_
                         _r9437_)
                        (if (gx#core-library-module-path? _hd9434_)
                            (_import19125_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd9434_))
                             _K9435_
                             _rest9436_
                             _r9437_)
                            (if (gx#core-library-relative-module-path?
                                 _hd9434_)
                                (_import19125_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd9434_))
                                 _K9435_
                                 _rest9436_
                                 _r9437_)
                                (let ((_e9439_ (gx#stx-e _hd9434_)))
                                  (if (pair? _e9439_)
                                      (let ((_$e9441_
                                             (gx#stx-e (car _e9439_))))
                                        (if (eq? 'spec: _$e9441_)
                                            (_import-spec9128_
                                             _hd9434_
                                             _K9435_
                                             _rest9436_
                                             _r9437_)
                                            (if (eq? 'in: _$e9441_)
                                                (_import-submodule9126_
                                                 _hd9434_
                                                 _K9435_
                                                 _rest9436_
                                                 _r9437_)
                                                (if (eq? 'runtime: _$e9441_)
                                                    (_import-runtime9127_
                                                     _hd9434_
                                                     _K9435_
                                                     _rest9436_
                                                     _r9437_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx9121_
                                                     _hd9434_)))))
                                      (if (string? _e9439_)
                                          (_import19125_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd9434_
                                             (gx#stx-source _stx9121_)))
                                           _K9435_
                                           _rest9436_
                                           _r9437_)
                                          (if (##structure-instance-of?
                                               _e9439_
                                               'gx#module-context::t)
                                              (_K9435_ _rest9436_
                                                       (cons _e9439_ _r9437_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx9121_
                                               _hd9434_))))))))))
                 (_import19125_
                  (lambda (_ctx9423_ _K9424_ _rest9425_ _r9426_)
                    (let ((_dphi9428_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K9424_ _rest9425_
                               (cons (##structure
                                      gx#import-set::t
                                      _ctx9423_
                                      _dphi9428_
                                      (map (lambda (_g94299431_)
                                             (gx#core-module-export->import__%
                                              _g94299431_
                                              '#f
                                              _dphi9428_))
                                           (##unchecked-structure-ref
                                            _ctx9423_
                                            '9
                                            gx#module-context::t
                                            '#f)))
                                     _r9426_)))))
                 (_import-submodule9126_
                  (lambda (_hd9390_ _K9391_ _rest9392_ _r9393_)
                    (let* ((_e93949401_ _hd9390_)
                           (_E93969405_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e93949401_)))
                           (_E93959419_
                            (lambda ()
                              (if (gx#stx-pair? _e93949401_)
                                  (let ((_e93979409_
                                         (gx#syntax-e _e93949401_)))
                                    (let ((_hd93989412_ (##car _e93979409_))
                                          (_tl93999414_ (##cdr _e93979409_)))
                                      (let ((_spath9417_ _tl93999414_))
                                        (if '#t
                                            (_import19125_
                                             (_import-spec-source9129_
                                              _spath9417_)
                                             _K9391_
                                             _rest9392_
                                             _r9393_)
                                            (_E93969405_)))))
                                  (_E93969405_)))))
                      (_E93959419_))))
                 (_import-runtime9127_
                  (lambda (_hd9357_ _K9358_ _rest9359_ _r9360_)
                    (let* ((_e93619368_ _hd9357_)
                           (_E93639372_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e93619368_)))
                           (_E93629386_
                            (lambda ()
                              (if (gx#stx-pair? _e93619368_)
                                  (let ((_e93649376_
                                         (gx#syntax-e _e93619368_)))
                                    (let ((_hd93659379_ (##car _e93649376_))
                                          (_tl93669381_ (##cdr _e93649376_)))
                                      (let ((_spath9384_ _tl93669381_))
                                        (if '#t
                                            (_K9358_ _rest9359_
                                                     (cons (_import-spec-source9129_
                                                            _spath9384_)
                                                           _r9360_))
                                            (_E93639372_)))))
                                  (_E93639372_)))))
                      (_E93629386_))))
                 (_import-spec9128_
                  (lambda (_hd9196_ _K9197_ _rest9198_ _r9199_)
                    (let* ((_e92009217_ _hd9196_)
                           (_E92099221_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e92009217_)))
                           (_E92029331_
                            (lambda ()
                              (if (gx#stx-pair? _e92009217_)
                                  (let ((_e92109225_
                                         (gx#syntax-e _e92009217_)))
                                    (let ((_hd92119228_ (##car _e92109225_))
                                          (_tl92129230_ (##cdr _e92109225_)))
                                      (if (gx#stx-pair? _tl92129230_)
                                          (let ((_e92139233_
                                                 (gx#syntax-e _tl92129230_)))
                                            (let ((_hd92149236_
                                                   (##car _e92139233_))
                                                  (_tl92159238_
                                                   (##cdr _e92139233_)))
                                              (let* ((_path9241_ _hd92149236_)
                                                     (_specs9243_
                                                      _tl92159238_))
                                                (if '#t
                                                    (let ((_src-ctx9245_
                                                           (_import-spec-source9129_
                                                            _path9241_))
                                                          (_exports9246_
                                                           (make-table))
                                                          (_specs9247_
                                                           (gx#syntax->list
                                                            _specs9243_)))
                                                      (for-each
                                                       (lambda (_out9249_)
                                                         (table-set!
                                                          _exports9246_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out9249_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out9249_
                         '4
                         gx#module-export::t
                         '#f))
                  _out9249_))
               (##unchecked-structure-ref
                _src-ctx9245_
                '9
                gx#module-context::t
                '#f))
              (_K9197_ _rest9198_
                       (foldl1 (lambda (_spec9251_ _r9252_)
                                 (let* ((_e92539269_ _spec9251_)
                                        (_E92559273_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _e92539269_)))
                                        (_E92549327_
                                         (lambda ()
                                           (if (gx#stx-pair? _e92539269_)
                                               (let ((_e92569277_
                                                      (gx#syntax-e
                                                       _e92539269_)))
                                                 (let ((_hd92579280_
                                                        (##car _e92569277_))
                                                       (_tl92589282_
                                                        (##cdr _e92569277_)))
                                                   (let ((_phi9285_
                                                          _hd92579280_))
                                                     (if (gx#stx-pair?
                                                          _tl92589282_)
                                                         (let ((_e92599287_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92589282_)))
                   (let ((_hd92609290_ (##car _e92599287_))
                         (_tl92619292_ (##cdr _e92599287_)))
                     (let ((_name9295_ _hd92609290_))
                       (if (gx#stx-pair? _tl92619292_)
                           (let ((_e92629297_ (gx#syntax-e _tl92619292_)))
                             (let ((_hd92639300_ (##car _e92629297_))
                                   (_tl92649302_ (##cdr _e92629297_)))
                               (let ((_src-phi9305_ _hd92639300_))
                                 (if (gx#stx-pair? _tl92649302_)
                                     (let ((_e92659307_
                                            (gx#syntax-e _tl92649302_)))
                                       (let ((_hd92669310_ (##car _e92659307_))
                                             (_tl92679312_
                                              (##cdr _e92659307_)))
                                         (let ((_src-name9315_ _hd92669310_))
                                           (if (gx#stx-null? _tl92679312_)
                                               (if (and (gx#stx-fixnum?
                                                         _src-phi9305_)
                                                        (gx#identifier?
                                                         _src-name9315_)
                                                        (gx#stx-fixnum?
                                                         _phi9285_)
                                                        (gx#identifier?
                                                         _name9295_))
                                                   (let ((_src-phi9317_
                                                          (gx#stx-e
                                                           _src-phi9305_))
                                                         (_src-name9318_
                                                          (gx#core-identifier-key
                                                           _src-name9315_))
                                                         (_phi9319_
                                                          (gx#stx-e _phi9285_))
                                                         (_name9320_
                                                          (gx#core-identifier-key
                                                           _name9295_)))
                                                     (let ((_$e9322_
                                                            (table-ref
                                                             _exports9246_
                                                             (cons _src-phi9317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src-name9318_)
                     '#f)))
               (if _$e9322_
                   ((lambda (_out9325_)
                      (cons (gx#core-module-export->import__%
                             _out9325_
                             _name9320_
                             (fx- _phi9319_ _src-phi9317_))
                            _r9252_))
                    _$e9322_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; no matching export"
                    _stx9121_
                    _hd9196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E92559273_))
                                               (_E92559273_)))))
                                     (_E92559273_)))))
                           (_E92559273_)))))
                 (_E92559273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E92559273_)))))
                                   (_E92549327_)))
                               _r9199_
                               _specs9247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92099221_)))))
                                          (_E92099221_))))
                                  (_E92099221_))))
                           (_E92019353_
                            (lambda ()
                              (if (gx#stx-pair? _e92009217_)
                                  (let ((_e92039335_
                                         (gx#syntax-e _e92009217_)))
                                    (let ((_hd92049338_ (##car _e92039335_))
                                          (_tl92059340_ (##cdr _e92039335_)))
                                      (if (gx#stx-pair? _tl92059340_)
                                          (let ((_e92069343_
                                                 (gx#syntax-e _tl92059340_)))
                                            (let ((_hd92079346_
                                                   (##car _e92069343_))
                                                  (_tl92089348_
                                                   (##cdr _e92069343_)))
                                              (let ((_path9351_ _hd92079346_))
                                                (if (gx#stx-null? _tl92089348_)
                                                    (if '#t
                                                        (_K9197_ _rest9198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_import-spec-source9129_ _path9351_) _r9199_))
                (_E92029331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92029331_)))))
                                          (_E92029331_))))
                                  (_E92029331_)))))
                      (_E92019353_))))
                 (_import-spec-source9129_
                  (lambda (_spath9194_)
                    (gx#core-import-nested-module _spath9194_ _stx9121_)))
                 (_import!9130_
                  (lambda (_rbody9143_)
                    (letrec* ((_current-ctx9145_ (gx#current-expander-context))
                              (_deps9146_ (make-table 'test: eq?))
                              (_bind!9147_
                               (lambda (_hd9192_)
                                 (gx#core-bind-import!__1
                                  _hd9192_
                                  _current-ctx9145_))))
                      (let _lp9149_ ((_rest9151_ _rbody9143_) (_body9152_ '()))
                        (let* ((_rest91539161_ _rest9151_)
                               (_else91559171_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx9145_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx9145_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx9145_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body9152_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx9169_ _g16163_)
                                     (gx#eval-module _ctx9169_))
                                   _deps9146_)
                                  _body9152_))
                               (_K91579180_
                                (lambda (_rest9174_ _hd9175_)
                                  (if (##structure-direct-instance-of?
                                       _hd9175_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!9147_ _hd9175_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd9175_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd9175_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps9146_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd9175_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd9175_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!9147_
                                             (##unchecked-structure-ref
                                              _hd9175_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd9175_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps9146_
                                                 (##unchecked-structure-ref
                                                  _hd9175_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e9177_
                                                 (##structure-instance-of?
                                                  _hd9175_
                                                  'gx#module-context::t)))
                                            (if _$e9177_
                                                _$e9177_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx9121_
                                                 _hd9175_)))))
                                  (_lp9149_
                                   _rest9174_
                                   (cons _hd9175_ _body9152_)))))
                          (if (##pair? _rest91539161_)
                              (let ((_hd91589183_ (##car _rest91539161_))
                                    (_tl91599185_ (##cdr _rest91539161_)))
                                (let* ((_hd9188_ _hd91589183_)
                                       (_rest9190_ _tl91599185_))
                                  (_K91579180_ _rest9190_ _hd9188_)))
                              (_else91559171_)))))))
                 (_expanded-import?9131_
                  (lambda (_e9135_)
                    (let ((_$e9137_
                           (##structure-direct-instance-of?
                            _e9135_
                            'gx#import-set::t)))
                      (if _$e9137_
                          _$e9137_
                          (let ((_$e9140_
                                 (##structure-direct-instance-of?
                                  _e9135_
                                  'gx#module-import::t)))
                            (if _$e9140_
                                _$e9140_
                                (##structure-instance-of?
                                 _e9135_
                                 'gx#module-context::t))))))))
          (let ((_rbody9133_
                 (gx#core-expand-import/export
                  _stx9121_
                  _expanded-import?9131_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand19124_)))
            (if _internal-expand?9122_
                (reverse _rbody9133_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!9130_ _rbody9133_))
                 (gx#stx-source _stx9121_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx9447_)
        (let ((_internal-expand?9449_ '#f))
          (gx#core-expand-import%__% _stx9447_ _internal-expand?9449_))))
    (define gx#core-expand-import%
      (lambda _g16165_
        (let ((_g16164_ (##length _g16165_)))
          (cond ((##fx= _g16164_ 1) (apply gx#core-expand-import%__0 _g16165_))
                ((##fx= _g16164_ 2) (apply gx#core-expand-import%__% _g16165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g16165_))))))
    (define gx#core-import-nested-module
      (lambda (_spath9048_ _where9049_)
        (let* ((_e90509057_ _spath9048_)
               (_E90529061_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e90509057_)))
               (_E90519116_
                (lambda ()
                  (if (gx#stx-pair? _e90509057_)
                      (let ((_e90539065_ (gx#syntax-e _e90509057_)))
                        (let ((_hd90549068_ (##car _e90539065_))
                              (_tl90559070_ (##cdr _e90539065_)))
                          (let* ((_origin9073_ _hd90549068_)
                                 (_sub9075_ _tl90559070_))
                            (if '#t
                                (let ((_origin-ctx9077_
                                       (if (gx#stx-false? _origin9073_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin9073_))))
                                  (let _lp9079_ ((_rest9081_ _sub9075_)
                                                 (_ctx9082_ _origin-ctx9077_))
                                    (let* ((_e90839090_ _rest9081_)
                                           (_E90859094_ (lambda () _ctx9082_))
                                           (_E90849112_
                                            (lambda ()
                                              (if (gx#stx-pair? _e90839090_)
                                                  (let ((_e90869098_
                                                         (gx#syntax-e
                                                          _e90839090_)))
                                                    (let ((_hd90879101_
                                                           (##car _e90869098_))
                                                          (_tl90889103_
                                                           (##cdr _e90869098_)))
                                                      (let* ((_id9106_
                                                              _hd90879101_)
                                                             (_rest9108_
                                                              _tl90889103_))
                                                        (if '#t
                                                            (let ((_bind9110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id9106_ '0 _ctx9082_)))
                      (if (and (##structure-direct-instance-of?
                                _bind9110_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind9110_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where9049_
                           _spath9048_
                           _id9106_))
                      (_lp9079_
                       _rest9108_
                       (##unchecked-structure-ref
                        _bind9110_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E90859094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90859094_)))))
                                      (_E90849112_))))
                                (_E90529061_)))))
                      (_E90529061_)))))
          (_E90519116_))))
    (define gx#core-expand-import-source
      (lambda (_hd9046_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd9046_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx8554_ _internal-expand?8555_)
        (letrec* ((_make-export__1610316104_
                   (lambda (_bind8994_ _phi8995_ _ctx8996_ _name8997_)
                     (let* ((_key8999_
                             (##unchecked-structure-ref
                              _bind8994_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key9001_
                             (if _name8997_
                                 (gx#core-identifier-key _name8997_)
                                 _key8999_)))
                       (##structure
                        gx#module-export::t
                        _ctx8996_
                        _key8999_
                        _phi8995_
                        _export-key9001_
                        (let ((_$e9004_
                               (##structure-instance-of?
                                _bind8994_
                                'gx#extern-binding::t)))
                          (if _$e9004_
                              _$e9004_
                              (##structure-direct-instance-of?
                               _bind8994_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1610516108_
                   (lambda (_bind9010_)
                     (let* ((_phi9012_ (gx#current-export-expander-phi))
                            (_ctx9014_ (gx#current-expander-context))
                            (_name9016_ '#f))
                       (_make-export__1610316104_
                        _bind9010_
                        _phi9012_
                        _ctx9014_
                        _name9016_))))
                  (_make-export__1__1610616109_
                   (lambda (_bind9018_ _phi9019_)
                     (let* ((_ctx9021_ (gx#current-expander-context))
                            (_name9023_ '#f))
                       (_make-export__1610316104_
                        _bind9018_
                        _phi9019_
                        _ctx9021_
                        _name9023_))))
                  (_make-export__2__1610716110_
                   (lambda (_bind9025_ _phi9026_ _ctx9027_)
                     (let ((_name9029_ '#f))
                       (_make-export__1610316104_
                        _bind9025_
                        _phi9026_
                        _ctx9027_
                        _name9029_))))
                  (_make-export8557_
                   (lambda _g16167_
                     (let ((_g16166_ (##length _g16167_)))
                       (cond ((##fx= _g16166_ 1)
                              (apply _make-export__0__1610516108_ _g16167_))
                             ((##fx= _g16166_ 2)
                              (apply _make-export__1__1610616109_ _g16167_))
                             ((##fx= _g16166_ 3)
                              (apply _make-export__2__1610716110_ _g16167_))
                             ((##fx= _g16166_ 4)
                              (apply _make-export__1610316104_ _g16167_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g16167_))))))
                  (_expand18558_
                   (lambda (_hd8707_ _K8708_ _rest8709_ _r8710_)
                     (let* ((_e87118743_ _hd8707_)
                            (_E87388747_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx8554_
                                _hd8707_)))
                            (_E87288826_
                             (lambda ()
                               (if (gx#stx-pair? _e87118743_)
                                   (let ((_e87398751_
                                          (gx#syntax-e _e87118743_)))
                                     (let ((_hd87408754_ (##car _e87398751_))
                                           (_tl87418756_ (##cdr _e87398751_)))
                                       (if (eq? (gx#stx-e _hd87408754_)
                                                'import:)
                                           (let ((_in8759_ _tl87418756_))
                                             (if (gx#stx-list? _in8759_)
                                                 (let _lp8761_ ((_in-rest8763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in8759_)
                        (_r8764_ _r8710_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e87658772_
                                                           _in-rest8763_)
                                                          (_E87678776_
                                                           (lambda ()
                                                             (_K8708_ _rest8709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r8764_)))
                  (_E87668822_
                   (lambda ()
                     (if (gx#stx-pair? _e87658772_)
                         (let ((_e87688780_ (gx#syntax-e _e87658772_)))
                           (let ((_hd87698783_ (##car _e87688780_))
                                 (_tl87708785_ (##cdr _e87688780_)))
                             (let* ((_hd8788_ _hd87698783_)
                                    (_in-rest8790_ _tl87708785_))
                               (if '#t
                                   (let ((_src8820_
                                          (if (gx#core-bound-module? _hd8788_)
                                              (gx#syntax-local-e__0 _hd8788_)
                                              (if (gx#core-library-module-path?
                                                   _hd8788_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd8788_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd8788_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd8788_))
                                                      (if (gx#stx-string?
                                                           _hd8788_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd8788_
                                                            (gx#stx-source
                                                             _stx8554_)))
                                                          (let* ((_e87918798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8788_)
                         (_E87938802_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx8554_
                             _hd8788_)))
                         (_E87928816_
                          (lambda ()
                            (if (gx#stx-pair? _e87918798_)
                                (let ((_e87948806_ (gx#syntax-e _e87918798_)))
                                  (let ((_hd87958809_ (##car _e87948806_))
                                        (_tl87968811_ (##cdr _e87948806_)))
                                    (if (eq? (gx#stx-e _hd87958809_) 'in:)
                                        (let ((_spath8814_ _tl87968811_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath8814_
                                               _stx8554_)
                                              (_E87938802_)))
                                        (_E87938802_))))
                                (_E87938802_)))))
                    (_E87928816_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp8761_
                                      _in-rest8790_
                                      (_export-imports8559_
                                       _src8820_
                                       _r8764_)))
                                   (_E87678776_)))))
                         (_E87678776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E87668822_)))
                                                 (_E87388747_)))
                                           (_E87388747_))))
                                   (_E87388747_))))
                            (_E87158865_
                             (lambda ()
                               (if (gx#stx-pair? _e87118743_)
                                   (let ((_e87298830_
                                          (gx#syntax-e _e87118743_)))
                                     (let ((_hd87308833_ (##car _e87298830_))
                                           (_tl87318835_ (##cdr _e87298830_)))
                                       (if (eq? (gx#stx-e _hd87308833_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl87318835_)
                                               (let ((_e87328838_
                                                      (gx#syntax-e
                                                       _tl87318835_)))
                                                 (let ((_hd87338841_
                                                        (##car _e87328838_))
                                                       (_tl87348843_
                                                        (##cdr _e87328838_)))
                                                   (let ((_id8846_
                                                          _hd87338841_))
                                                     (if (gx#stx-pair?
                                                          _tl87348843_)
                                                         (let ((_e87358848_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl87348843_)))
                   (let ((_hd87368851_ (##car _e87358848_))
                         (_tl87378853_ (##cdr _e87358848_)))
                     (let ((_name8856_ _hd87368851_))
                       (if (gx#stx-null? _tl87378853_)
                           (if '#t
                               (let* ((_phi8858_
                                       (gx#current-export-expander-phi))
                                      (_$e8860_
                                       (gx#core-resolve-identifier__1
                                        _id8846_
                                        _phi8858_)))
                                 (if _$e8860_
                                     ((lambda (_bind8863_)
                                        (_K8708_ _rest8709_
                                                 (cons (_make-export__1610316104_
                                                        _bind8863_
                                                        _phi8858_
                                                        (gx#current-expander-context)
                                                        _name8856_)
                                                       _r8710_)))
                                      _$e8860_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx8554_
                                      _hd8707_
                                      _id8846_)))
                               (_E87288826_))
                           (_E87288826_)))))
                 (_E87288826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E87288826_))
                                           (_E87288826_))))
                                   (_E87288826_))))
                            (_E87148914_
                             (lambda ()
                               (if (gx#stx-pair? _e87118743_)
                                   (let ((_e87168869_
                                          (gx#syntax-e _e87118743_)))
                                     (let ((_hd87178872_ (##car _e87168869_))
                                           (_tl87188874_ (##cdr _e87168869_)))
                                       (if (eq? (gx#stx-e _hd87178872_) 'spec:)
                                           (if (gx#stx-pair? _tl87188874_)
                                               (let ((_e87198877_
                                                      (gx#syntax-e
                                                       _tl87188874_)))
                                                 (let ((_hd87208880_
                                                        (##car _e87198877_))
                                                       (_tl87218882_
                                                        (##cdr _e87198877_)))
                                                   (let ((_phi8885_
                                                          _hd87208880_))
                                                     (if (gx#stx-pair?
                                                          _tl87218882_)
                                                         (let ((_e87228887_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl87218882_)))
                   (let ((_hd87238890_ (##car _e87228887_))
                         (_tl87248892_ (##cdr _e87228887_)))
                     (let ((_id8895_ _hd87238890_))
                       (if (gx#stx-pair? _tl87248892_)
                           (let ((_e87258897_ (gx#syntax-e _tl87248892_)))
                             (let ((_hd87268900_ (##car _e87258897_))
                                   (_tl87278902_ (##cdr _e87258897_)))
                               (let ((_name8905_ _hd87268900_))
                                 (if (gx#stx-null? _tl87278902_)
                                     (if (and (gx#stx-fixnum? _phi8885_)
                                              (gx#identifier? _id8895_)
                                              (gx#identifier? _name8905_))
                                         (let* ((_phi8907_
                                                 (gx#stx-e _phi8885_))
                                                (_$e8909_
                                                 (gx#core-resolve-identifier__1
                                                  _id8895_
                                                  _phi8907_)))
                                           (if _$e8909_
                                               ((lambda (_bind8912_)
                                                  (_K8708_ _rest8709_
                                                           (cons (_make-export__1610316104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind8912_
                          _phi8907_
                          (gx#current-expander-context)
                          _name8905_)
                         _r8710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e8909_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx8554_
                                                _hd8707_
                                                _id8895_)))
                                         (_E87158865_))
                                     (_E87158865_)))))
                           (_E87158865_)))))
                 (_E87158865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E87158865_))
                                           (_E87158865_))))
                                   (_E87158865_))))
                            (_E87138925_
                             (lambda ()
                               (let ((_id8918_ _e87118743_))
                                 (if (gx#identifier? _id8918_)
                                     (let ((_$e8920_
                                            (gx#core-resolve-identifier__1
                                             _id8918_
                                             (gx#current-export-expander-phi))))
                                       (if _$e8920_
                                           ((lambda (_bind8923_)
                                              (_K8708_ _rest8709_
                                                       (cons (_make-export__0__1610516108_
                                                              _bind8923_)
                                                             _r8710_)))
                                            _$e8920_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx8554_
                                            _hd8707_)))
                                     (_E87148914_)))))
                            (_E87128989_
                             (lambda ()
                               (if (eq? (gx#stx-e _e87118743_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx8929_
                                               (gx#current-expander-context))
                                              (_current-phi8931_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx8933_
                                               (gx#core-context-shift
                                                _current-ctx8929_
                                                _current-phi8931_))
                                              (_phi-bind8935_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx8933_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp8938_ ((_bind-rest8940_
                                                         _phi-bind8935_)
                                                        (_set8941_ '()))
                                           (let* ((_bind-rest89428952_
                                                   _bind-rest8940_)
                                                  (_else89448960_
                                                   (lambda ()
                                                     (_K8708_ _rest8709_
                                                              (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#export-set::t
                             '#f
                             _current-phi8931_
                             _set8941_)
                            _r8710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K89468970_
                                                   (lambda (_bind-rest8963_
                                                            _bind8964_
                                                            _key8965_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind8964_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind8964_))
                                                         (_lp8938_
                                                          _bind-rest8963_
                                                          _set8941_)
                                                         (_lp8938_
                                                          _bind-rest8963_
                                                          (cons (_make-export__2__1610716110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind8964_
                         _current-phi8931_
                         _current-ctx8929_)
                        _set8941_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest89428952_)
                                                 (let ((_hd89478973_
                                                        (##car _bind-rest89428952_))
                                                       (_tl89488975_
                                                        (##cdr _bind-rest89428952_)))
                                                   (if (##pair? _hd89478973_)
                                                       (let ((_hd89498978_
                                                              (##car _hd89478973_))
                                                             (_tl89508980_
                                                              (##cdr _hd89478973_)))
                                                         (let* ((_key8983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd89498978_)
                        (_bind8985_ _tl89508980_)
                        (_bind-rest8987_ _tl89488975_))
                   (_K89468970_ _bind-rest8987_ _bind8985_ _key8983_)))
               (_else89448960_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else89448960_)))))
                                       (_E87138925_))
                                   (_E87138925_)))))
                       (_E87128989_))))
                  (_export-imports8559_
                   (lambda (_src8583_ _r8584_)
                     (letrec* ((_current-ctx8586_
                                (gx#current-expander-context))
                               (_current-phi8587_
                                (gx#current-export-expander-phi))
                               (_import->export8588_
                                (lambda (_in8669_)
                                  (let* ((_in86708678_ _in8669_)
                                         (_E86728682_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in86708678_)))
                                         (_K86738689_
                                          (lambda (_phi8685_
                                                   _key8686_
                                                   _out8687_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx8586_
                                             _key8686_
                                             _phi8685_
                                             _key8686_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in86708678_
                                         'gx#module-import::t)
                                        (let* ((_e86748692_
                                                (##vector-ref _in86708678_ '1))
                                               (_out8695_ _e86748692_)
                                               (_e86758697_
                                                (##vector-ref _in86708678_ '2))
                                               (_key8700_ _e86758697_)
                                               (_e86768702_
                                                (##vector-ref _in86708678_ '3))
                                               (_phi8705_ _e86768702_))
                                          (_K86738689_
                                           _phi8705_
                                           _key8700_
                                           _out8695_))
                                        (_E86728682_)))))
                               (_fold-e8589_
                                (lambda (_in8591_ _r8592_)
                                  (let* ((_in85938607_ _in8591_)
                                         (_else85968615_ (lambda () _r8592_)))
                                    (let ((_K86028651_
                                           (lambda (_phi8647_
                                                    _key8648_
                                                    _out8649_)
                                             (if (and (fx= _phi8647_
                                                           _current-phi8587_)
                                                      (eq? _src8583_
                                                           (##unchecked-structure-ref
                                                            _out8649_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export8588_
                                                        _in8591_)
                                                       _r8592_)
                                                 _r8592_)))
                                          (_K85988626_
                                           (lambda (_imports8619_
                                                    _phi8620_
                                                    _ctx8621_)
                                             (if (and (fx= _phi8620_
                                                           _current-phi8587_)
                                                      (eq? _src8583_
                                                           _ctx8621_))
                                                 (foldl1 (lambda (_in8623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r8624_)
                   (cons (_import->export8588_ _in8623_) _r8624_))
                 _r8592_
                 _imports8619_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r8592_))))
                                      (let ((_try-match85958644_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in85938607_
                                                    'gx#import-set::t)
                                                   (let* ((_e85998629_
                                                           (##vector-ref
                                                            _in85938607_
                                                            '1))
                                                          (_e86008634_
                                                           (##vector-ref
                                                            _in85938607_
                                                            '2))
                                                          (_e86018639_
                                                           (##vector-ref
                                                            _in85938607_
                                                            '3)))
                                                     (let ((_ctx8632_
                                                            _e85998629_)
                                                           (_phi8637_
                                                            _e86008634_)
                                                           (_imports8642_
                                                            _e86018639_))
                                                       (_K85988626_
                                                        _imports8642_
                                                        _phi8637_
                                                        _ctx8632_)))
                                                   (_else85968615_)))))
                                        (if (##structure-direct-instance-of?
                                             _in85938607_
                                             'gx#module-import::t)
                                            (let* ((_e86038654_
                                                    (##vector-ref
                                                     _in85938607_
                                                     '1))
                                                   (_e86048659_
                                                    (##vector-ref
                                                     _in85938607_
                                                     '2))
                                                   (_e86058664_
                                                    (##vector-ref
                                                     _in85938607_
                                                     '3)))
                                              (let ((_out8657_ _e86038654_)
                                                    (_key8662_ _e86048659_)
                                                    (_phi8667_ _e86058664_))
                                                (_K86028651_
                                                 _phi8667_
                                                 _key8662_
                                                 _out8657_)))
                                            (_try-match85958644_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src8583_
                              _current-phi8587_
                              (foldl1 _fold-e8589_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx8586_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r8584_))))
                  (_export!8560_
                   (lambda (_rbody8573_)
                     (letrec* ((_current-ctx8575_
                                (gx#current-expander-context))
                               (_fold-e8576_
                                (lambda (_out8580_ _r8581_)
                                  (if (##structure-direct-instance-of?
                                       _out8580_
                                       'gx#module-export::t)
                                      (cons _out8580_ _r8581_)
                                      (if (##structure-direct-instance-of?
                                           _out8580_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r8581_
                                                  (##unchecked-structure-ref
                                                   _out8580_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r8581_)))))
                       (let ((_body8578_ (reverse _rbody8573_)))
                         (##unchecked-structure-set!
                          _current-ctx8575_
                          (foldl1 _fold-e8576_
                                  (##unchecked-structure-ref
                                   _current-ctx8575_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body8578_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body8578_))))
                  (_expanded-export?8561_
                   (lambda (_e8568_)
                     (let ((_$e8570_
                            (##structure-direct-instance-of?
                             _e8568_
                             'gx#module-export::t)))
                       (if _$e8570_
                           _$e8570_
                           (##structure-direct-instance-of?
                            _e8568_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?8555_)
              (let ((_rbody8566_
                     (gx#core-expand-import/export
                      _stx8554_
                      _expanded-export?8561_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand18558_)))
                (if _internal-expand?8555_
                    (reverse _rbody8566_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!8560_ _rbody8566_))
                     (gx#stx-source _stx8554_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx8554_))
                  (gx#raise-syntax-error '#f '"Illegal context" _stx8554_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx9039_)
        (let ((_internal-expand?9041_ '#f))
          (gx#core-expand-export%__% _stx9039_ _internal-expand?9041_))))
    (define gx#core-expand-export%
      (lambda _g16169_
        (let ((_g16168_ (##length _g16169_)))
          (cond ((##fx= _g16168_ 1) (apply gx#core-expand-export%__0 _g16169_))
                ((##fx= _g16168_ 2) (apply gx#core-expand-export%__% _g16169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g16169_))))))
    (define gx#core-expand-export-source
      (lambda (_hd8551_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd8551_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx8521_)
        (let* ((_e85228529_ _stx8521_)
               (_E85248533_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e85228529_)))
               (_E85238547_
                (lambda ()
                  (if (gx#stx-pair? _e85228529_)
                      (let ((_e85258537_ (gx#syntax-e _e85228529_)))
                        (let ((_hd85268540_ (##car _e85258537_))
                              (_tl85278542_ (##cdr _e85258537_)))
                          (let ((_body8545_ _tl85278542_))
                            (if (gx#identifier-list? _body8545_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body8545_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body8545_))
                                   (gx#stx-source _stx8521_)))
                                (_E85248533_)))))
                      (_E85248533_)))))
          (_E85238547_))))
    (define gx#core-bind-feature!__%
      (lambda (_id8487_ _private?8488_ _phi8489_ _ctx8490_)
        (gx#core-bind-syntax!__%
         _id8487_
         ((if _private?8488_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id8487_))
         _private?8488_
         _phi8489_
         _ctx8490_)))
    (define gx#core-bind-feature!__0
      (lambda (_id8495_)
        (let* ((_private?8497_ '#f)
               (_phi8499_ (gx#current-expander-phi))
               (_ctx8501_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id8495_
           _private?8497_
           _phi8499_
           _ctx8501_))))
    (define gx#core-bind-feature!__1
      (lambda (_id8503_ _private?8504_)
        (let* ((_phi8506_ (gx#current-expander-phi))
               (_ctx8508_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id8503_
           _private?8504_
           _phi8506_
           _ctx8508_))))
    (define gx#core-bind-feature!__2
      (lambda (_id8510_ _private?8511_ _phi8512_)
        (let ((_ctx8514_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id8510_
           _private?8511_
           _phi8512_
           _ctx8514_))))
    (define gx#core-bind-feature!
      (lambda _g16171_
        (let ((_g16170_ (##length _g16171_)))
          (cond ((##fx= _g16170_ 1) (apply gx#core-bind-feature!__0 _g16171_))
                ((##fx= _g16170_ 2) (apply gx#core-bind-feature!__1 _g16171_))
                ((##fx= _g16170_ 3) (apply gx#core-bind-feature!__2 _g16171_))
                ((##fx= _g16170_ 4) (apply gx#core-bind-feature!__% _g16171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g16171_))))))))
