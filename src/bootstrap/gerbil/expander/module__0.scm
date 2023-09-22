(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1695377612)
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
      (lambda _$args17211_
        (apply make-struct-instance gx#module-import::t _$args17211_)))
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
      (lambda _$args17208_
        (apply make-struct-instance gx#module-export::t _$args17208_)))
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
      (lambda _$args17205_
        (apply make-struct-instance gx#import-set::t _$args17205_)))
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
      (lambda _$args17202_
        (apply make-struct-instance gx#export-set::t _$args17202_)))
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
      (lambda _$args17199_
        (apply make-class-instance gx#import-expander::t _$args17199_)))
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
      (lambda _$args17196_
        (apply make-class-instance gx#export-expander::t _$args17196_)))
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
      (lambda _$args17193_
        (apply make-class-instance gx#import-export-expander::t _$args17193_)))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path17190_ _fun17191_)
        (call-with-input-file
         (cons 'path: (cons _path17190_ gx#source-file-settings))
         _fun17191_)))
    (define gx#module-context:::init!
      (lambda (_self17184_ _id17185_ _super17186_ _ns17187_ _path17188_)
        (if (##fx< '11 (##vector-length _self17184_))
            (begin
              (##vector-set! _self17184_ '1 _id17185_)
              (##vector-set! _self17184_ '2 (make-table 'test: eq?))
              (##vector-set! _self17184_ '3 _super17186_)
              (##vector-set! _self17184_ '4 '#f)
              (##vector-set! _self17184_ '5 '#f)
              (##vector-set! _self17184_ '6 _ns17187_)
              (##vector-set! _self17184_ '7 _path17188_)
              (##vector-set! _self17184_ '8 '())
              (##vector-set! _self17184_ '9 '())
              (##vector-set! _self17184_ '10 '#f)
              (##vector-set! _self17184_ '11 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self17184_))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self17028_ _ctx17029_ _root17030_)
        (let ((_super17038_
               (let ((_$e17032_ _root17030_))
                 (if _$e17032_
                     _$e17032_
                     (let ((_$e17035_ (gx#core-context-root__0)))
                       (if _$e17035_
                           _$e17035_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx17029_
              (let ((_id17041_
                     (##structure-ref
                      _ctx17029_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path17042_
                     (##structure-ref _ctx17029_ '7 gx#module-context::t '#f))
                    (_in17043_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx17029_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e17044_
                     (make-promise (lambda () (gx#eval-module _ctx17029_)))))
                (if (##fx< '8 (##vector-length _self17028_))
                    (begin
                      (##vector-set! _self17028_ '1 _id17041_)
                      (##vector-set!
                       _self17028_
                       '2
                       (make-table 'test: eq? 'size: (length _in17043_)))
                      (##vector-set! _self17028_ '3 _super17038_)
                      (##vector-set! _self17028_ '4 '#f)
                      (##vector-set! _self17028_ '5 '#f)
                      (##vector-set! _self17028_ '6 _path17042_)
                      (##vector-set! _self17028_ '7 _in17043_)
                      (##vector-set! _self17028_ '8 _e17044_))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self17028_))
                (for-each
                 (lambda (_g1704517047_)
                   (gx#core-bind-weak-import!__% _g1704517047_ _self17028_))
                 _in17043_))
              (if (##fx< '8 (##vector-length _self17028_))
                  (begin
                    (##vector-set! _self17028_ '1 '#f)
                    (##vector-set! _self17028_ '2 (make-table 'test: eq?))
                    (##vector-set! _self17028_ '3 _super17038_)
                    (##vector-set! _self17028_ '4 '#f)
                    (##vector-set! _self17028_ '5 '#f)
                    (##vector-set! _self17028_ '6 '#f)
                    (##vector-set! _self17028_ '7 '())
                    (##vector-set! _self17028_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self17028_))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self17053_ _ctx17054_)
        (let ((_root17056_ '#f))
          (gx#prelude-context:::init!__% _self17053_ _ctx17054_ _root17056_))))
    (define gx#prelude-context:::init!
      (lambda _g17251_
        (let ((_g17250_ (##length _g17251_)))
          (cond ((##fx= _g17250_ 2)
                 (apply (lambda (_self17053_ _ctx17054_)
                          (gx#prelude-context:::init!__0
                           _self17053_
                           _ctx17054_))
                        _g17251_))
                ((##fx= _g17250_ 3)
                 (apply (lambda (_self17058_ _ctx17059_ _root17060_)
                          (gx#prelude-context:::init!__%
                           _self17058_
                           _ctx17059_
                           _root17060_))
                        _g17251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g17251_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self16902_ _e16903_)
        (if (##fx< '3 (##vector-length _self16902_))
            (begin
              (##vector-set! _self16902_ '1 _e16903_)
              (##vector-set! _self16902_ '2 (gx#current-expander-context))
              (##vector-set!
               _self16902_
               '3
               (fx- (gx#current-expander-phi) '1)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self16902_))))
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
      (lambda (_g1652816531_ _g1652916533_)
        (gx#core-apply-user-expander__%
         _g1652816531_
         _g1652916533_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g1639916402_ _g1640016404_)
        (gx#core-apply-user-expander__%
         _g1639916402_
         _g1640016404_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx16270_)
        (let* ((_path16272_
                (##structure-ref _ctx16270_ '7 gx#module-context::t '#f))
               (_path16274_
                (if (pair? _path16272_) (last _path16272_) _path16272_)))
          (if (string? _path16274_) _path16274_ '#f))))
    (define gx#import-module__%
      (lambda (_path16246_ _reload?16247_ _eval?16248_)
        (let ((_ctx16250_
               ((gx#current-expander-module-import)
                _path16246_
                _reload?16247_)))
          (if (and _ctx16250_ _eval?16248_)
              (gx#eval-module _ctx16250_)
              '#!void)
          _ctx16250_)))
    (define gx#import-module__0
      (lambda (_path16255_)
        (let* ((_reload?16257_ '#f) (_eval?16259_ '#f))
          (gx#import-module__% _path16255_ _reload?16257_ _eval?16259_))))
    (define gx#import-module__1
      (lambda (_path16261_ _reload?16262_)
        (let ((_eval?16264_ '#f))
          (gx#import-module__% _path16261_ _reload?16262_ _eval?16264_))))
    (define gx#import-module
      (lambda _g17253_
        (let ((_g17252_ (##length _g17253_)))
          (cond ((##fx= _g17252_ 1)
                 (apply (lambda (_path16255_)
                          (gx#import-module__0 _path16255_))
                        _g17253_))
                ((##fx= _g17252_ 2)
                 (apply (lambda (_path16261_ _reload?16262_)
                          (gx#import-module__1 _path16261_ _reload?16262_))
                        _g17253_))
                ((##fx= _g17252_ 3)
                 (apply (lambda (_path16266_ _reload?16267_ _eval?16268_)
                          (gx#import-module__%
                           _path16266_
                           _reload?16267_
                           _eval?16268_))
                        _g17253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g17253_))))))
    (define gx#eval-module
      (lambda (_mod16243_) ((gx#current-expander-module-eval) _mod16243_)))
    (define gx#core-eval-module
      (lambda (_obj16228_)
        (letrec ((_force-e16230_
                  (lambda (_getf16239_ _e16240_)
                    (call-with-parameters
                     (lambda () (force (_getf16239_ _e16240_)))
                     gx#current-expander-context
                     _e16240_
                     gx#current-expander-phi
                     '0))))
          (let _recur16232_ ((_e16234_ _obj16228_))
            (if (##structure-instance-of? _e16234_ 'gx#module-context::t)
                (begin
                  (let ((_$e16236_ (gx#core-context-prelude__% _e16234_)))
                    (if _$e16236_ (_recur16232_ _$e16236_) '#!void))
                  (_force-e16230_ gx#module-context-e _e16234_))
                (if (##structure-instance-of? _e16234_ 'gx#prelude-context::t)
                    (_force-e16230_ gx#prelude-context-e _e16234_)
                    (if (gx#stx-string? _e16234_)
                        (_recur16232_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e16234_)))
                        (if (gx#core-library-module-path? _e16234_)
                            (_recur16232_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e16234_)))
                            (error '"Cannot eval module" _obj16228_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx16211_)
        (let _lp16213_ ((_e16215_ _ctx16211_))
          (if (or (##structure-instance-of? _e16215_ 'gx#module-context::t)
                  (##structure-instance-of? _e16215_ 'gx#local-context::t))
              (_lp16213_
               (##unchecked-structure-ref _e16215_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e16215_ 'gx#prelude-context::t)
                  _e16215_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx16224_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx16224_))))
    (define gx#core-context-prelude
      (lambda _g17255_
        (let ((_g17254_ (##length _g17255_)))
          (cond ((##fx= _g17254_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g17255_))
                ((##fx= _g17254_ 1)
                 (apply (lambda (_ctx16226_)
                          (gx#core-context-prelude__% _ctx16226_))
                        _g17255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g17255_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx16201_)
        (let* ((_ht16203_ (gx#current-expander-module-registry))
               (_$e16205_ (table-ref _ht16203_ _ctx16201_ '#f)))
          (if _$e16205_
              (values _$e16205_)
              (let ((_pre16208_
                     (let ((__obj17246 (make-object gx#prelude-context::t '8)))
                       (gx#prelude-context:::init!__0 __obj17246 _ctx16201_)
                       __obj17246)))
                (table-set! _ht16203_ _ctx16201_ _pre16208_)
                _pre16208_)))))
    (define gx#core-import-module__%
      (lambda (_rpath16082_ _reload?16083_)
        (letrec ((_import-source16085_
                  (lambda (_path16170_)
                    (if (member _path16170_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path16170_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g17256_ (gx#core-read-module _path16170_)))
                         (begin
                           (let ((_g17257_
                                  (if (##values? _g17256_)
                                      (##vector-length _g17256_)
                                      1)))
                             (if (not (##fx= _g17257_ 4))
                                 (error "Context expects 4 values" _g17257_)))
                           (let ((_pre16173_ (##vector-ref _g17256_ 0))
                                 (_id16174_ (##vector-ref _g17256_ 1))
                                 (_ns16175_ (##vector-ref _g17256_ 2))
                                 (_body16176_ (##vector-ref _g17256_ 3)))
                             (let* ((_prelude16181_
                                     (if (##structure-instance-of?
                                          _pre16173_
                                          'gx#prelude-context::t)
                                         _pre16173_
                                         (if (##structure-instance-of?
                                              _pre16173_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre16173_)
                                             (if (string? _pre16173_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre16173_))
                                                 (if (not _pre16173_)
                                                     (let ((_$e16178_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e16178_
                                                           _$e16178_
                                                           (let ((__obj17247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj17247 '#f)
                     __obj17247)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath16082_
                                                            _pre16173_))))))
                                    (_ctx16183_
                                     (let ((__obj17248
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (gx#module-context:::init!
                                        __obj17248
                                        _id16174_
                                        _prelude16181_
                                        _ns16175_
                                        _path16170_)
                                       __obj17248))
                                    (_body16185_
                                     (gx#core-expand-module-begin
                                      _body16176_
                                      _ctx16183_))
                                    (_body16187_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body16185_)
                                      _path16170_
                                      _ctx16183_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx16183_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body16187_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx16183_
                                _body16187_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path16170_
                                _ctx16183_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id16174_
                                _ctx16183_)
                               _ctx16183_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path16170_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule16086_
                  (lambda (_rpath16098_)
                    (let* ((_rpath1609916106_ _rpath16098_)
                           (_E1610116110_
                            (lambda ()
                              (error '"No clause matching" _rpath1609916106_)))
                           (_K1610216158_
                            (lambda (_refs16113_ _origin16114_)
                              (let ((_ctx16116_
                                     (if _origin16114_
                                         (gx#core-import-module__%
                                          _origin16114_
                                          _reload?16083_)
                                         (gx#current-expander-context))))
                                (let _lp16118_ ((_rest16120_ _refs16113_)
                                                (_ctx16121_ _ctx16116_))
                                  (let* ((_rest1612216130_ _rest16120_)
                                         (_else1612416138_
                                          (lambda () _ctx16121_))
                                         (_K1612616146_
                                          (lambda (_rest16141_ _id16142_)
                                            (let ((_bind16144_
                                                   (gx#resolve-identifier__%
                                                    _id16142_
                                                    '0
                                                    _ctx16121_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind16144_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind16144_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp16118_
                                                   _rest16141_
                                                   (##unchecked-structure-ref
                                                    _bind16144_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath16098_
                                                         _id16142_
                                                         _bind16144_))))))
                                    (if (##pair? _rest1612216130_)
                                        (let ((_hd1612716149_
                                               (##car _rest1612216130_))
                                              (_tl1612816151_
                                               (##cdr _rest1612216130_)))
                                          (let* ((_id16154_ _hd1612716149_)
                                                 (_rest16156_ _tl1612816151_))
                                            (_K1612616146_
                                             _rest16156_
                                             _id16154_)))
                                        (_else1612416138_))))))))
                      (if (##pair? _rpath1609916106_)
                          (let ((_hd1610316161_ (##car _rpath1609916106_))
                                (_tl1610416163_ (##cdr _rpath1609916106_)))
                            (let* ((_origin16166_ _hd1610316161_)
                                   (_refs16168_ _tl1610416163_))
                              (_K1610216158_ _refs16168_ _origin16166_)))
                          (_E1610116110_))))))
          (let ((_$e16088_
                 (if (not _reload?16083_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath16082_
                      '#f)
                     '#f)))
            (if _$e16088_
                (values _$e16088_)
                (if (list? _rpath16082_)
                    (_import-submodule16086_ _rpath16082_)
                    (if (gx#core-library-module-path? _rpath16082_)
                        (let ((_ctx16091_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath16082_)
                                _reload?16083_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath16082_
                           _ctx16091_)
                          _ctx16091_)
                        (let* ((_npath16093_ (path-normalize _rpath16082_))
                               (_$e16095_
                                (if (not _reload?16083_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath16093_
                                     '#f)
                                    '#f)))
                          (if _$e16095_
                              (values _$e16095_)
                              (_import-source16085_ _npath16093_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath16194_)
        (let ((_reload?16196_ '#f))
          (gx#core-import-module__% _rpath16194_ _reload?16196_))))
    (define gx#core-import-module
      (lambda _g17259_
        (let ((_g17258_ (##length _g17259_)))
          (cond ((##fx= _g17258_ 1)
                 (apply (lambda (_rpath16194_)
                          (gx#core-import-module__0 _rpath16194_))
                        _g17259_))
                ((##fx= _g17258_ 2)
                 (apply (lambda (_rpath16198_ _reload?16199_)
                          (gx#core-import-module__%
                           _rpath16198_
                           _reload?16199_))
                        _g17259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g17259_))))))
    (define gx#core-read-module
      (lambda (_path16076_)
        (with-catch
         (lambda (_exn16078_)
           (if (and (datum-parsing-exception? _exn16078_)
                    (eq? (datum-parsing-exception-filepos _exn16078_) '0))
               (gx#core-read-module/lang _path16076_)
               (raise _exn16078_)))
         (lambda () (gx#core-read-module/sexp _path16076_)))))
    (define gx#core-read-module/sexp
      (lambda (_path15939_)
        (let _lp15941_ ((_body15943_ (read-syntax-from-file _path15939_))
                        (_pre15944_ '#f)
                        (_ns15945_ '#f)
                        (_pkg15946_ '#f))
          (let* ((_e1594715971_ _body15943_)
                 (_E1596315993_
                  (lambda ()
                    (let ((_g17260_
                           (if _pkg15946_
                               (values _pre15944_ _ns15945_ _pkg15946_)
                               (gx#core-read-module-package
                                _path15939_
                                _pre15944_
                                _ns15945_))))
                      (begin
                        (let ((_g17261_
                               (if (##values? _g17260_)
                                   (##vector-length _g17260_)
                                   1)))
                          (if (not (##fx= _g17261_ 3))
                              (error "Context expects 3 values" _g17261_)))
                        (let ((_pre15975_ (##vector-ref _g17260_ 0))
                              (_ns15976_ (##vector-ref _g17260_ 1))
                              (_pkg15977_ (##vector-ref _g17260_ 2)))
                          (let* ((_prelude15979_
                                  (if (gx#core-bound-module-prelude?
                                       _pre15975_)
                                      (gx#syntax-local-e__0 _pre15975_)
                                      (if (gx#core-library-module-path?
                                           _pre15975_)
                                          (gx#core-resolve-library-module-path
                                           _pre15975_)
                                          (if (gx#stx-string? _pre15975_)
                                              (gx#core-resolve-module-path__%
                                               _pre15975_
                                               _path15939_)
                                              (gx#stx-e _pre15975_)))))
                                 (_path-id15981_
                                  (gx#core-module-path->namespace _path15939_))
                                 (_pkg-id15983_
                                  (if _pkg15977_
                                      (string-append
                                       _pkg15977_
                                       '"/"
                                       _path-id15981_)
                                      _path-id15981_))
                                 (_module-id15985_
                                  (string->symbol _pkg-id15983_))
                                 (_module-ns15990_
                                  (if (eq? _ns15976_ '#!void)
                                      '#f
                                      (let ((_$e15987_ _ns15976_))
                                        (if _$e15987_
                                            _$e15987_
                                            _pkg-id15983_)))))
                            (values _prelude15979_
                                    _module-id15985_
                                    _module-ns15990_
                                    _body15943_)))))))
                 (_E1595616022_
                  (lambda ()
                    (if (gx#stx-pair? _e1594715971_)
                        (let ((_e1596415997_ (gx#syntax-e _e1594715971_)))
                          (let ((_hd1596516000_ (##car _e1596415997_))
                                (_tl1596616002_ (##cdr _e1596415997_)))
                            (if (eq? (gx#stx-e _hd1596516000_) 'package:)
                                (if (gx#stx-pair? _tl1596616002_)
                                    (let ((_e1596716005_
                                           (gx#syntax-e _tl1596616002_)))
                                      (let ((_hd1596816008_
                                             (##car _e1596716005_))
                                            (_tl1596916010_
                                             (##cdr _e1596716005_)))
                                        (let* ((_pkg16013_ _hd1596816008_)
                                               (_rest16015_ _tl1596916010_))
                                          (if '#t
                                              (let ((_pkg16020_
                                                     (if (gx#identifier?
                                                          _pkg16013_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg16013_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg16013_)
                         (gx#stx-false? _pkg16013_))
                     (gx#stx-e _pkg16013_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg16013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp15941_
                                                 _rest16015_
                                                 _pre15944_
                                                 _ns15945_
                                                 _pkg16020_))
                                              (_E1596315993_)))))
                                    (_E1596315993_))
                                (_E1596315993_))))
                        (_E1596315993_))))
                 (_E1594916048_
                  (lambda ()
                    (if (gx#stx-pair? _e1594715971_)
                        (let ((_e1595716026_ (gx#syntax-e _e1594715971_)))
                          (let ((_hd1595816029_ (##car _e1595716026_))
                                (_tl1595916031_ (##cdr _e1595716026_)))
                            (if (eq? (gx#stx-e _hd1595816029_) 'namespace:)
                                (if (gx#stx-pair? _tl1595916031_)
                                    (let ((_e1596016034_
                                           (gx#syntax-e _tl1595916031_)))
                                      (let ((_hd1596116037_
                                             (##car _e1596016034_))
                                            (_tl1596216039_
                                             (##cdr _e1596016034_)))
                                        (let* ((_ns16042_ _hd1596116037_)
                                               (_rest16044_ _tl1596216039_))
                                          (if '#t
                                              (let ((_ns16046_
                                                     (if (gx#identifier?
                                                          _ns16042_)
                                                         (symbol->string
                                                          (gx#stx-e _ns16042_))
                                                         (if (gx#stx-string?
                                                              _ns16042_)
                                                             (gx#stx-e
                                                              _ns16042_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns16042_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns16042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp15941_
                                                 _rest16044_
                                                 _pre15944_
                                                 _ns16046_
                                                 _pkg15946_))
                                              (_E1595616022_)))))
                                    (_E1595616022_))
                                (_E1595616022_))))
                        (_E1595616022_))))
                 (_E1594816072_
                  (lambda ()
                    (if (gx#stx-pair? _e1594715971_)
                        (let ((_e1595016052_ (gx#syntax-e _e1594715971_)))
                          (let ((_hd1595116055_ (##car _e1595016052_))
                                (_tl1595216057_ (##cdr _e1595016052_)))
                            (if (eq? (gx#stx-e _hd1595116055_) 'prelude:)
                                (if (gx#stx-pair? _tl1595216057_)
                                    (let ((_e1595316060_
                                           (gx#syntax-e _tl1595216057_)))
                                      (let ((_hd1595416063_
                                             (##car _e1595316060_))
                                            (_tl1595516065_
                                             (##cdr _e1595316060_)))
                                        (let* ((_prelude16068_ _hd1595416063_)
                                               (_rest16070_ _tl1595516065_))
                                          (if '#t
                                              (_lp15941_
                                               _rest16070_
                                               _prelude16068_
                                               _ns15945_
                                               _pkg15946_)
                                              (_E1594916048_)))))
                                    (_E1594916048_))
                                (_E1594916048_))))
                        (_E1594916048_)))))
            (_E1594816072_)))))
    (define gx#core-read-module/lang
      (lambda (_path15766_)
        (letrec ((_default-read-module-body15768_
                  (lambda (_inp15931_)
                    (let _lp15933_ ((_body15935_ '()))
                      (let ((_next15937_ (read-syntax _inp15931_)))
                        (if (eof-object? _next15937_)
                            (reverse _body15935_)
                            (_lp15933_ (cons _next15937_ _body15935_)))))))
                 (_read-body15769_
                  (lambda (_inp15850_
                           _pre15851_
                           _ns15852_
                           _pkg15853_
                           _args15854_)
                    (let ((_g17262_
                           (if _pkg15853_
                               (values _pre15851_ _ns15852_ _pkg15853_)
                               (gx#core-read-module-package
                                _path15766_
                                _pre15851_
                                _ns15852_))))
                      (begin
                        (let ((_g17263_
                               (if (##values? _g17262_)
                                   (##vector-length _g17262_)
                                   1)))
                          (if (not (##fx= _g17263_ 3))
                              (error "Context expects 3 values" _g17263_)))
                        (let ((_pre15856_ (##vector-ref _g17262_ 0))
                              (_ns15857_ (##vector-ref _g17262_ 1))
                              (_pkg15858_ (##vector-ref _g17262_ 2)))
                          (let* ((_prelude15860_
                                  (gx#import-module__0 _pre15856_))
                                 (_read-module-body15914_
                                  (let ((_$e15906_
                                         (find (lambda (_e1586115863_)
                                                 (let* ((_g1586515875_
                                                         _e1586115863_)
                                                        (_else1586715883_
                                                         (lambda () '#f))
                                                        (_K1586915887_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g1586515875_
                                                        'gx#module-export::t)
                                                       (let* ((_e1587015890_
                                                               (##vector-ref
                                                                _g1586515875_
                                                                '1))
                                                              (_e1587115893_
                                                               (##vector-ref
                                                                _g1586515875_
                                                                '2))
                                                              (_e1587215896_
                                                               (##vector-ref
                                                                _g1586515875_
                                                                '3)))
                                                         (if (##eq? _e1587215896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1587315899_ (##vector-ref _g1586515875_ '4)))
                       (if ((lambda (_g1590115903_)
                              (eq? _g1590115903_ 'read-module-body))
                            _e1587315899_)
                           (_K1586915887_)
                           (_else1586715883_)))
                     (_else1586715883_)))
               (_else1586715883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude15860_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e15906_
                                        ((lambda (_xport15909_)
                                           (let ((_proc15912_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport15909_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc15912_)
                                                 _proc15912_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path15766_
                                                  _pre15856_
                                                  _proc15912_))))
                                         _$e15906_)
                                        _default-read-module-body15768_)))
                                 (_path-id15916_
                                  (gx#core-module-path->namespace _path15766_))
                                 (_pkg-id15918_
                                  (if _pkg15858_
                                      (string-append
                                       _pkg15858_
                                       '"/"
                                       _path-id15916_)
                                      _path-id15916_))
                                 (_module-id15920_
                                  (string->symbol _pkg-id15918_))
                                 (_module-ns15925_
                                  (let ((_$e15922_ _ns15857_))
                                    (if _$e15922_ _$e15922_ _pkg-id15918_)))
                                 (_body15928_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body15914_ _inp15850_))
                                   gx#current-module-reader-path
                                   _path15766_
                                   gx#current-module-reader-args
                                   _args15854_)))
                            (values _prelude15860_
                                    _module-id15920_
                                    _module-ns15925_
                                    _body15928_)))))))
                 (_string-e15770_
                  (lambda (_obj15847_ _what15848_)
                    (if (string? _obj15847_)
                        _obj15847_
                        (if (symbol? _obj15847_)
                            (symbol->string _obj15847_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what15848_)
                             _path15766_
                             _obj15847_)))))
                 (_read-lang-args15771_
                  (lambda (_inp15802_ _args15803_)
                    (let* ((_args1580415812_ _args15803_)
                           (_else1580615820_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path15766_)))
                           (_K1580815835_
                            (lambda (_args15823_ _prelude15824_)
                              (let* ((_pkg15826_ (pgetq 'package: _args15823_))
                                     (_pkg15828_
                                      (if _pkg15826_
                                          (_string-e15770_
                                           _pkg15826_
                                           '"package")
                                          '#f))
                                     (_ns15830_
                                      (pgetq 'namespace: _args15823_))
                                     (_ns15832_
                                      (if _ns15830_
                                          (_string-e15770_
                                           _ns15830_
                                           '"namespace")
                                          '#f)))
                                (_read-body15769_
                                 _inp15802_
                                 _prelude15824_
                                 _ns15832_
                                 _pkg15828_
                                 _args15823_)))))
                      (if (##pair? _args1580415812_)
                          (let ((_hd1580915838_ (##car _args1580415812_))
                                (_tl1581015840_ (##cdr _args1580415812_)))
                            (let* ((_prelude15843_ _hd1580915838_)
                                   (_args15845_ _tl1581015840_))
                              (_K1580815835_ _args15845_ _prelude15843_)))
                          (_else1580615820_)))))
                 (_read-lang15772_
                  (lambda (_inp15777_)
                    (let* ((_head15779_ (read-line _inp15777_))
                           (_$e15781_ (string-index _head15779_ '#\space)))
                      (if _$e15781_
                          ((lambda (_ix15784_)
                             (let ((_lang15786_
                                    (substring _head15779_ '0 _ix15784_)))
                               (if (equal? _lang15786_ '"#lang")
                                   (let* ((_rest15788_
                                           (substring
                                            _head15779_
                                            (fx+ _ix15784_ '1)
                                            (string-length _head15779_)))
                                          (_args15799_
                                           (with-catch
                                            (lambda (_g1578915791_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path15766_
                                               _g1578915791_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest15788_
                                               (lambda (_g1579415796_)
                                                 (read-all
                                                  _g1579415796_
                                                  read)))))))
                                     (_read-lang-args15771_
                                      _inp15777_
                                      _args15799_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path15766_))))
                           _$e15781_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path15766_)))))
                 (_read-e15773_
                  (lambda (_inp15775_)
                    (if (eq? (peek-char _inp15775_) '#\#)
                        (_read-lang15772_ _inp15775_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path15766_)))))
          (gx#call-with-input-source-file _path15766_ _read-e15773_))))
    (define gx#core-read-module-package
      (lambda (_path15720_ _pre15721_ _ns15722_)
        (letrec ((_string-e15724_
                  (lambda (_e15764_)
                    (if (symbol? _e15764_)
                        (symbol->string _e15764_)
                        (if (string? _e15764_)
                            _e15764_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e15764_))))))
          (let _lp15726_ ((_dir15728_ (path-directory _path15720_))
                          (_pkg-path15729_ '()))
            (let ((_gerbil.pkg15731_ (path-expand '"gerbil.pkg" _dir15728_)))
              (if (file-exists? _gerbil.pkg15731_)
                  (let ((_plist15733_
                         (gx#core-library-package-plist__% _dir15728_ '#t)))
                    (if (null? _plist15733_)
                        (let ((_pkg15735_
                               (if (not (null? _pkg-path15729_))
                                   (string-join _pkg-path15729_ '"/")
                                   '#f)))
                          (values _pre15721_ _ns15722_ _pkg15735_))
                        (if (list? _plist15733_)
                            (let* ((_root15737_ (pgetq 'package: _plist15733_))
                                   (_pkg15741_
                                    (let ((_pkg-path15739_
                                           (if _root15737_
                                               (cons (_string-e15724_
                                                      _root15737_)
                                                     _pkg-path15729_)
                                               _pkg-path15729_)))
                                      (if (not (null? _pkg-path15739_))
                                          (string-join _pkg-path15739_ '"/")
                                          '#f)))
                                   (_ns15748_
                                    (let ((_ns15746_
                                           (let ((_$e15743_ _ns15722_))
                                             (if _$e15743_
                                                 _$e15743_
                                                 (pgetq 'namespace:
                                                        _plist15733_)))))
                                      (if _ns15746_
                                          (_string-e15724_ _ns15746_)
                                          '#f)))
                                   (_pre15753_
                                    (let ((_$e15750_ _pre15721_))
                                      (if _$e15750_
                                          _$e15750_
                                          (pgetq 'prelude: _plist15733_)))))
                              (values _pre15753_ _ns15748_ _pkg15741_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist15733_))))
                  (let ((_dir*15756_
                         (path-strip-trailing-directory-separator _dir15728_)))
                    (if (or (string-empty? _dir*15756_)
                            (equal? _dir15728_ _dir*15756_))
                        (values _pre15721_ _ns15722_ '#f)
                        (let ((_xpath15761_ (path-strip-directory _dir*15756_))
                              (_xdir15762_ (path-directory _dir*15756_)))
                          (_lp15726_
                           _xdir15762_
                           (cons _xpath15761_ _pkg-path15729_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path15718_)
        (path-strip-extension (path-strip-directory _path15718_))))
    (define gx#core-module-path->id
      (lambda (_path15716_)
        (string->symbol (gx#core-module-path->namespace _path15716_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path15695_ _rel15696_)
        (let* ((_path15698_ (gx#stx-e _stx-path15695_))
               (_path15700_
                (if (string-empty? (path-extension _path15698_))
                    (string-append _path15698_ '".ss")
                    _path15698_)))
          (gx#core-resolve-path__%
           _path15700_
           (let ((_$e15703_ (gx#stx-source _stx-path15695_)))
             (if _$e15703_ _$e15703_ _rel15696_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path15709_)
        (let ((_rel15711_ '#f))
          (gx#core-resolve-module-path__% _stx-path15709_ _rel15711_))))
    (define gx#core-resolve-module-path
      (lambda _g17265_
        (let ((_g17264_ (##length _g17265_)))
          (cond ((##fx= _g17264_ 1)
                 (apply (lambda (_stx-path15709_)
                          (gx#core-resolve-module-path__0 _stx-path15709_))
                        _g17265_))
                ((##fx= _g17264_ 2)
                 (apply (lambda (_stx-path15713_ _rel15714_)
                          (gx#core-resolve-module-path__%
                           _stx-path15713_
                           _rel15714_))
                        _g17265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g17265_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath15581_)
        (let* ((_spath15583_ (symbol->string (gx#stx-e _libpath15581_)))
               (_spath15585_
                (substring _spath15583_ '1 (string-length _spath15583_)))
               (_ext15587_ (path-extension _spath15585_))
               (_ssi15589_
                (if (string-empty? _ext15587_)
                    (string-append _spath15585_ '".ssi")
                    (string-append
                     (path-strip-extension _spath15585_)
                     '".ssi")))
               (_srcs15593_
                (if (string-empty? _ext15587_)
                    (map (lambda (_ext15591_)
                           (string-append _spath15585_ _ext15591_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath15585_ '()))))
          (let _lp15596_ ((_rest15598_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest1559915608_ _rest15598_)
                   (_E1560215612_
                    (lambda ()
                      (error '"No clause matching" _rest1559915608_))))
              (let ((_K1560415682_
                     (lambda (_rest15623_ _dir15624_)
                       (letrec ((_resolve15626_
                                 (lambda (_ssi15638_ _srcs15639_)
                                   (let ((_compiled-path15641_
                                          (path-expand _ssi15638_ _dir15624_)))
                                     (if (file-exists? _compiled-path15641_)
                                         (path-normalize _compiled-path15641_)
                                         (let _lpr15643_ ((_rest-src15645_
                                                           _srcs15639_))
                                           (let* ((_rest-src1564615654_
                                                   _rest-src15645_)
                                                  (_else1564815662_
                                                   (lambda ()
                                                     (_lp15596_ _rest15623_)))
                                                  (_K1565015670_
                                                   (lambda (_rest-src15665_
                                                            _src15666_)
                                                     (let ((_src-path15668_
                                                            (path-expand
                                                             _src15666_
                                                             _dir15624_)))
                                                       (if (file-exists?
                                                            _src-path15668_)
                                                           (path-normalize
                                                            _src-path15668_)
                                                           (_lpr15643_
                                                            _rest-src15665_))))))
                                             (if (##pair? _rest-src1564615654_)
                                                 (let ((_hd1565115673_
                                                        (##car _rest-src1564615654_))
                                                       (_tl1565215675_
                                                        (##cdr _rest-src1564615654_)))
                                                   (let* ((_src15678_
                                                           _hd1565115673_)
                                                          (_rest-src15680_
                                                           _tl1565215675_))
                                                     (_K1565015670_
                                                      _rest-src15680_
                                                      _src15678_)))
                                                 (_else1564815662_)))))))))
                         (let ((_$e15628_
                                (gx#core-library-package-path-prefix
                                 _dir15624_)))
                           (if _$e15628_
                               ((lambda (_prefix15631_)
                                  (if (string-prefix?
                                       _prefix15631_
                                       _spath15585_)
                                      (let ((_ssi15635_
                                             (substring
                                              _ssi15589_
                                              (string-length _prefix15631_)
                                              (string-length _ssi15589_)))
                                            (_srcs15636_
                                             (map (lambda (_src15633_)
                                                    (substring
                                                     _src15633_
                                                     (string-length
                                                      _prefix15631_)
                                                     (string-length
                                                      _src15633_)))
                                                  _srcs15593_)))
                                        (_resolve15626_
                                         _ssi15635_
                                         _srcs15636_))
                                      (_lp15596_ _rest15623_)))
                                _$e15628_)
                               (_resolve15626_ _ssi15589_ _srcs15593_))))))
                    (_K1560315617_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath15581_))))
                (let ((_try-match1560115620_
                       (lambda ()
                         (if (##null? _rest1559915608_)
                             (_K1560315617_)
                             (_E1560215612_)))))
                  (if (##pair? _rest1559915608_)
                      (let ((_tl1560615687_ (##cdr _rest1559915608_))
                            (_hd1560515685_ (##car _rest1559915608_)))
                        (let ((_dir15690_ _hd1560515685_)
                              (_rest15692_ _tl1560615687_))
                          (_K1560415682_ _rest15692_ _dir15690_)))
                      (_try-match1560115620_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath15554_)
        (letrec ((_resolve15556_
                  (lambda (_path15573_ _base15574_)
                    (let ((_$e15576_ (string-rindex _base15574_ '#\/)))
                      (if _$e15576_
                          ((lambda (_idx15579_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base15574_ '0 _idx15579_)
                                '"/"
                                _path15573_))))
                           _$e15576_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path15573_))))))))
          (let ((_spath15558_ (symbol->string (gx#stx-e _modpath15554_)))
                (_mod15559_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod15559_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath15554_))
            (let ((_mpath15561_
                   (symbol->string
                    (##structure-ref
                     _mod15559_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp15563_ ((_spath15565_ _spath15558_)
                              (_mpath15566_ _mpath15561_))
                (if (string-prefix? '"../" _spath15565_)
                    (let ((_$e15568_ (string-rindex _mpath15566_ '#\/)))
                      (if _$e15568_
                          ((lambda (_idx15571_)
                             (_lp15563_
                              (substring
                               _spath15565_
                               '3
                               (string-length _spath15565_))
                              (substring _mpath15566_ '0 _idx15571_)))
                           _$e15568_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath15554_)))
                    (if (string-prefix? '"./" _spath15565_)
                        (_lp15563_
                         (substring
                          _spath15565_
                          '2
                          (string-length _spath15565_))
                         _mpath15566_)
                        (_resolve15556_ _spath15565_ _mpath15566_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir15547_)
        (let ((_$e15549_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir15547_))))
          (if _$e15549_
              ((lambda (_pkg15552_)
                 (string-append (symbol->string _pkg15552_) '"/"))
               _$e15549_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir15519_ _exists?15520_)
        (let* ((_cache15522_ (gx#core-library-package-cache))
               (_$e15524_ (table-ref _cache15522_ _dir15519_ '#f)))
          (if _$e15524_
              (values _$e15524_)
              (let* ((_gerbil.pkg15527_ (path-expand '"gerbil.pkg" _dir15519_))
                     (_plist15534_
                      (if (or _exists?15520_ (file-exists? _gerbil.pkg15527_))
                          (let ((_e15532_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg15527_
                                  read)))
                            (if (eof-object? _e15532_)
                                '()
                                (if (list? _e15532_)
                                    _e15532_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg15527_
                                     _e15532_))))
                          '())))
                (table-set! _cache15522_ _dir15519_ _plist15534_)
                _plist15534_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir15540_)
        (let ((_exists?15542_ '#f))
          (gx#core-library-package-plist__% _dir15540_ _exists?15542_))))
    (define gx#core-library-package-plist
      (lambda _g17267_
        (let ((_g17266_ (##length _g17267_)))
          (cond ((##fx= _g17266_ 1)
                 (apply (lambda (_dir15540_)
                          (gx#core-library-package-plist__0 _dir15540_))
                        _g17267_))
                ((##fx= _g17266_ 2)
                 (apply (lambda (_dir15544_ _exists?15545_)
                          (gx#core-library-package-plist__%
                           _dir15544_
                           _exists?15545_))
                        _g17267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g17267_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e15513_ (gx#current-expander-module-library-package-cache)))
          (if _$e15513_
              (values _$e15513_)
              (let ((_cache15516_ (make-table)))
                (gx#current-expander-module-library-package-cache _cache15516_)
                _cache15516_)))))
    (define gx#core-library-module-path?
      (lambda (_stx15510_) (gx#core-special-module-path? _stx15510_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx15508_) (gx#core-special-module-path? _stx15508_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx15503_ _char15504_)
        (if (gx#identifier? _stx15503_)
            (if (interned-symbol? (gx#stx-e _stx15503_))
                (let ((_str15506_ (symbol->string (gx#stx-e _stx15503_))))
                  (if (fx> (string-length _str15506_) '1)
                      (eq? (string-ref _str15506_ '0) _char15504_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx15497_)
        (gx#core-bound-identifier?__%
         _stx15497_
         (lambda (_g1549815500_)
           (gx#expander-binding?__% _g1549815500_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx15491_)
        (gx#core-bound-identifier?__%
         _stx15491_
         (lambda (_g1549215494_)
           (gx#expander-binding?__% _g1549215494_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx15478_)
        (letrec ((_module-prelude?15480_
                  (lambda (_e15486_)
                    (let ((_$e15488_
                           (##structure-instance-of?
                            _e15486_
                            'gx#module-context::t)))
                      (if _$e15488_
                          _$e15488_
                          (##structure-instance-of?
                           _e15486_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx15478_
           (lambda (_g1548115483_)
             (gx#expander-binding?__%
              _g1548115483_
              _module-prelude?15480_))))))
    (define gx#core-bind-import!__%
      (lambda (_in15408_ _ctx15409_ _force-weak?15410_)
        (let* ((_in1541115420_ _in15408_)
               (_E1541315424_
                (lambda () (error '"No clause matching" _in1541115420_)))
               (_K1541415437_
                (lambda (_weak?15427_ _phi15428_ _key15429_ _source15430_)
                  (gx#core-bind!__%
                   _key15429_
                   (let ((_e15432_
                          (gx#core-resolve-module-export _source15430_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e15432_ '1 gx#binding::t '#f)
                      _key15429_
                      _phi15428_
                      _e15432_
                      (##unchecked-structure-ref
                       _source15430_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e15434_ _force-weak?15410_))
                        (if _$e15434_ _$e15434_ _weak?15427_))))
                   gx#core-context-rebind?
                   _phi15428_
                   _ctx15409_))))
          (if (##structure-direct-instance-of?
               _in1541115420_
               'gx#module-import::t)
              (let* ((_e1541515440_ (##vector-ref _in1541115420_ '1))
                     (_source15443_ _e1541515440_)
                     (_e1541615445_ (##vector-ref _in1541115420_ '2))
                     (_key15448_ _e1541615445_)
                     (_e1541715450_ (##vector-ref _in1541115420_ '3))
                     (_phi15453_ _e1541715450_)
                     (_e1541815455_ (##vector-ref _in1541115420_ '4))
                     (_weak?15458_ _e1541815455_))
                (_K1541415437_
                 _weak?15458_
                 _phi15453_
                 _key15448_
                 _source15443_))
              (_E1541315424_)))))
    (define gx#core-bind-import!__0
      (lambda (_in15463_)
        (let* ((_ctx15465_ (gx#current-expander-context))
               (_force-weak?15467_ '#f))
          (gx#core-bind-import!__% _in15463_ _ctx15465_ _force-weak?15467_))))
    (define gx#core-bind-import!__1
      (lambda (_in15469_ _ctx15470_)
        (let ((_force-weak?15472_ '#f))
          (gx#core-bind-import!__% _in15469_ _ctx15470_ _force-weak?15472_))))
    (define gx#core-bind-import!
      (lambda _g17269_
        (let ((_g17268_ (##length _g17269_)))
          (cond ((##fx= _g17268_ 1)
                 (apply (lambda (_in15463_)
                          (gx#core-bind-import!__0 _in15463_))
                        _g17269_))
                ((##fx= _g17268_ 2)
                 (apply (lambda (_in15469_ _ctx15470_)
                          (gx#core-bind-import!__1 _in15469_ _ctx15470_))
                        _g17269_))
                ((##fx= _g17268_ 3)
                 (apply (lambda (_in15474_ _ctx15475_ _force-weak?15476_)
                          (gx#core-bind-import!__%
                           _in15474_
                           _ctx15475_
                           _force-weak?15476_))
                        _g17269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g17269_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in15394_ _ctx15395_)
        (gx#core-bind-import!__% _in15394_ _ctx15395_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in15400_)
        (let ((_ctx15402_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in15400_ _ctx15402_))))
    (define gx#core-bind-weak-import!
      (lambda _g17271_
        (let ((_g17270_ (##length _g17271_)))
          (cond ((##fx= _g17270_ 1)
                 (apply (lambda (_in15400_)
                          (gx#core-bind-weak-import!__0 _in15400_))
                        _g17271_))
                ((##fx= _g17270_ 2)
                 (apply (lambda (_in15404_ _ctx15405_)
                          (gx#core-bind-weak-import!__% _in15404_ _ctx15405_))
                        _g17271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g17271_))))))
    (define gx#core-resolve-module-export
      (lambda (_out15285_)
        (letrec ((_subst15287_
                  (lambda (_key15333_)
                    (let* ((_key1533415342_ _key15333_)
                           (_else1533615350_ (lambda () _key15333_))
                           (_K1533815381_
                            (lambda (_mark15353_ _id15354_)
                              (let* ((_mark1535515361_ _mark15353_)
                                     (_E1535715365_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark1535515361_)))
                                     (_K1535815373_
                                      (lambda (_subst15368_)
                                        (let ((_$e15370_
                                               (if _subst15368_
                                                   (table-ref
                                                    _subst15368_
                                                    _id15354_
                                                    '#f)
                                                   '#f)))
                                          (if _$e15370_
                                              _$e15370_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key15333_))))))
                                (if (##structure-instance-of?
                                     _mark1535515361_
                                     'gx#expander-mark::t)
                                    (let* ((_e1535915376_
                                            (##vector-ref _mark1535515361_ '1))
                                           (_subst15379_ _e1535915376_))
                                      (_K1535815373_ _subst15379_))
                                    (_E1535715365_))))))
                      (if (##pair? _key1533415342_)
                          (let ((_hd1533915384_ (##car _key1533415342_))
                                (_tl1534015386_ (##cdr _key1533415342_)))
                            (let* ((_id15389_ _hd1533915384_)
                                   (_mark15391_ _tl1534015386_))
                              (_K1533815381_ _mark15391_ _id15389_)))
                          (_else1533615350_))))))
          (let* ((_out1528815298_ _out15285_)
                 (_E1529015302_
                  (lambda () (error '"No clause matching" _out1528815298_)))
                 (_K1529115309_
                  (lambda (_phi15305_ _key15306_ _ctx15307_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx15307_ _phi15305_)
                     (_subst15287_ _key15306_)))))
            (if (##structure-direct-instance-of?
                 _out1528815298_
                 'gx#module-export::t)
                (let* ((_e1529215312_ (##vector-ref _out1528815298_ '1))
                       (_ctx15315_ _e1529215312_)
                       (_e1529315317_ (##vector-ref _out1528815298_ '2))
                       (_key15320_ _e1529315317_)
                       (_e1529415322_ (##vector-ref _out1528815298_ '3))
                       (_phi15325_ _e1529415322_)
                       (_e1529515327_ (##vector-ref _out1528815298_ '4))
                       (_e1529615330_ (##vector-ref _out1528815298_ '5)))
                  (_K1529115309_ _phi15325_ _key15320_ _ctx15315_))
                (_E1529015302_))))))
    (define gx#core-module-export->import__%
      (lambda (_out15210_ _rename15211_ _dphi15212_)
        (let* ((_out1521315223_ _out15210_)
               (_E1521515227_
                (lambda () (error '"No clause matching" _out1521315223_)))
               (_K1521615239_
                (lambda (_weak?15230_
                         _name15231_
                         _phi15232_
                         _key15233_
                         _ctx15234_)
                  (##structure
                   gx#module-import::t
                   _out15210_
                   (let ((_$e15236_ _rename15211_))
                     (if _$e15236_ _$e15236_ _name15231_))
                   (fx+ _phi15232_ _dphi15212_)
                   _weak?15230_))))
          (if (##structure-direct-instance-of?
               _out1521315223_
               'gx#module-export::t)
              (let* ((_e1521715242_ (##vector-ref _out1521315223_ '1))
                     (_ctx15245_ _e1521715242_)
                     (_e1521815247_ (##vector-ref _out1521315223_ '2))
                     (_key15250_ _e1521815247_)
                     (_e1521915252_ (##vector-ref _out1521315223_ '3))
                     (_phi15255_ _e1521915252_)
                     (_e1522015257_ (##vector-ref _out1521315223_ '4))
                     (_name15260_ _e1522015257_)
                     (_e1522115262_ (##vector-ref _out1521315223_ '5))
                     (_weak?15265_ _e1522115262_))
                (_K1521615239_
                 _weak?15265_
                 _name15260_
                 _phi15255_
                 _key15250_
                 _ctx15245_))
              (_E1521515227_)))))
    (define gx#core-module-export->import__0
      (lambda (_out15270_)
        (let* ((_rename15272_ '#f) (_dphi15274_ '0))
          (gx#core-module-export->import__%
           _out15270_
           _rename15272_
           _dphi15274_))))
    (define gx#core-module-export->import__1
      (lambda (_out15276_ _rename15277_)
        (let ((_dphi15279_ '0))
          (gx#core-module-export->import__%
           _out15276_
           _rename15277_
           _dphi15279_))))
    (define gx#core-module-export->import
      (lambda _g17273_
        (let ((_g17272_ (##length _g17273_)))
          (cond ((##fx= _g17272_ 1)
                 (apply (lambda (_out15270_)
                          (gx#core-module-export->import__0 _out15270_))
                        _g17273_))
                ((##fx= _g17272_ 2)
                 (apply (lambda (_out15276_ _rename15277_)
                          (gx#core-module-export->import__1
                           _out15276_
                           _rename15277_))
                        _g17273_))
                ((##fx= _g17272_ 3)
                 (apply (lambda (_out15281_ _rename15282_ _dphi15283_)
                          (gx#core-module-export->import__%
                           _out15281_
                           _rename15282_
                           _dphi15283_))
                        _g17273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g17273_))))))
    (define gx#core-expand-module%
      (lambda (_stx15138_)
        (letrec ((_make-context15140_
                  (lambda (_id15191_)
                    (let* ((_super15193_ (gx#current-expander-context))
                           (_bind-id15195_ (gx#stx-e _id15191_))
                           (_mod-id15197_
                            (if (##structure-instance-of?
                                 _super15193_
                                 'gx#module-context::t)
                                (make-symbol
                                 (##structure-ref
                                  _super15193_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id15195_)
                                _bind-id15195_))
                           (_ns15199_ (symbol->string _mod-id15197_))
                           (_path15206_
                            (if (##structure-instance-of?
                                 _super15193_
                                 'gx#module-context::t)
                                (let ((_path15201_
                                       (##unchecked-structure-ref
                                        _super15193_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path15201_)
                                          (null? _path15201_))
                                      (cons _bind-id15195_ _path15201_)
                                      (if (not _path15201_)
                                          _bind-id15195_
                                          (cons _bind-id15195_
                                                (cons _path15201_ '())))))
                                _bind-id15195_)))
                      (let ((__obj17249
                             (make-object gx#module-context::t '11)))
                        (gx#module-context:::init!
                         __obj17249
                         _mod-id15197_
                         _super15193_
                         _ns15199_
                         _path15206_)
                        __obj17249)))))
          (let* ((_e1514115151_ _stx15138_)
                 (_E1514315155_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1514115151_)))
                 (_E1514215187_
                  (lambda ()
                    (if (gx#stx-pair? _e1514115151_)
                        (let ((_e1514415159_ (gx#syntax-e _e1514115151_)))
                          (let ((_hd1514515162_ (##car _e1514415159_))
                                (_tl1514615164_ (##cdr _e1514415159_)))
                            (if (gx#stx-pair? _tl1514615164_)
                                (let ((_e1514715167_
                                       (gx#syntax-e _tl1514615164_)))
                                  (let ((_hd1514815170_ (##car _e1514715167_))
                                        (_tl1514915172_ (##cdr _e1514715167_)))
                                    (let* ((_id15175_ _hd1514815170_)
                                           (_body15177_ _tl1514915172_))
                                      (if (and (gx#identifier? _id15175_)
                                               (gx#stx-list? _body15177_))
                                          (let* ((_ctx15179_
                                                  (_make-context15140_
                                                   _id15175_))
                                                 (_body15181_
                                                  (gx#core-expand-module-begin
                                                   _body15177_
                                                   _ctx15179_))
                                                 (_body15183_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body15181_)
                                                   (gx#stx-source
                                                    _stx15138_))))
                                            (##unchecked-structure-set!
                                             _ctx15179_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body15183_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx15179_
                                             _body15183_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id15175_
                                             _ctx15179_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id15175_)
                                              _body15183_)
                                             (gx#stx-source _stx15138_)))
                                          (_E1514315155_)))))
                                (_E1514315155_))))
                        (_E1514315155_)))))
            (_E1514215187_)))))
    (define gx#core-expand-module-begin
      (lambda (_body15104_ _ctx15105_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx15108_
                   (gx#core-expand-head (cons '%%begin-module _body15104_)))
                  (_e1510915116_ _stx15108_)
                  (_E1511115120_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx15108_)))
                  (_E1511015134_
                   (lambda ()
                     (if (gx#stx-pair? _e1510915116_)
                         (let ((_e1511215124_ (gx#syntax-e _e1510915116_)))
                           (let ((_hd1511315127_ (##car _e1511215124_))
                                 (_tl1511415129_ (##cdr _e1511215124_)))
                             (if (and (gx#identifier? _hd1511315127_)
                                      (gx#core-identifier=?
                                       _hd1511315127_
                                       '%#begin-module))
                                 (let ((_body15132_ _tl1511415129_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx15108_)
                                           _body15132_
                                           (gx#core-expand-module-body
                                            _body15132_))
                                       (_E1511115120_)))
                                 (_E1511115120_))))
                         (_E1511115120_)))))
             (_E1511015134_)))
         gx#current-expander-context
         _ctx15105_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body14900_)
        (letrec ((_expand-special14902_
                  (lambda (_hd15031_ _K15032_ _rest15033_ _r15034_)
                    (let* ((_e1503515052_ _hd15031_)
                           (_E1504715056_
                            (lambda ()
                              (_K15032_
                               _rest15033_
                               (cons (gx#core-expand-top _hd15031_)
                                     _r15034_))))
                           (_E1503715068_
                            (lambda ()
                              (if (gx#stx-pair? _e1503515052_)
                                  (let ((_e1504815060_
                                         (gx#syntax-e _e1503515052_)))
                                    (let ((_hd1504915063_
                                           (##car _e1504815060_))
                                          (_tl1505015065_
                                           (##cdr _e1504815060_)))
                                      (if (and (gx#identifier? _hd1504915063_)
                                               (gx#core-identifier=?
                                                _hd1504915063_
                                                '%#export))
                                          (if '#t
                                              (_K15032_
                                               _rest15033_
                                               (cons _hd15031_ _r15034_))
                                              (_E1504715056_))
                                          (_E1504715056_))))
                                  (_E1504715056_))))
                           (_E1503615100_
                            (lambda ()
                              (if (gx#stx-pair? _e1503515052_)
                                  (let ((_e1503815072_
                                         (gx#syntax-e _e1503515052_)))
                                    (let ((_hd1503915075_
                                           (##car _e1503815072_))
                                          (_tl1504015077_
                                           (##cdr _e1503815072_)))
                                      (if (and (gx#identifier? _hd1503915075_)
                                               (gx#core-identifier=?
                                                _hd1503915075_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1504015077_)
                                              (let ((_e1504115080_
                                                     (gx#syntax-e
                                                      _tl1504015077_)))
                                                (let ((_hd1504215083_
                                                       (##car _e1504115080_))
                                                      (_tl1504315085_
                                                       (##cdr _e1504115080_)))
                                                  (let ((_hd-bind15088_
                                                         _hd1504215083_))
                                                    (if (gx#stx-pair?
                                                         _tl1504315085_)
                                                        (let ((_e1504415090_
                                                               (gx#syntax-e
                                                                _tl1504315085_)))
                                                          (let ((_hd1504515093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1504415090_))
                        (_tl1504615095_ (##cdr _e1504415090_)))
                    (let ((_expr15098_ _hd1504515093_))
                      (if (gx#stx-null? _tl1504615095_)
                          (if (gx#core-bind-values? _hd-bind15088_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind15088_)
                                (_K15032_
                                 _rest15033_
                                 (cons _hd15031_ _r15034_)))
                              (_E1503715068_))
                          (_E1503715068_)))))
                (_E1503715068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1503715068_))
                                          (_E1503715068_))))
                                  (_E1503715068_)))))
                      (_E1503615100_))))
                 (_expand-body14903_
                  (lambda (_rbody14905_)
                    (let _lp14907_ ((_rest14909_ _rbody14905_)
                                    (_body14910_ '()))
                      (let* ((_rest1491114919_ _rest14909_)
                             (_else1491314927_ (lambda () _body14910_))
                             (_K1491515019_
                              (lambda (_rest14930_ _hd14931_)
                                (let* ((_e1493214953_ _hd14931_)
                                       (_E1494814957_
                                        (lambda ()
                                          (_lp14907_
                                           _rest14930_
                                           (cons (gx#core-expand-expression
                                                  _hd14931_)
                                                 _body14910_))))
                                       (_E1494414971_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1493214953_)
                                              (let ((_e1494914961_
                                                     (gx#syntax-e
                                                      _e1493214953_)))
                                                (let ((_hd1495014964_
                                                       (##car _e1494914961_))
                                                      (_tl1495114966_
                                                       (##cdr _e1494914961_)))
                                                  (let ((_form14969_
                                                         _hd1495014964_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form14969_
                                                         gx#special-form-binding?)
                                                        (_lp14907_
                                                         _rest14930_
                                                         (cons _hd14931_
                                                               _body14910_))
                                                        (_E1494814957_)))))
                                              (_E1494814957_))))
                                       (_E1493414983_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1493214953_)
                                              (let ((_e1494514975_
                                                     (gx#syntax-e
                                                      _e1493214953_)))
                                                (let ((_hd1494614978_
                                                       (##car _e1494514975_))
                                                      (_tl1494714980_
                                                       (##cdr _e1494514975_)))
                                                  (if (and (gx#identifier?
                                                            _hd1494614978_)
                                                           (gx#core-identifier=?
                                                            _hd1494614978_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp14907_
                                                           _rest14930_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd14931_)
                         _body14910_))
                  (_E1494414971_))
              (_E1494414971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1494414971_))))
                                       (_E1493315015_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1493214953_)
                                              (let ((_e1493514987_
                                                     (gx#syntax-e
                                                      _e1493214953_)))
                                                (let ((_hd1493614990_
                                                       (##car _e1493514987_))
                                                      (_tl1493714992_
                                                       (##cdr _e1493514987_)))
                                                  (if (and (gx#identifier?
                                                            _hd1493614990_)
                                                           (gx#core-identifier=?
                                                            _hd1493614990_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1493714992_)
                                                          (let ((_e1493814995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1493714992_)))
                    (let ((_hd1493914998_ (##car _e1493814995_))
                          (_tl1494015000_ (##cdr _e1493814995_)))
                      (let ((_hd-bind15003_ _hd1493914998_))
                        (if (gx#stx-pair? _tl1494015000_)
                            (let ((_e1494115005_ (gx#syntax-e _tl1494015000_)))
                              (let ((_hd1494215008_ (##car _e1494115005_))
                                    (_tl1494315010_ (##cdr _e1494115005_)))
                                (let ((_expr15013_ _hd1494215008_))
                                  (if (gx#stx-null? _tl1494315010_)
                                      (if '#t
                                          (_lp14907_
                                           _rest14930_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind15003_)
                                                   (gx#core-expand-expression
                                                    _expr15013_))
                                                  (gx#stx-source _hd14931_))
                                                 _body14910_))
                                          (_E1493414983_))
                                      (_E1493414983_)))))
                            (_E1493414983_)))))
                  (_E1493414983_))
              (_E1493414983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1493414983_)))))
                                  (_E1493315015_)))))
                        (if (##pair? _rest1491114919_)
                            (let ((_hd1491615022_ (##car _rest1491114919_))
                                  (_tl1491715024_ (##cdr _rest1491114919_)))
                              (let* ((_hd15027_ _hd1491615022_)
                                     (_rest15029_ _tl1491715024_))
                                (_K1491515019_ _rest15029_ _hd15027_)))
                            (_else1491314927_)))))))
          (_expand-body14903_
           (gx#core-expand-block__%
            (cons '%#begin-module _body14900_)
            _expand-special14902_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx14743_
               _expanded?14744_
               _method14745_
               _current-phi14746_
               _expand114747_)
        (letrec ((_K14749_
                  (lambda (_rest14867_ _r14868_)
                    (let* ((_e1486914876_ _rest14867_)
                           (_E1487114880_ (lambda () _r14868_))
                           (_E1487014896_
                            (lambda ()
                              (if (gx#stx-pair? _e1486914876_)
                                  (let ((_e1487214884_
                                         (gx#syntax-e _e1486914876_)))
                                    (let ((_hd1487314887_
                                           (##car _e1487214884_))
                                          (_tl1487414889_
                                           (##cdr _e1487214884_)))
                                      (let* ((_hd14892_ _hd1487314887_)
                                             (_rest14894_ _tl1487414889_))
                                        (if '#t
                                            (_step14750_
                                             _hd14892_
                                             _rest14894_
                                             _r14868_)
                                            (_E1487114880_)))))
                                  (_E1487114880_)))))
                      (_E1487014896_))))
                 (_step14750_
                  (lambda (_hd14781_ _rest14782_ _r14783_)
                    (let* ((_e1478414802_ _hd14781_)
                           (_E1479714806_
                            (lambda ()
                              (if (_expanded?14744_ (gx#stx-e _hd14781_))
                                  (_K14749_
                                   _rest14782_
                                   (cons (gx#stx-e _hd14781_) _r14783_))
                                  (_expand114747_
                                   _hd14781_
                                   _K14749_
                                   _rest14782_
                                   _r14783_))))
                           (_E1479314822_
                            (lambda ()
                              (if (gx#stx-pair? _e1478414802_)
                                  (let ((_e1479814810_
                                         (gx#syntax-e _e1478414802_)))
                                    (let ((_hd1479914813_
                                           (##car _e1479814810_))
                                          (_tl1480014815_
                                           (##cdr _e1479814810_)))
                                      (let* ((_macro14818_ _hd1479914813_)
                                             (_body14820_ _tl1480014815_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro14818_
                                             gx#syntax-binding?)
                                            (_K14749_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro14818_)
                                                    _hd14781_
                                                    _method14745_)
                                                   _rest14782_)
                                             _r14783_)
                                            (_E1479714806_)))))
                                  (_E1479714806_))))
                           (_E1478614836_
                            (lambda ()
                              (if (gx#stx-pair? _e1478414802_)
                                  (let ((_e1479414826_
                                         (gx#syntax-e _e1478414802_)))
                                    (let ((_hd1479514829_
                                           (##car _e1479414826_))
                                          (_tl1479614831_
                                           (##cdr _e1479414826_)))
                                      (if (eq? (gx#stx-e _hd1479514829_)
                                               'begin:)
                                          (let ((_body14834_ _tl1479614831_))
                                            (if '#t
                                                (_K14749_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest14782_
                                                  _body14834_)
                                                 _r14783_)
                                                (_E1479314822_)))
                                          (_E1479314822_))))
                                  (_E1479314822_))))
                           (_E1478514863_
                            (lambda ()
                              (if (gx#stx-pair? _e1478414802_)
                                  (let ((_e1478714840_
                                         (gx#syntax-e _e1478414802_)))
                                    (let ((_hd1478814843_
                                           (##car _e1478714840_))
                                          (_tl1478914845_
                                           (##cdr _e1478714840_)))
                                      (if (eq? (gx#stx-e _hd1478814843_) 'phi:)
                                          (if (gx#stx-pair? _tl1478914845_)
                                              (let ((_e1479014848_
                                                     (gx#syntax-e
                                                      _tl1478914845_)))
                                                (let ((_hd1479114851_
                                                       (##car _e1479014848_))
                                                      (_tl1479214853_
                                                       (##cdr _e1479014848_)))
                                                  (let* ((_dphi14856_
                                                          _hd1479114851_)
                                                         (_body14858_
                                                          _tl1479214853_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi14856_)
                                                        (let ((_rbody14861_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K14749_ _body14858_ '()))
                        _current-phi14746_
                        (fx+ (gx#stx-e _dphi14856_) (_current-phi14746_)))))
                  (_K14749_ _rest14782_ (foldr1 cons _r14783_ _rbody14861_)))
                (_E1478614836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1478614836_))
                                          (_E1478614836_))))
                                  (_E1478614836_)))))
                      (_E1478514863_)))))
          (let* ((_e1475114758_ _stx14743_)
                 (_E1475314762_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1475114758_)))
                 (_E1475214777_
                  (lambda ()
                    (if (gx#stx-pair? _e1475114758_)
                        (let ((_e1475414766_ (gx#syntax-e _e1475114758_)))
                          (let ((_hd1475514769_ (##car _e1475414766_))
                                (_tl1475614771_ (##cdr _e1475414766_)))
                            (let ((_body14774_ _tl1475614771_))
                              (if '#t
                                  (if (_current-phi14746_)
                                      (_K14749_ _body14774_ '())
                                      (call-with-parameters
                                       (lambda () (_K14749_ _body14774_ '()))
                                       _current-phi14746_
                                       (gx#current-expander-phi)))
                                  (_E1475314762_)))))
                        (_E1475314762_)))))
            (_E1475214777_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx14410_ _internal-expand?14411_)
        (letrec ((_expand114413_
                  (lambda (_hd14723_ _K14724_ _rest14725_ _r14726_)
                    (if (gx#core-bound-module? _hd14723_)
                        (_import114414_
                         (gx#syntax-local-e__0 _hd14723_)
                         _K14724_
                         _rest14725_
                         _r14726_)
                        (if (gx#core-library-module-path? _hd14723_)
                            (_import114414_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd14723_))
                             _K14724_
                             _rest14725_
                             _r14726_)
                            (if (gx#core-library-relative-module-path?
                                 _hd14723_)
                                (_import114414_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd14723_))
                                 _K14724_
                                 _rest14725_
                                 _r14726_)
                                (let ((_e14728_ (gx#stx-e _hd14723_)))
                                  (if (pair? _e14728_)
                                      (let ((_$e14730_
                                             (gx#stx-e (car _e14728_))))
                                        (if (eq? 'spec: _$e14730_)
                                            (_import-spec14417_
                                             _hd14723_
                                             _K14724_
                                             _rest14725_
                                             _r14726_)
                                            (if (eq? 'in: _$e14730_)
                                                (_import-submodule14415_
                                                 _hd14723_
                                                 _K14724_
                                                 _rest14725_
                                                 _r14726_)
                                                (if (eq? 'runtime: _$e14730_)
                                                    (_import-runtime14416_
                                                     _hd14723_
                                                     _K14724_
                                                     _rest14725_
                                                     _r14726_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx14410_
                                                     _hd14723_)))))
                                      (if (string? _e14728_)
                                          (_import114414_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd14723_
                                             (gx#stx-source _stx14410_)))
                                           _K14724_
                                           _rest14725_
                                           _r14726_)
                                          (if (##structure-instance-of?
                                               _e14728_
                                               'gx#module-context::t)
                                              (_K14724_
                                               _rest14725_
                                               (cons _e14728_ _r14726_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx14410_
                                               _hd14723_))))))))))
                 (_import114414_
                  (lambda (_ctx14712_ _K14713_ _rest14714_ _r14715_)
                    (let ((_dphi14717_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K14713_
                       _rest14714_
                       (cons (##structure
                              gx#import-set::t
                              _ctx14712_
                              _dphi14717_
                              (map (lambda (_g1471814720_)
                                     (gx#core-module-export->import__%
                                      _g1471814720_
                                      '#f
                                      _dphi14717_))
                                   (##unchecked-structure-ref
                                    _ctx14712_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r14715_)))))
                 (_import-submodule14415_
                  (lambda (_hd14679_ _K14680_ _rest14681_ _r14682_)
                    (let* ((_e1468314690_ _hd14679_)
                           (_E1468514694_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1468314690_)))
                           (_E1468414708_
                            (lambda ()
                              (if (gx#stx-pair? _e1468314690_)
                                  (let ((_e1468614698_
                                         (gx#syntax-e _e1468314690_)))
                                    (let ((_hd1468714701_
                                           (##car _e1468614698_))
                                          (_tl1468814703_
                                           (##cdr _e1468614698_)))
                                      (let ((_spath14706_ _tl1468814703_))
                                        (if '#t
                                            (_import114414_
                                             (_import-spec-source14418_
                                              _spath14706_)
                                             _K14680_
                                             _rest14681_
                                             _r14682_)
                                            (_E1468514694_)))))
                                  (_E1468514694_)))))
                      (_E1468414708_))))
                 (_import-runtime14416_
                  (lambda (_hd14646_ _K14647_ _rest14648_ _r14649_)
                    (let* ((_e1465014657_ _hd14646_)
                           (_E1465214661_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1465014657_)))
                           (_E1465114675_
                            (lambda ()
                              (if (gx#stx-pair? _e1465014657_)
                                  (let ((_e1465314665_
                                         (gx#syntax-e _e1465014657_)))
                                    (let ((_hd1465414668_
                                           (##car _e1465314665_))
                                          (_tl1465514670_
                                           (##cdr _e1465314665_)))
                                      (let ((_spath14673_ _tl1465514670_))
                                        (if '#t
                                            (_K14647_
                                             _rest14648_
                                             (cons (_import-spec-source14418_
                                                    _spath14673_)
                                                   _r14649_))
                                            (_E1465214661_)))))
                                  (_E1465214661_)))))
                      (_E1465114675_))))
                 (_import-spec14417_
                  (lambda (_hd14485_ _K14486_ _rest14487_ _r14488_)
                    (let* ((_e1448914506_ _hd14485_)
                           (_E1449814510_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1448914506_)))
                           (_E1449114620_
                            (lambda ()
                              (if (gx#stx-pair? _e1448914506_)
                                  (let ((_e1449914514_
                                         (gx#syntax-e _e1448914506_)))
                                    (let ((_hd1450014517_
                                           (##car _e1449914514_))
                                          (_tl1450114519_
                                           (##cdr _e1449914514_)))
                                      (if (gx#stx-pair? _tl1450114519_)
                                          (let ((_e1450214522_
                                                 (gx#syntax-e _tl1450114519_)))
                                            (let ((_hd1450314525_
                                                   (##car _e1450214522_))
                                                  (_tl1450414527_
                                                   (##cdr _e1450214522_)))
                                              (let* ((_path14530_
                                                      _hd1450314525_)
                                                     (_specs14532_
                                                      _tl1450414527_))
                                                (if '#t
                                                    (let ((_src-ctx14534_
                                                           (_import-spec-source14418_
                                                            _path14530_))
                                                          (_exports14535_
                                                           (make-table))
                                                          (_specs14536_
                                                           (gx#syntax->list
                                                            _specs14532_)))
                                                      (for-each
                                                       (lambda (_out14538_)
                                                         (table-set!
                                                          _exports14535_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out14538_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out14538_
                         '4
                         gx#module-export::t
                         '#f))
                  _out14538_))
               (##unchecked-structure-ref
                _src-ctx14534_
                '9
                gx#module-context::t
                '#f))
              (_K14486_
               _rest14487_
               (foldl1 (lambda (_spec14540_ _r14541_)
                         (let* ((_e1454214558_ _spec14540_)
                                (_E1454414562_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _e1454214558_)))
                                (_E1454314616_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1454214558_)
                                       (let ((_e1454514566_
                                              (gx#syntax-e _e1454214558_)))
                                         (let ((_hd1454614569_
                                                (##car _e1454514566_))
                                               (_tl1454714571_
                                                (##cdr _e1454514566_)))
                                           (let ((_phi14574_ _hd1454614569_))
                                             (if (gx#stx-pair? _tl1454714571_)
                                                 (let ((_e1454814576_
                                                        (gx#syntax-e
                                                         _tl1454714571_)))
                                                   (let ((_hd1454914579_
                                                          (##car _e1454814576_))
                                                         (_tl1455014581_
                                                          (##cdr _e1454814576_)))
                                                     (let ((_name14584_
                                                            _hd1454914579_))
                                                       (if (gx#stx-pair?
                                                            _tl1455014581_)
                                                           (let ((_e1455114586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1455014581_)))
                     (let ((_hd1455214589_ (##car _e1455114586_))
                           (_tl1455314591_ (##cdr _e1455114586_)))
                       (let ((_src-phi14594_ _hd1455214589_))
                         (if (gx#stx-pair? _tl1455314591_)
                             (let ((_e1455414596_
                                    (gx#syntax-e _tl1455314591_)))
                               (let ((_hd1455514599_ (##car _e1455414596_))
                                     (_tl1455614601_ (##cdr _e1455414596_)))
                                 (let ((_src-name14604_ _hd1455514599_))
                                   (if (gx#stx-null? _tl1455614601_)
                                       (if (and (gx#stx-fixnum? _src-phi14594_)
                                                (gx#identifier?
                                                 _src-name14604_)
                                                (gx#stx-fixnum? _phi14574_)
                                                (gx#identifier? _name14584_))
                                           (let ((_src-phi14606_
                                                  (gx#stx-e _src-phi14594_))
                                                 (_src-name14607_
                                                  (gx#core-identifier-key
                                                   _src-name14604_))
                                                 (_phi14608_
                                                  (gx#stx-e _phi14574_))
                                                 (_name14609_
                                                  (gx#core-identifier-key
                                                   _name14584_)))
                                             (let ((_$e14611_
                                                    (table-ref
                                                     _exports14535_
                                                     (cons _src-phi14606_
                                                           _src-name14607_)
                                                     '#f)))
                                               (if _$e14611_
                                                   ((lambda (_out14614_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out14614_
                                                             _name14609_
                                                             (fx- _phi14608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi14606_))
                    _r14541_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e14611_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx14410_
                                                    _hd14485_))))
                                           (_E1454414562_))
                                       (_E1454414562_)))))
                             (_E1454414562_)))))
                   (_E1454414562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1454414562_)))))
                                       (_E1454414562_)))))
                           (_E1454314616_)))
                       _r14488_
                       _specs14536_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1449814510_)))))
                                          (_E1449814510_))))
                                  (_E1449814510_))))
                           (_E1449014642_
                            (lambda ()
                              (if (gx#stx-pair? _e1448914506_)
                                  (let ((_e1449214624_
                                         (gx#syntax-e _e1448914506_)))
                                    (let ((_hd1449314627_
                                           (##car _e1449214624_))
                                          (_tl1449414629_
                                           (##cdr _e1449214624_)))
                                      (if (gx#stx-pair? _tl1449414629_)
                                          (let ((_e1449514632_
                                                 (gx#syntax-e _tl1449414629_)))
                                            (let ((_hd1449614635_
                                                   (##car _e1449514632_))
                                                  (_tl1449714637_
                                                   (##cdr _e1449514632_)))
                                              (let ((_path14640_
                                                     _hd1449614635_))
                                                (if (gx#stx-null?
                                                     _tl1449714637_)
                                                    (if '#t
                                                        (_K14486_
                                                         _rest14487_
                                                         (cons (_import-spec-source14418_
                                                                _path14640_)
                                                               _r14488_))
                                                        (_E1449114620_))
                                                    (_E1449114620_)))))
                                          (_E1449114620_))))
                                  (_E1449114620_)))))
                      (_E1449014642_))))
                 (_import-spec-source14418_
                  (lambda (_spath14483_)
                    (gx#core-import-nested-module _spath14483_ _stx14410_)))
                 (_import!14419_
                  (lambda (_rbody14432_)
                    (letrec* ((_current-ctx14434_
                               (gx#current-expander-context))
                              (_deps14435_ (make-table 'test: eq?))
                              (_bind!14436_
                               (lambda (_hd14481_)
                                 (gx#core-bind-import!__1
                                  _hd14481_
                                  _current-ctx14434_))))
                      (let _lp14438_ ((_rest14440_ _rbody14432_)
                                      (_body14441_ '()))
                        (let* ((_rest1444214450_ _rest14440_)
                               (_else1444414460_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx14434_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx14434_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx14434_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body14441_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx14458_ _g17274_)
                                     (gx#eval-module _ctx14458_))
                                   _deps14435_)
                                  _body14441_))
                               (_K1444614469_
                                (lambda (_rest14463_ _hd14464_)
                                  (if (##structure-direct-instance-of?
                                       _hd14464_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!14436_ _hd14464_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd14464_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd14464_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps14435_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd14464_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd14464_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!14436_
                                             (##unchecked-structure-ref
                                              _hd14464_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd14464_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps14435_
                                                 (##unchecked-structure-ref
                                                  _hd14464_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e14466_
                                                 (##structure-instance-of?
                                                  _hd14464_
                                                  'gx#module-context::t)))
                                            (if _$e14466_
                                                _$e14466_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx14410_
                                                 _hd14464_)))))
                                  (_lp14438_
                                   _rest14463_
                                   (cons _hd14464_ _body14441_)))))
                          (if (##pair? _rest1444214450_)
                              (let ((_hd1444714472_ (##car _rest1444214450_))
                                    (_tl1444814474_ (##cdr _rest1444214450_)))
                                (let* ((_hd14477_ _hd1444714472_)
                                       (_rest14479_ _tl1444814474_))
                                  (_K1444614469_ _rest14479_ _hd14477_)))
                              (_else1444414460_)))))))
                 (_expanded-import?14420_
                  (lambda (_e14424_)
                    (let ((_$e14426_
                           (##structure-direct-instance-of?
                            _e14424_
                            'gx#import-set::t)))
                      (if _$e14426_
                          _$e14426_
                          (let ((_$e14429_
                                 (##structure-direct-instance-of?
                                  _e14424_
                                  'gx#module-import::t)))
                            (if _$e14429_
                                _$e14429_
                                (##structure-instance-of?
                                 _e14424_
                                 'gx#module-context::t))))))))
          (let ((_rbody14422_
                 (gx#core-expand-import/export
                  _stx14410_
                  _expanded-import?14420_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand114413_)))
            (if _internal-expand?14411_
                (reverse _rbody14422_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!14419_ _rbody14422_))
                 (gx#stx-source _stx14410_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx14736_)
        (let ((_internal-expand?14738_ '#f))
          (gx#core-expand-import%__% _stx14736_ _internal-expand?14738_))))
    (define gx#core-expand-import%
      (lambda _g17276_
        (let ((_g17275_ (##length _g17276_)))
          (cond ((##fx= _g17275_ 1)
                 (apply (lambda (_stx14736_)
                          (gx#core-expand-import%__0 _stx14736_))
                        _g17276_))
                ((##fx= _g17275_ 2)
                 (apply (lambda (_stx14740_ _internal-expand?14741_)
                          (gx#core-expand-import%__%
                           _stx14740_
                           _internal-expand?14741_))
                        _g17276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g17276_))))))
    (define gx#core-import-nested-module
      (lambda (_spath14337_ _where14338_)
        (let* ((_e1433914346_ _spath14337_)
               (_E1434114350_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1433914346_)))
               (_E1434014405_
                (lambda ()
                  (if (gx#stx-pair? _e1433914346_)
                      (let ((_e1434214354_ (gx#syntax-e _e1433914346_)))
                        (let ((_hd1434314357_ (##car _e1434214354_))
                              (_tl1434414359_ (##cdr _e1434214354_)))
                          (let* ((_origin14362_ _hd1434314357_)
                                 (_sub14364_ _tl1434414359_))
                            (if '#t
                                (let ((_origin-ctx14366_
                                       (if (gx#stx-false? _origin14362_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin14362_))))
                                  (let _lp14368_ ((_rest14370_ _sub14364_)
                                                  (_ctx14371_
                                                   _origin-ctx14366_))
                                    (let* ((_e1437214379_ _rest14370_)
                                           (_E1437414383_
                                            (lambda () _ctx14371_))
                                           (_E1437314401_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1437214379_)
                                                  (let ((_e1437514387_
                                                         (gx#syntax-e
                                                          _e1437214379_)))
                                                    (let ((_hd1437614390_
                                                           (##car _e1437514387_))
                                                          (_tl1437714392_
                                                           (##cdr _e1437514387_)))
                                                      (let* ((_id14395_
                                                              _hd1437614390_)
                                                             (_rest14397_
                                                              _tl1437714392_))
                                                        (if '#t
                                                            (let ((_bind14399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id14395_ '0 _ctx14371_)))
                      (if (and (##structure-direct-instance-of?
                                _bind14399_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind14399_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where14338_
                           _spath14337_
                           _id14395_))
                      (_lp14368_
                       _rest14397_
                       (##unchecked-structure-ref
                        _bind14399_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E1437414383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1437414383_)))))
                                      (_E1437314401_))))
                                (_E1434114350_)))))
                      (_E1434114350_)))))
          (_E1434014405_))))
    (define gx#core-expand-import-source
      (lambda (_hd14335_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd14335_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx13843_ _internal-expand?13844_)
        (letrec* ((_make-export__1721417215_
                   (lambda (_bind14283_ _phi14284_ _ctx14285_ _name14286_)
                     (let* ((_key14288_
                             (##unchecked-structure-ref
                              _bind14283_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key14290_
                             (if _name14286_
                                 (gx#core-identifier-key _name14286_)
                                 _key14288_)))
                       (##structure
                        gx#module-export::t
                        _ctx14285_
                        _key14288_
                        _phi14284_
                        _export-key14290_
                        (let ((_$e14293_
                               (##structure-instance-of?
                                _bind14283_
                                'gx#extern-binding::t)))
                          (if _$e14293_
                              _$e14293_
                              (##structure-direct-instance-of?
                               _bind14283_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1721617219_
                   (lambda (_bind14299_)
                     (let* ((_phi14301_ (gx#current-export-expander-phi))
                            (_ctx14303_ (gx#current-expander-context))
                            (_name14305_ '#f))
                       (_make-export__1721417215_
                        _bind14299_
                        _phi14301_
                        _ctx14303_
                        _name14305_))))
                  (_make-export__1__1721717220_
                   (lambda (_bind14307_ _phi14308_)
                     (let* ((_ctx14310_ (gx#current-expander-context))
                            (_name14312_ '#f))
                       (_make-export__1721417215_
                        _bind14307_
                        _phi14308_
                        _ctx14310_
                        _name14312_))))
                  (_make-export__2__1721817221_
                   (lambda (_bind14314_ _phi14315_ _ctx14316_)
                     (let ((_name14318_ '#f))
                       (_make-export__1721417215_
                        _bind14314_
                        _phi14315_
                        _ctx14316_
                        _name14318_))))
                  (_make-export13846_
                   (lambda _g17278_
                     (let ((_g17277_ (##length _g17278_)))
                       (cond ((##fx= _g17277_ 1)
                              (apply (lambda (_bind14299_)
                                       (_make-export__0__1721617219_
                                        _bind14299_))
                                     _g17278_))
                             ((##fx= _g17277_ 2)
                              (apply (lambda (_bind14307_ _phi14308_)
                                       (_make-export__1__1721717220_
                                        _bind14307_
                                        _phi14308_))
                                     _g17278_))
                             ((##fx= _g17277_ 3)
                              (apply (lambda (_bind14314_
                                              _phi14315_
                                              _ctx14316_)
                                       (_make-export__2__1721817221_
                                        _bind14314_
                                        _phi14315_
                                        _ctx14316_))
                                     _g17278_))
                             ((##fx= _g17277_ 4)
                              (apply (lambda (_bind14320_
                                              _phi14321_
                                              _ctx14322_
                                              _name14323_)
                                       (_make-export__1721417215_
                                        _bind14320_
                                        _phi14321_
                                        _ctx14322_
                                        _name14323_))
                                     _g17278_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g17278_))))))
                  (_expand113847_
                   (lambda (_hd13996_ _K13997_ _rest13998_ _r13999_)
                     (let* ((_e1400014032_ _hd13996_)
                            (_E1402714036_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx13843_
                                _hd13996_)))
                            (_E1401714115_
                             (lambda ()
                               (if (gx#stx-pair? _e1400014032_)
                                   (let ((_e1402814040_
                                          (gx#syntax-e _e1400014032_)))
                                     (let ((_hd1402914043_
                                            (##car _e1402814040_))
                                           (_tl1403014045_
                                            (##cdr _e1402814040_)))
                                       (if (eq? (gx#stx-e _hd1402914043_)
                                                'import:)
                                           (let ((_in14048_ _tl1403014045_))
                                             (if (gx#stx-list? _in14048_)
                                                 (let _lp14050_ ((_in-rest14052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in14048_)
                         (_r14053_ _r13999_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1405414061_
                                                           _in-rest14052_)
                                                          (_E1405614065_
                                                           (lambda ()
                                                             (_K13997_
                                                              _rest13998_
                                                              _r14053_)))
                                                          (_E1405514111_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1405414061_)
                         (let ((_e1405714069_ (gx#syntax-e _e1405414061_)))
                           (let ((_hd1405814072_ (##car _e1405714069_))
                                 (_tl1405914074_ (##cdr _e1405714069_)))
                             (let* ((_hd14077_ _hd1405814072_)
                                    (_in-rest14079_ _tl1405914074_))
                               (if '#t
                                   (let ((_src14109_
                                          (if (gx#core-bound-module? _hd14077_)
                                              (gx#syntax-local-e__0 _hd14077_)
                                              (if (gx#core-library-module-path?
                                                   _hd14077_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd14077_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd14077_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd14077_))
                                                      (if (gx#stx-string?
                                                           _hd14077_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd14077_
                                                            (gx#stx-source
                                                             _stx13843_)))
                                                          (let* ((_e1408014087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd14077_)
                         (_E1408214091_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx13843_
                             _hd14077_)))
                         (_E1408114105_
                          (lambda ()
                            (if (gx#stx-pair? _e1408014087_)
                                (let ((_e1408314095_
                                       (gx#syntax-e _e1408014087_)))
                                  (let ((_hd1408414098_ (##car _e1408314095_))
                                        (_tl1408514100_ (##cdr _e1408314095_)))
                                    (if (eq? (gx#stx-e _hd1408414098_) 'in:)
                                        (let ((_spath14103_ _tl1408514100_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath14103_
                                               _stx13843_)
                                              (_E1408214091_)))
                                        (_E1408214091_))))
                                (_E1408214091_)))))
                    (_E1408114105_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp14050_
                                      _in-rest14079_
                                      (_export-imports13848_
                                       _src14109_
                                       _r14053_)))
                                   (_E1405614065_)))))
                         (_E1405614065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1405514111_)))
                                                 (_E1402714036_)))
                                           (_E1402714036_))))
                                   (_E1402714036_))))
                            (_E1400414154_
                             (lambda ()
                               (if (gx#stx-pair? _e1400014032_)
                                   (let ((_e1401814119_
                                          (gx#syntax-e _e1400014032_)))
                                     (let ((_hd1401914122_
                                            (##car _e1401814119_))
                                           (_tl1402014124_
                                            (##cdr _e1401814119_)))
                                       (if (eq? (gx#stx-e _hd1401914122_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1402014124_)
                                               (let ((_e1402114127_
                                                      (gx#syntax-e
                                                       _tl1402014124_)))
                                                 (let ((_hd1402214130_
                                                        (##car _e1402114127_))
                                                       (_tl1402314132_
                                                        (##cdr _e1402114127_)))
                                                   (let ((_id14135_
                                                          _hd1402214130_))
                                                     (if (gx#stx-pair?
                                                          _tl1402314132_)
                                                         (let ((_e1402414137_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1402314132_)))
                   (let ((_hd1402514140_ (##car _e1402414137_))
                         (_tl1402614142_ (##cdr _e1402414137_)))
                     (let ((_name14145_ _hd1402514140_))
                       (if (gx#stx-null? _tl1402614142_)
                           (if '#t
                               (let* ((_phi14147_
                                       (gx#current-export-expander-phi))
                                      (_$e14149_
                                       (gx#core-resolve-identifier__1
                                        _id14135_
                                        _phi14147_)))
                                 (if _$e14149_
                                     ((lambda (_bind14152_)
                                        (_K13997_
                                         _rest13998_
                                         (cons (_make-export__1721417215_
                                                _bind14152_
                                                _phi14147_
                                                (gx#current-expander-context)
                                                _name14145_)
                                               _r13999_)))
                                      _$e14149_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx13843_
                                      _hd13996_
                                      _id14135_)))
                               (_E1401714115_))
                           (_E1401714115_)))))
                 (_E1401714115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1401714115_))
                                           (_E1401714115_))))
                                   (_E1401714115_))))
                            (_E1400314203_
                             (lambda ()
                               (if (gx#stx-pair? _e1400014032_)
                                   (let ((_e1400514158_
                                          (gx#syntax-e _e1400014032_)))
                                     (let ((_hd1400614161_
                                            (##car _e1400514158_))
                                           (_tl1400714163_
                                            (##cdr _e1400514158_)))
                                       (if (eq? (gx#stx-e _hd1400614161_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1400714163_)
                                               (let ((_e1400814166_
                                                      (gx#syntax-e
                                                       _tl1400714163_)))
                                                 (let ((_hd1400914169_
                                                        (##car _e1400814166_))
                                                       (_tl1401014171_
                                                        (##cdr _e1400814166_)))
                                                   (let ((_phi14174_
                                                          _hd1400914169_))
                                                     (if (gx#stx-pair?
                                                          _tl1401014171_)
                                                         (let ((_e1401114176_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1401014171_)))
                   (let ((_hd1401214179_ (##car _e1401114176_))
                         (_tl1401314181_ (##cdr _e1401114176_)))
                     (let ((_id14184_ _hd1401214179_))
                       (if (gx#stx-pair? _tl1401314181_)
                           (let ((_e1401414186_ (gx#syntax-e _tl1401314181_)))
                             (let ((_hd1401514189_ (##car _e1401414186_))
                                   (_tl1401614191_ (##cdr _e1401414186_)))
                               (let ((_name14194_ _hd1401514189_))
                                 (if (gx#stx-null? _tl1401614191_)
                                     (if (and (gx#stx-fixnum? _phi14174_)
                                              (gx#identifier? _id14184_)
                                              (gx#identifier? _name14194_))
                                         (let* ((_phi14196_
                                                 (gx#stx-e _phi14174_))
                                                (_$e14198_
                                                 (gx#core-resolve-identifier__1
                                                  _id14184_
                                                  _phi14196_)))
                                           (if _$e14198_
                                               ((lambda (_bind14201_)
                                                  (_K13997_
                                                   _rest13998_
                                                   (cons (_make-export__1721417215_
                                                          _bind14201_
                                                          _phi14196_
                                                          (gx#current-expander-context)
                                                          _name14194_)
                                                         _r13999_)))
                                                _$e14198_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx13843_
                                                _hd13996_
                                                _id14184_)))
                                         (_E1400414154_))
                                     (_E1400414154_)))))
                           (_E1400414154_)))))
                 (_E1400414154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1400414154_))
                                           (_E1400414154_))))
                                   (_E1400414154_))))
                            (_E1400214214_
                             (lambda ()
                               (let ((_id14207_ _e1400014032_))
                                 (if (gx#identifier? _id14207_)
                                     (let ((_$e14209_
                                            (gx#core-resolve-identifier__1
                                             _id14207_
                                             (gx#current-export-expander-phi))))
                                       (if _$e14209_
                                           ((lambda (_bind14212_)
                                              (_K13997_
                                               _rest13998_
                                               (cons (_make-export__0__1721617219_
                                                      _bind14212_)
                                                     _r13999_)))
                                            _$e14209_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx13843_
                                            _hd13996_)))
                                     (_E1400314203_)))))
                            (_E1400114278_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1400014032_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx14218_
                                               (gx#current-expander-context))
                                              (_current-phi14220_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx14222_
                                               (gx#core-context-shift
                                                _current-ctx14218_
                                                _current-phi14220_))
                                              (_phi-bind14224_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx14222_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp14227_ ((_bind-rest14229_
                                                          _phi-bind14224_)
                                                         (_set14230_ '()))
                                           (let* ((_bind-rest1423114241_
                                                   _bind-rest14229_)
                                                  (_else1423314249_
                                                   (lambda ()
                                                     (_K13997_
                                                      _rest13998_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi14220_
                                                             _set14230_)
                                                            _r13999_))))
                                                  (_K1423514259_
                                                   (lambda (_bind-rest14252_
                                                            _bind14253_
                                                            _key14254_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind14253_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind14253_))
                                                         (_lp14227_
                                                          _bind-rest14252_
                                                          _set14230_)
                                                         (_lp14227_
                                                          _bind-rest14252_
                                                          (cons (_make-export__2__1721817221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind14253_
                         _current-phi14220_
                         _current-ctx14218_)
                        _set14230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1423114241_)
                                                 (let ((_hd1423614262_
                                                        (##car _bind-rest1423114241_))
                                                       (_tl1423714264_
                                                        (##cdr _bind-rest1423114241_)))
                                                   (if (##pair? _hd1423614262_)
                                                       (let ((_hd1423814267_
                                                              (##car _hd1423614262_))
                                                             (_tl1423914269_
                                                              (##cdr _hd1423614262_)))
                                                         (let* ((_key14272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1423814267_)
                        (_bind14274_ _tl1423914269_)
                        (_bind-rest14276_ _tl1423714264_))
                   (_K1423514259_ _bind-rest14276_ _bind14274_ _key14272_)))
               (_else1423314249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1423314249_)))))
                                       (_E1400214214_))
                                   (_E1400214214_)))))
                       (_E1400114278_))))
                  (_export-imports13848_
                   (lambda (_src13872_ _r13873_)
                     (letrec* ((_current-ctx13875_
                                (gx#current-expander-context))
                               (_current-phi13876_
                                (gx#current-export-expander-phi))
                               (_import->export13877_
                                (lambda (_in13958_)
                                  (let* ((_in1395913967_ _in13958_)
                                         (_E1396113971_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1395913967_)))
                                         (_K1396213978_
                                          (lambda (_phi13974_
                                                   _key13975_
                                                   _out13976_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx13875_
                                             _key13975_
                                             _phi13974_
                                             _key13975_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1395913967_
                                         'gx#module-import::t)
                                        (let* ((_e1396313981_
                                                (##vector-ref
                                                 _in1395913967_
                                                 '1))
                                               (_out13984_ _e1396313981_)
                                               (_e1396413986_
                                                (##vector-ref
                                                 _in1395913967_
                                                 '2))
                                               (_key13989_ _e1396413986_)
                                               (_e1396513991_
                                                (##vector-ref
                                                 _in1395913967_
                                                 '3))
                                               (_phi13994_ _e1396513991_))
                                          (_K1396213978_
                                           _phi13994_
                                           _key13989_
                                           _out13984_))
                                        (_E1396113971_)))))
                               (_fold-e13878_
                                (lambda (_in13880_ _r13881_)
                                  (let* ((_in1388213896_ _in13880_)
                                         (_else1388513904_
                                          (lambda () _r13881_)))
                                    (let ((_K1389113940_
                                           (lambda (_phi13936_
                                                    _key13937_
                                                    _out13938_)
                                             (if (and (fx= _phi13936_
                                                           _current-phi13876_)
                                                      (eq? _src13872_
                                                           (##unchecked-structure-ref
                                                            _out13938_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export13877_
                                                        _in13880_)
                                                       _r13881_)
                                                 _r13881_)))
                                          (_K1388713915_
                                           (lambda (_imports13908_
                                                    _phi13909_
                                                    _ctx13910_)
                                             (if (and (fx= _phi13909_
                                                           _current-phi13876_)
                                                      (eq? _src13872_
                                                           _ctx13910_))
                                                 (foldl1 (lambda (_in13912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r13913_)
                   (cons (_import->export13877_ _in13912_) _r13913_))
                 _r13881_
                 _imports13908_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r13881_))))
                                      (let ((_try-match1388413933_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1388213896_
                                                    'gx#import-set::t)
                                                   (let* ((_e1388813918_
                                                           (##vector-ref
                                                            _in1388213896_
                                                            '1))
                                                          (_e1388913923_
                                                           (##vector-ref
                                                            _in1388213896_
                                                            '2))
                                                          (_e1389013928_
                                                           (##vector-ref
                                                            _in1388213896_
                                                            '3)))
                                                     (let ((_ctx13921_
                                                            _e1388813918_)
                                                           (_phi13926_
                                                            _e1388913923_)
                                                           (_imports13931_
                                                            _e1389013928_))
                                                       (_K1388713915_
                                                        _imports13931_
                                                        _phi13926_
                                                        _ctx13921_)))
                                                   (_else1388513904_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1388213896_
                                             'gx#module-import::t)
                                            (let* ((_e1389213943_
                                                    (##vector-ref
                                                     _in1388213896_
                                                     '1))
                                                   (_e1389313948_
                                                    (##vector-ref
                                                     _in1388213896_
                                                     '2))
                                                   (_e1389413953_
                                                    (##vector-ref
                                                     _in1388213896_
                                                     '3)))
                                              (let ((_out13946_ _e1389213943_)
                                                    (_key13951_ _e1389313948_)
                                                    (_phi13956_ _e1389413953_))
                                                (_K1389113940_
                                                 _phi13956_
                                                 _key13951_
                                                 _out13946_)))
                                            (_try-match1388413933_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src13872_
                              _current-phi13876_
                              (foldl1 _fold-e13878_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx13875_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r13873_))))
                  (_export!13849_
                   (lambda (_rbody13862_)
                     (letrec* ((_current-ctx13864_
                                (gx#current-expander-context))
                               (_fold-e13865_
                                (lambda (_out13869_ _r13870_)
                                  (if (##structure-direct-instance-of?
                                       _out13869_
                                       'gx#module-export::t)
                                      (cons _out13869_ _r13870_)
                                      (if (##structure-direct-instance-of?
                                           _out13869_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r13870_
                                                  (##unchecked-structure-ref
                                                   _out13869_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r13870_)))))
                       (let ((_body13867_ (reverse _rbody13862_)))
                         (##unchecked-structure-set!
                          _current-ctx13864_
                          (foldl1 _fold-e13865_
                                  (##unchecked-structure-ref
                                   _current-ctx13864_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body13867_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body13867_))))
                  (_expanded-export?13850_
                   (lambda (_e13857_)
                     (let ((_$e13859_
                            (##structure-direct-instance-of?
                             _e13857_
                             'gx#module-export::t)))
                       (if _$e13859_
                           _$e13859_
                           (##structure-direct-instance-of?
                            _e13857_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?13844_)
              (let ((_rbody13855_
                     (gx#core-expand-import/export
                      _stx13843_
                      _expanded-export?13850_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand113847_)))
                (if _internal-expand?13844_
                    (reverse _rbody13855_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!13849_ _rbody13855_))
                     (gx#stx-source _stx13843_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx13843_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx13843_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx14328_)
        (let ((_internal-expand?14330_ '#f))
          (gx#core-expand-export%__% _stx14328_ _internal-expand?14330_))))
    (define gx#core-expand-export%
      (lambda _g17280_
        (let ((_g17279_ (##length _g17280_)))
          (cond ((##fx= _g17279_ 1)
                 (apply (lambda (_stx14328_)
                          (gx#core-expand-export%__0 _stx14328_))
                        _g17280_))
                ((##fx= _g17279_ 2)
                 (apply (lambda (_stx14332_ _internal-expand?14333_)
                          (gx#core-expand-export%__%
                           _stx14332_
                           _internal-expand?14333_))
                        _g17280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g17280_))))))
    (define gx#core-expand-export-source
      (lambda (_hd13840_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd13840_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx13810_)
        (let* ((_e1381113818_ _stx13810_)
               (_E1381313822_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1381113818_)))
               (_E1381213836_
                (lambda ()
                  (if (gx#stx-pair? _e1381113818_)
                      (let ((_e1381413826_ (gx#syntax-e _e1381113818_)))
                        (let ((_hd1381513829_ (##car _e1381413826_))
                              (_tl1381613831_ (##cdr _e1381413826_)))
                          (let ((_body13834_ _tl1381613831_))
                            (if (gx#identifier-list? _body13834_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body13834_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body13834_))
                                   (gx#stx-source _stx13810_)))
                                (_E1381313822_)))))
                      (_E1381313822_)))))
          (_E1381213836_))))
    (define gx#core-bind-feature!__%
      (lambda (_id13776_ _private?13777_ _phi13778_ _ctx13779_)
        (gx#core-bind-syntax!__%
         _id13776_
         ((if _private?13777_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id13776_))
         _private?13777_
         _phi13778_
         _ctx13779_)))
    (define gx#core-bind-feature!__0
      (lambda (_id13784_)
        (let* ((_private?13786_ '#f)
               (_phi13788_ (gx#current-expander-phi))
               (_ctx13790_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id13784_
           _private?13786_
           _phi13788_
           _ctx13790_))))
    (define gx#core-bind-feature!__1
      (lambda (_id13792_ _private?13793_)
        (let* ((_phi13795_ (gx#current-expander-phi))
               (_ctx13797_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id13792_
           _private?13793_
           _phi13795_
           _ctx13797_))))
    (define gx#core-bind-feature!__2
      (lambda (_id13799_ _private?13800_ _phi13801_)
        (let ((_ctx13803_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id13799_
           _private?13800_
           _phi13801_
           _ctx13803_))))
    (define gx#core-bind-feature!
      (lambda _g17282_
        (let ((_g17281_ (##length _g17282_)))
          (cond ((##fx= _g17281_ 1)
                 (apply (lambda (_id13784_)
                          (gx#core-bind-feature!__0 _id13784_))
                        _g17282_))
                ((##fx= _g17281_ 2)
                 (apply (lambda (_id13792_ _private?13793_)
                          (gx#core-bind-feature!__1 _id13792_ _private?13793_))
                        _g17282_))
                ((##fx= _g17281_ 3)
                 (apply (lambda (_id13799_ _private?13800_ _phi13801_)
                          (gx#core-bind-feature!__2
                           _id13799_
                           _private?13800_
                           _phi13801_))
                        _g17282_))
                ((##fx= _g17281_ 4)
                 (apply (lambda (_id13805_
                                 _private?13806_
                                 _phi13807_
                                 _ctx13808_)
                          (gx#core-bind-feature!__%
                           _id13805_
                           _private?13806_
                           _phi13807_
                           _ctx13808_))
                        _g17282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g17282_))))))))
