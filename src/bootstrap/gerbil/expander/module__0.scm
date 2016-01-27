(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args9558_
      (apply make-struct-instance gx#module-import::t _$args9558_)))
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
  (begin)
  (define gx#module-export::t
    (make-struct-type
     'gx#module-export::t
     '#f
     '5
     'module-export
     '((final: . #t))
     '#f))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args9555_
      (apply make-struct-instance gx#module-export::t _$args9555_)))
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
  (begin)
  (define gx#import-set::t
    (make-struct-type
     'gx#import-set::t
     '#f
     '3
     'import-set
     '((final: . #t))
     '#f))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args9552_
      (apply make-struct-instance gx#import-set::t _$args9552_)))
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
  (begin)
  (define gx#export-set::t
    (make-struct-type
     'gx#export-set::t
     '#f
     '3
     'export-set
     '((final: . #t))
     '#f))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args9549_
      (apply make-struct-instance gx#export-set::t _$args9549_)))
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
  (begin)
  (define gx#import-expander::t
    (make-struct-type
     'gx#import-expander::t
     gx#user-expander::t
     '0
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-struct-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args9546_
      (apply make-struct-instance gx#import-expander::t _$args9546_)))
  (begin)
  (define gx#export-expander::t
    (make-struct-type
     'gx#export-expander::t
     gx#user-expander::t
     '0
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-struct-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args9543_
      (apply make-struct-instance gx#export-expander::t _$args9543_)))
  (begin)
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (let ((_@super9535_
           (let ((_$super9529_
                  (make-promise
                   (lambda ()
                     (let ((_$e9526_
                            (struct-find-next-method
                             gx#module-context::t
                             ':init!)))
                       (if _$e9526_
                           _$e9526_
                           (error '"Cannot find super method"
                                  gx#module-context::t
                                  ':init!)))))))
             (lambda _$args9532_ (apply (force _$super9529_) _$args9532_)))))
      (lambda (_self9537_ _id9538_ _super9539_ _ns9540_ _path9541_)
        (direct-struct-instance-init!
         _self9537_
         _id9538_
         (make-hash-table-eq)
         _super9539_
         '#f
         '#f
         _ns9540_
         _path9541_
         '()
         '()
         '#f
         '#f))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (define gx#prelude-context:::init!
    (let ((_@super9488_
           (let ((_$super9482_
                  (make-promise
                   (lambda ()
                     (let ((_$e9479_
                            (struct-find-next-method
                             gx#prelude-context::t
                             ':init!)))
                       (if _$e9479_
                           _$e9479_
                           (error '"Cannot find super method"
                                  gx#prelude-context::t
                                  ':init!)))))))
             (lambda _$args9485_ (apply (force _$super9482_) _$args9485_)))))
      (let ((_opt-lambda94899513_
             (lambda (_self9491_ _ctx9492_ _root9493_)
               (let ((_super9501_
                      (let ((_$e9495_ _root9493_))
                        (if _$e9495_
                            _$e9495_
                            (let ((_$e9498_ (gx#core-context-root)))
                              (if _$e9498_
                                  _$e9498_
                                  (gx#make-root-context)))))))
                 (if _ctx9492_
                     (let ((_id9504_ (gx#expander-context-id _ctx9492_))
                           (_path9505_ (gx#module-context-path _ctx9492_))
                           (_in9506_
                            (map gx#core-module-export->import
                                 (gx#module-context-export _ctx9492_)))
                           (_e9507_ (make-promise
                                     (lambda () (gx#eval-module _ctx9492_)))))
                       (begin
                         (direct-struct-instance-init!
                          _self9491_
                          _id9504_
                          (make-hash-table-eq)
                          _super9501_
                          '#f
                          '#f
                          _path9505_
                          _in9506_
                          _e9507_)
                         (for-each
                          (lambda (_g95089510_)
                            (gx#core-bind-weak-import! _g95089510_ _self9491_))
                          _in9506_)))
                     (direct-struct-instance-init!
                      _self9491_
                      '#f
                      (make-hash-table-eq)
                      _super9501_
                      '#f
                      '#f
                      '#f
                      '()
                      '#f))))))
        (lambda _g12524_
          (let ((_g12523_ (length _g12524_)))
            (cond ((fx= _g12523_ 2)
                   (apply (lambda (_self9516_ _ctx9517_)
                            (let ((_root9519_ '#f))
                              (_opt-lambda94899513_
                               _self9516_
                               _ctx9517_
                               _root9519_)))
                          _g12524_))
                  ((fx= _g12523_ 3)
                   (apply (lambda (_self9521_ _ctx9522_ _root9523_)
                            (_opt-lambda94899513_
                             _self9521_
                             _ctx9522_
                             _root9523_))
                          _g12524_))
                  (else (error "No clause matching arguments" _g12524_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (let ((_@super9473_
           (let ((_$super9467_
                  (make-promise
                   (lambda ()
                     (let ((_$e9464_
                            (struct-find-next-method
                             gx#import-expander::t
                             ':init!)))
                       (if _$e9464_
                           _$e9464_
                           (error '"Cannot find super method"
                                  gx#import-expander::t
                                  ':init!)))))))
             (lambda _$args9470_ (apply (force _$super9467_) _$args9470_)))))
      (lambda (_self9475_ _e9476_)
        (direct-struct-instance-init!
         _self9475_
         _e9476_
         (gx#current-expander-context)
         (fx1- (gx#current-expander-phi))))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (let ((_@super9458_
           (let ((_$super9452_
                  (make-promise
                   (lambda ()
                     (let ((_$e9449_
                            (struct-find-next-method
                             gx#export-expander::t
                             ':init!)))
                       (if _$e9449_
                           _$e9449_
                           (error '"Cannot find super method"
                                  gx#export-expander::t
                                  ':init!)))))))
             (lambda _$args9455_ (apply (force _$super9452_) _$args9455_)))))
      (lambda (_self9460_ _e9461_)
        (direct-struct-instance-init!
         _self9460_
         _e9461_
         (gx#current-expander-context)
         (fx1- (gx#current-expander-phi))))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (let ((_@super9439_
           (let ((_$super9433_
                  (make-promise
                   (lambda ()
                     (let ((_$e9430_
                            (struct-find-next-method
                             gx#import-expander::t
                             'apply-import-expander)))
                       (if _$e9430_
                           _$e9430_
                           (error '"Cannot find super method"
                                  gx#import-expander::t
                                  'apply-import-expander)))))))
             (lambda _$args9436_ (apply (force _$super9433_) _$args9436_)))))
      (lambda (_g94409443_ _g94419445_)
        (gx#core-apply-user-expander
         _g94409443_
         _g94419445_
         'apply-import-expander))))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (let ((_@super9420_
           (let ((_$super9414_
                  (make-promise
                   (lambda ()
                     (let ((_$e9411_
                            (struct-find-next-method
                             gx#export-expander::t
                             'apply-export-expander)))
                       (if _$e9411_
                           _$e9411_
                           (error '"Cannot find super method"
                                  gx#export-expander::t
                                  'apply-export-expander)))))))
             (lambda _$args9417_ (apply (force _$super9414_) _$args9417_)))))
      (lambda (_g94219424_ _g94229426_)
        (gx#core-apply-user-expander
         _g94219424_
         _g94229426_
         'apply-export-expander))))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx9403_)
      (let ((_path9405_ (gx#module-context-path _ctx9403_)))
        (let ((_path9407_
               (if (pair? _path9405_) (last _path9405_) _path9405_)))
          (let () (if (string? _path9407_) _path9407_ '#f))))))
  (define gx#import-module
    (let ((_opt-lambda93779385_
           (lambda (_path9379_ _reload?9380_ _eval?9381_)
             (let ((_ctx9383_
                    ((gx#current-expander-module-import)
                     _path9379_
                     _reload?9380_)))
               (begin
                 (if (if _ctx9383_ _eval?9381_ '#f)
                     (gx#eval-module _ctx9383_)
                     '#!void)
                 _ctx9383_)))))
      (lambda _g12526_
        (let ((_g12525_ (length _g12526_)))
          (cond ((fx= _g12525_ 1)
                 (apply (lambda (_path9388_)
                          (let ((_reload?9390_ '#f))
                            (let ((_eval?9392_ '#f))
                              (_opt-lambda93779385_
                               _path9388_
                               _reload?9390_
                               _eval?9392_))))
                        _g12526_))
                ((fx= _g12525_ 2)
                 (apply (lambda (_path9394_ _reload?9395_)
                          (let ((_eval?9397_ '#f))
                            (_opt-lambda93779385_
                             _path9394_
                             _reload?9395_
                             _eval?9397_)))
                        _g12526_))
                ((fx= _g12525_ 3)
                 (apply (lambda (_path9399_ _reload?9400_ _eval?9401_)
                          (_opt-lambda93779385_
                           _path9399_
                           _reload?9400_
                           _eval?9401_))
                        _g12526_))
                (else (error "No clause matching arguments" _g12526_)))))))
  (define gx#eval-module
    (lambda (_mod9376_) ((gx#current-expander-module-eval) _mod9376_)))
  (define gx#core-eval-module
    (lambda (_obj9361_)
      (let ((_force-e9363_
             (lambda (_getf9372_ _e9373_)
               (call-with-parameters
                (lambda () (force (_getf9372_ _e9373_)))
                gx#current-expander-context
                _e9373_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur9365_
                   (lambda (_e9367_)
                     (if (gx#module-context? _e9367_)
                         (begin
                           (let ((_$e9369_ (gx#core-context-prelude _e9367_)))
                             (if _$e9369_ (_recur9365_ _$e9369_) '#!void))
                           (_force-e9363_ gx#module-context-e _e9367_))
                         (if (gx#prelude-context? _e9367_)
                             (_force-e9363_ gx#prelude-context-e _e9367_)
                             (if (gx#stx-string? _e9367_)
                                 (_recur9365_
                                  (gx#import-module
                                   (gx#core-resolve-module-path _e9367_)))
                                 (if (gx#core-library-module-path? _e9367_)
                                     (_recur9365_
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _e9367_)))
                                     (error '"Cannot eval module"
                                            _obj9361_))))))))
           _recur9365_)
         _obj9361_))))
  (define gx#core-context-prelude
    (let ((_opt-lambda93429353_
           (lambda (_ctx9344_)
             ((letrec ((_lp9346_
                        (lambda (_e9348_)
                          (if (let ((_$e9350_ (gx#module-context? _e9348_)))
                                (if _$e9350_
                                    _$e9350_
                                    (gx#local-context? _e9348_)))
                              (_lp9346_ (gx#phi-context-super _e9348_))
                              (if (gx#prelude-context? _e9348_)
                                  _e9348_
                                  '#f)))))
                _lp9346_)
              _ctx9344_))))
      (lambda _g12528_
        (let ((_g12527_ (length _g12528_)))
          (cond ((fx= _g12527_ 0)
                 (apply (lambda ()
                          (let ((_ctx9357_ (gx#current-expander-context)))
                            (_opt-lambda93429353_ _ctx9357_)))
                        _g12528_))
                ((fx= _g12527_ 1)
                 (apply (lambda (_ctx9359_) (_opt-lambda93429353_ _ctx9359_))
                        _g12528_))
                (else (error "No clause matching arguments" _g12528_)))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx9334_)
      (let ((_ht9336_ (gx#current-expander-module-registry)))
        (let ((_$e9338_ (hash-get _ht9336_ _ctx9334_)))
          (if _$e9338_
              (values _$e9338_)
              (let ((_pre9341_ (gx#make-prelude-context _ctx9334_)))
                (begin
                  (hash-put! _ht9336_ _ctx9334_ _pre9341_)
                  _pre9341_)))))))
  (define gx#core-import-module
    (let ((_opt-lambda92869324_
           (lambda (_rpath9288_ _reload?9289_)
             (let ((_import-source9291_
                    (lambda (_path9303_)
                      (begin
                        (if (member _path9303_ (gx#current-expander-path))
                            (error '"Cyclic expansion" _path9303_)
                            '#!void)
                        (call-with-parameters
                         (lambda ()
                           (let ((_g12529_ (gx#core-read-module _path9303_)))
                             (begin
                               (let ((_g12530_ (values-count _g12529_)))
                                 (if (not (fx= _g12530_ 4))
                                     (error "Context expects 4 values"
                                            _g12530_)))
                               (let ((_pre9306_ (values-ref _g12529_ 0))
                                     (_id9307_ (values-ref _g12529_ 1))
                                     (_ns9308_ (values-ref _g12529_ 2))
                                     (_body9309_ (values-ref _g12529_ 3)))
                                 (let ((_prelude9314_
                                        (if (gx#prelude-context? _pre9306_)
                                            _pre9306_
                                            (if (gx#module-context? _pre9306_)
                                                (gx#core-module->prelude-context
                                                 _pre9306_)
                                                (if (string? _pre9306_)
                                                    (gx#core-module->prelude-context
                                                     (gx#core-import-module
                                                      _pre9306_))
                                                    (if (not _pre9306_)
                                                        (let ((_$e9311_
                                                               (gx#current-expander-module-prelude)))
                                                          (if _$e9311_
                                                              _$e9311_
                                                              (gx#make-prelude-context
                                                               '#f)))
                                                        (error '"Cannot import module; unknown prelude"
                                                               _rpath9288_
                                                               _pre9306_)))))))
                                   (let ((_ctx9316_
                                          (gx#make-module-context
                                           _id9307_
                                           _prelude9314_
                                           _ns9308_
                                           _path9303_)))
                                     (let ((_body9318_
                                            (gx#core-expand-module-begin
                                             _body9309_
                                             _ctx9316_)))
                                       (let ((_body9320_
                                              (gx#core-quote-syntax
                                               (gx#core-cons
                                                '%#begin
                                                _body9318_)
                                               _path9303_
                                               _ctx9316_
                                               '())))
                                         (let ()
                                           (begin
                                             (gx#module-context-e-set!
                                              _ctx9316_
                                              (make-promise
                                               (lambda ()
                                                 (gx#eval-syntax*
                                                  _body9320_))))
                                             (gx#module-context-code-set!
                                              _ctx9316_
                                              _body9320_)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _path9303_
                                              _ctx9316_)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _id9307_
                                              _ctx9316_)
                                             _ctx9316_))))))))))
                         gx#current-expander-context
                         (gx#core-context-root)
                         gx#current-expander-marks
                         '()
                         gx#current-expander-phi
                         '0
                         gx#current-expander-path
                         (cons _path9303_ (gx#current-expander-path))
                         gx#current-import-expander-phi
                         '#f
                         gx#current-export-expander-phi
                         '#f)))))
               (let ((_$e9293_
                      (if (not _reload?9289_)
                          (hash-get
                           (gx#current-expander-module-registry)
                           _rpath9288_)
                          '#f)))
                 (if _$e9293_
                     (values _$e9293_)
                     (if (gx#core-library-module-path? _rpath9288_)
                         (let ((_ctx9296_
                                (gx#core-import-module
                                 (gx#core-resolve-library-module-path
                                  _rpath9288_)
                                 _reload?9289_)))
                           (begin
                             (hash-put!
                              (gx#current-expander-module-registry)
                              _rpath9288_
                              _ctx9296_)
                             _ctx9296_))
                         (let ((_npath9298_ (path-normalize _rpath9288_)))
                           (let ((_$e9300_
                                  (if (not _reload?9289_)
                                      (hash-get
                                       (gx#current-expander-module-registry)
                                       _npath9298_)
                                      '#f)))
                             (if _$e9300_
                                 (values _$e9300_)
                                 (_import-source9291_ _npath9298_)))))))))))
      (lambda _g12532_
        (let ((_g12531_ (length _g12532_)))
          (cond ((fx= _g12531_ 1)
                 (apply (lambda (_rpath9327_)
                          (let ((_reload?9329_ '#f))
                            (_opt-lambda92869324_ _rpath9327_ _reload?9329_)))
                        _g12532_))
                ((fx= _g12531_ 2)
                 (apply (lambda (_rpath9331_ _reload?9332_)
                          (_opt-lambda92869324_ _rpath9331_ _reload?9332_))
                        _g12532_))
                (else (error "No clause matching arguments" _g12532_)))))))
  (define gx#core-read-module
    (lambda (_path9151_)
      ((letrec ((_lp9153_
                 (lambda (_body9155_ _pre9156_ _ns9157_ _pkg9158_)
                   (let ((_e91599183_ _body9155_))
                     (let ((_E91759201_
                            (lambda ()
                              (let ((_prelude9187_
                                     (if (gx#core-bound-module-prelude?
                                          _pre9156_)
                                         (gx#syntax-local-e _pre9156_)
                                         (if (gx#core-library-module-path?
                                              _pre9156_)
                                             (gx#core-resolve-library-module-path
                                              _pre9156_)
                                             (if (gx#stx-string? _pre9156_)
                                                 (gx#core-resolve-module-path
                                                  _pre9156_
                                                  _path9151_)
                                                 (gx#stx-e _pre9156_))))))
                                (let ((_path-id9189_
                                       (gx#core-module-path->namespace
                                        _path9151_)))
                                  (let ((_pkg-id9191_
                                         (if _pkg9158_
                                             (string-append
                                              _pkg9158_
                                              '"/"
                                              _path-id9189_)
                                             _path-id9189_)))
                                    (let ((_module-id9193_
                                           (string->symbol _pkg-id9191_)))
                                      (let ((_module-ns9198_
                                             (let ((_$e9195_ _ns9157_))
                                               (if _$e9195_
                                                   _$e9195_
                                                   _pkg-id9191_))))
                                        (let ()
                                          (values _prelude9187_
                                                  _module-id9193_
                                                  _module-ns9198_
                                                  _body9155_))))))))))
                       (let ((_E91689230_
                              (lambda ()
                                (if (gx#stx-pair? _e91599183_)
                                    (let ((_e91769205_
                                           (gx#syntax-e _e91599183_)))
                                      (let ((_hd91779208_ (##car _e91769205_))
                                            (_tl91789210_ (##cdr _e91769205_)))
                                        (if (eq? (gx#stx-e _hd91779208_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl91789210_)
                                                (let ((_e91799213_
                                                       (gx#syntax-e
                                                        _tl91789210_)))
                                                  (let ((_hd91809216_
                                                         (##car _e91799213_))
                                                        (_tl91819218_
                                                         (##cdr _e91799213_)))
                                                    (let ((_pkg9221_
                                                           _hd91809216_))
                                                      (let ((_rest9223_
                                                             _tl91819218_))
                                                        (if '#t
                                                            (let ((_pkg9228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg9221_)
                               (symbol->string (gx#stx-e _pkg9221_))
                               (if (let ((_$e9225_ (gx#stx-string? _pkg9221_)))
                                     (if _$e9225_
                                         _$e9225_
                                         (gx#stx-false? _pkg9221_)))
                                   (gx#stx-e _pkg9221_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg9221_)))))
                      (_lp9153_ _rest9223_ _pre9156_ _ns9157_ _pkg9228_))
                    (_E91759201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91759201_))
                                            (_E91759201_))))
                                    (_E91759201_)))))
                         (let ((_E91619259_
                                (lambda ()
                                  (if (gx#stx-pair? _e91599183_)
                                      (let ((_e91699234_
                                             (gx#syntax-e _e91599183_)))
                                        (let ((_hd91709237_
                                               (##car _e91699234_))
                                              (_tl91719239_
                                               (##cdr _e91699234_)))
                                          (if (eq? (gx#stx-e _hd91709237_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl91719239_)
                                                  (let ((_e91729242_
                                                         (gx#syntax-e
                                                          _tl91719239_)))
                                                    (let ((_hd91739245_
                                                           (##car _e91729242_))
                                                          (_tl91749247_
                                                           (##cdr _e91729242_)))
                                                      (let ((_ns9250_
                                                             _hd91739245_))
                                                        (let ((_rest9252_
                                                               _tl91749247_))
                                                          (if '#t
                                                              (let ((_ns9257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns9250_)
                                 (symbol->string (gx#stx-e _ns9250_))
                                 (if (let ((_$e9254_
                                            (gx#stx-string? _ns9250_)))
                                       (if _$e9254_
                                           _$e9254_
                                           (gx#stx-false? _ns9250_)))
                                     (gx#stx-e _ns9250_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns9250_)))))
                        (_lp9153_ _rest9252_ _pre9156_ _ns9257_ _pkg9158_))
                      (_E91689230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E91689230_))
                                              (_E91689230_))))
                                      (_E91689230_)))))
                           (let ((_E91609283_
                                  (lambda ()
                                    (if (gx#stx-pair? _e91599183_)
                                        (let ((_e91629263_
                                               (gx#syntax-e _e91599183_)))
                                          (let ((_hd91639266_
                                                 (##car _e91629263_))
                                                (_tl91649268_
                                                 (##cdr _e91629263_)))
                                            (if (eq? (gx#stx-e _hd91639266_)
                                                     'prelude:)
                                                (if (gx#stx-pair? _tl91649268_)
                                                    (let ((_e91659271_
                                                           (gx#syntax-e
                                                            _tl91649268_)))
                                                      (let ((_hd91669274_
                                                             (##car _e91659271_))
                                                            (_tl91679276_
                                                             (##cdr _e91659271_)))
                                                        (let ((_prelude9279_
                                                               _hd91669274_))
                                                          (let ((_rest9281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91679276_))
                    (if '#t
                        (_lp9153_ _rest9281_ _prelude9279_ _ns9157_ _pkg9158_)
                        (_E91619259_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E91619259_))
                                                (_E91619259_))))
                                        (_E91619259_)))))
                             (let () (_E91609283_))))))))))
         _lp9153_)
       (read-syntax-from-file _path9151_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path9149_)
      (path-strip-extension (path-strip-directory _path9149_))))
  (define gx#core-module-path->id
    (lambda (_path9147_)
      (string->symbol (gx#core-module-path->namespace _path9147_))))
  (define gx#core-resolve-module-path
    (let ((_opt-lambda91249137_
           (lambda (_stx-path9126_ _rel9127_)
             (let ((_path9129_ (gx#stx-e _stx-path9126_)))
               (let ((_path9131_
                      (if (equal? (path-extension _path9129_) '".ss")
                          _path9129_
                          (string-append _path9129_ '".ss"))))
                 (let ()
                   (gx#core-resolve-path
                    _path9131_
                    (let ((_$e9134_ (gx#stx-source _stx-path9126_)))
                      (if _$e9134_ _$e9134_ _rel9127_)))))))))
      (lambda _g12534_
        (let ((_g12533_ (length _g12534_)))
          (cond ((fx= _g12533_ 1)
                 (apply (lambda (_stx-path9140_)
                          (let ((_rel9142_ '#f))
                            (_opt-lambda91249137_ _stx-path9140_ _rel9142_)))
                        _g12534_))
                ((fx= _g12533_ 2)
                 (apply (lambda (_stx-path9144_ _rel9145_)
                          (_opt-lambda91249137_ _stx-path9144_ _rel9145_))
                        _g12534_))
                (else (error "No clause matching arguments" _g12534_)))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath9072_)
      (let ((_spath9074_ (symbol->string (gx#stx-e _libpath9072_))))
        (let ((_spath9076_
               (substring _spath9074_ '1 (string-length _spath9074_))))
          (let ()
            ((letrec ((_lp9079_
                       (lambda (_rest9081_)
                         (let ((_rest90829091_ _rest9081_))
                           (let ((_E90859095_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest90829091_))))
                             (let ((_try-match90849103_
                                    (lambda ()
                                      (let ((_K90869100_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath9072_))))
                                        (if (##null? _rest90829091_)
                                            (_K90869100_)
                                            (_E90859095_))))))
                               (let ((_K90879113_
                                      (lambda (_rest9106_ _dir9107_)
                                        (let ((_compiled-path9109_
                                               (path-expand
                                                (string-append
                                                 _spath9076_
                                                 '".ssi")
                                                _dir9107_)))
                                          (if (file-exists?
                                               _compiled-path9109_)
                                              (path-normalize
                                               _compiled-path9109_)
                                              (let ((_src-path9111_
                                                     (path-expand
                                                      (string-append
                                                       _spath9076_
                                                       '".ss")
                                                      _dir9107_)))
                                                (if (file-exists?
                                                     _src-path9111_)
                                                    (path-normalize
                                                     _src-path9111_)
                                                    (_lp9079_
                                                     _rest9106_))))))))
                                 (if (##pair? _rest90829091_)
                                     (let ((_hd90889116_
                                            (##car _rest90829091_))
                                           (_tl90899118_
                                            (##cdr _rest90829091_)))
                                       (let ((_dir9121_ _hd90889116_))
                                         (let ((_rest9123_ _tl90899118_))
                                           (_K90879113_
                                            _rest9123_
                                            _dir9121_))))
                                     (_try-match90849103_)))))))))
               _lp9079_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx9070_) (gx#core-special-module-path? _stx9070_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx9065_ _char9066_)
      (if (gx#identifier? _stx9065_)
          (if (interned-symbol? (gx#stx-e _stx9065_))
              (let ((_str9068_ (symbol->string (gx#stx-e _stx9065_))))
                (if (fx> (string-length _str9068_) '1)
                    (eq? (string-ref _str9068_ '0) _char9066_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx9059_)
      (gx#core-bound-identifier?
       _stx9059_
       (lambda (_g90609062_)
         (gx#expander-binding? _g90609062_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx9053_)
      (gx#core-bound-identifier?
       _stx9053_
       (lambda (_g90549056_)
         (gx#expander-binding? _g90549056_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx9040_)
      (let ((_module-prelude?9042_
             (lambda (_e9048_)
               (let ((_$e9050_ (gx#module-context? _e9048_)))
                 (if _$e9050_ _$e9050_ (gx#prelude-context? _e9048_))))))
        (gx#core-bound-identifier?
         _stx9040_
         (lambda (_g90439045_)
           (gx#expander-binding? _g90439045_ _module-prelude?9042_))))))
  (define gx#core-bind-import!
    (let ((_opt-lambda89689022_
           (lambda (_in8970_ _ctx8971_ _force-weak?8972_)
             (let ((_in89738982_ _in8970_))
               (let ((_E89758986_
                      (lambda () (error '"No clause matching" _in89738982_))))
                 (let ((_K89768999_
                        (lambda (_weak?8989_ _phi8990_ _key8991_ _source8992_)
                          (gx#core-bind!
                           _key8991_
                           (let ((_e8994_ (gx#core-resolve-module-export
                                           _source8992_)))
                             (gx#make-import-binding
                              (gx#binding-id _e8994_)
                              _key8991_
                              _phi8990_
                              _e8994_
                              (gx#module-export-context _source8992_)
                              (let ((_$e8996_ _force-weak?8972_))
                                (if _$e8996_ _$e8996_ _weak?8989_))))
                           gx#core-context-rebind?
                           _phi8990_
                           _ctx8971_))))
                   (if (direct-struct-instance?
                        gx#module-import::t
                        _in89738982_)
                       (let ((_e89779002_ (##vector-ref _in89738982_ '1)))
                         (let ((_source9005_ _e89779002_))
                           (let ((_e89789007_ (##vector-ref _in89738982_ '2)))
                             (let ((_key9010_ _e89789007_))
                               (let ((_e89799012_
                                      (##vector-ref _in89738982_ '3)))
                                 (let ((_phi9015_ _e89799012_))
                                   (let ((_e89809017_
                                          (##vector-ref _in89738982_ '4)))
                                     (let ((_weak?9020_ _e89809017_))
                                       (_K89768999_
                                        _weak?9020_
                                        _phi9015_
                                        _key9010_
                                        _source9005_)))))))))
                       (_E89758986_))))))))
      (lambda _g12536_
        (let ((_g12535_ (length _g12536_)))
          (cond ((fx= _g12535_ 1)
                 (apply (lambda (_in9025_)
                          (let ((_ctx9027_ (gx#current-expander-context)))
                            (let ((_force-weak?9029_ '#f))
                              (_opt-lambda89689022_
                               _in9025_
                               _ctx9027_
                               _force-weak?9029_))))
                        _g12536_))
                ((fx= _g12535_ 2)
                 (apply (lambda (_in9031_ _ctx9032_)
                          (let ((_force-weak?9034_ '#f))
                            (_opt-lambda89689022_
                             _in9031_
                             _ctx9032_
                             _force-weak?9034_)))
                        _g12536_))
                ((fx= _g12535_ 3)
                 (apply (lambda (_in9036_ _ctx9037_ _force-weak?9038_)
                          (_opt-lambda89689022_
                           _in9036_
                           _ctx9037_
                           _force-weak?9038_))
                        _g12536_))
                (else (error "No clause matching arguments" _g12536_)))))))
  (define gx#core-bind-weak-import!
    (let ((_opt-lambda89548959_
           (lambda (_in8956_ _ctx8957_)
             (gx#core-bind-import! _in8956_ _ctx8957_ '#t))))
      (lambda _g12538_
        (let ((_g12537_ (length _g12538_)))
          (cond ((fx= _g12537_ 1)
                 (apply (lambda (_in8962_)
                          (let ((_ctx8964_ (gx#current-expander-context)))
                            (_opt-lambda89548959_ _in8962_ _ctx8964_)))
                        _g12538_))
                ((fx= _g12537_ 2)
                 (apply (lambda (_in8966_ _ctx8967_)
                          (_opt-lambda89548959_ _in8966_ _ctx8967_))
                        _g12538_))
                (else (error "No clause matching arguments" _g12538_)))))))
  (define gx#core-resolve-module-export
    (lambda (_out8847_)
      (let ((_subst8849_
             (lambda (_key8895_)
               (let ((_key88968904_ _key8895_))
                 (let ((_E88998908_
                        (lambda ()
                          (error '"No clause matching" _key88968904_))))
                   (let ((_else88988912_ (lambda () _key8895_)))
                     (let ((_K89008943_
                            (lambda (_mark8915_ _id8916_)
                              (let ((_mark89178923_ _mark8915_))
                                (let ((_E89198927_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark89178923_))))
                                  (let ((_K89208935_
                                         (lambda (_subst8930_)
                                           (let ((_$e8932_
                                                  (if _subst8930_
                                                      (hash-get
                                                       _subst8930_
                                                       _id8916_)
                                                      '#f)))
                                             (if _$e8932_
                                                 _$e8932_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key8895_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark89178923_)
                                        (let ((_e89218938_
                                               (##vector-ref
                                                _mark89178923_
                                                '1)))
                                          (let ((_subst8941_ _e89218938_))
                                            (_K89208935_ _subst8941_)))
                                        (_E89198927_))))))))
                       (if (##pair? _key88968904_)
                           (let ((_hd89018946_ (##car _key88968904_))
                                 (_tl89028948_ (##cdr _key88968904_)))
                             (let ((_id8951_ _hd89018946_))
                               (let ((_mark8953_ _tl89028948_))
                                 (_K89008943_ _mark8953_ _id8951_))))
                           (_else88988912_)))))))))
        (let ((_out88508860_ _out8847_))
          (let ((_E88528864_
                 (lambda () (error '"No clause matching" _out88508860_))))
            (let ((_K88538871_
                   (lambda (_phi8867_ _key8868_ _ctx8869_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx8869_ _phi8867_)
                      (_subst8849_ _key8868_)))))
              (if (direct-struct-instance? gx#module-export::t _out88508860_)
                  (let ((_e88548874_ (##vector-ref _out88508860_ '1)))
                    (let ((_ctx8877_ _e88548874_))
                      (let ((_e88558879_ (##vector-ref _out88508860_ '2)))
                        (let ((_key8882_ _e88558879_))
                          (let ((_e88568884_ (##vector-ref _out88508860_ '3)))
                            (let ((_phi8887_ _e88568884_))
                              (let ((_e88578889_
                                     (##vector-ref _out88508860_ '4)))
                                (let ((_e88588892_
                                       (##vector-ref _out88508860_ '5)))
                                  (_K88538871_
                                   _phi8887_
                                   _key8882_
                                   _ctx8877_)))))))))
                  (_E88528864_))))))))
  (define gx#core-module-export->import
    (let ((_opt-lambda87708829_
           (lambda (_out8772_ _rename8773_ _dphi8774_)
             (let ((_out87758785_ _out8772_))
               (let ((_E87778789_
                      (lambda () (error '"No clause matching" _out87758785_))))
                 (let ((_K87788801_
                        (lambda (_weak?8792_
                                 _name8793_
                                 _phi8794_
                                 _key8795_
                                 _ctx8796_)
                          (gx#make-module-import
                           _out8772_
                           (let ((_$e8798_ _rename8773_))
                             (if _$e8798_ _$e8798_ _name8793_))
                           (fx+ _phi8794_ _dphi8774_)
                           _weak?8792_))))
                   (if (direct-struct-instance?
                        gx#module-export::t
                        _out87758785_)
                       (let ((_e87798804_ (##vector-ref _out87758785_ '1)))
                         (let ((_ctx8807_ _e87798804_))
                           (let ((_e87808809_ (##vector-ref _out87758785_ '2)))
                             (let ((_key8812_ _e87808809_))
                               (let ((_e87818814_
                                      (##vector-ref _out87758785_ '3)))
                                 (let ((_phi8817_ _e87818814_))
                                   (let ((_e87828819_
                                          (##vector-ref _out87758785_ '4)))
                                     (let ((_name8822_ _e87828819_))
                                       (let ((_e87838824_
                                              (##vector-ref _out87758785_ '5)))
                                         (let ((_weak?8827_ _e87838824_))
                                           (_K87788801_
                                            _weak?8827_
                                            _name8822_
                                            _phi8817_
                                            _key8812_
                                            _ctx8807_)))))))))))
                       (_E87778789_))))))))
      (lambda _g12540_
        (let ((_g12539_ (length _g12540_)))
          (cond ((fx= _g12539_ 1)
                 (apply (lambda (_out8832_)
                          (let ((_rename8834_ '#f))
                            (let ((_dphi8836_ '0))
                              (_opt-lambda87708829_
                               _out8832_
                               _rename8834_
                               _dphi8836_))))
                        _g12540_))
                ((fx= _g12539_ 2)
                 (apply (lambda (_out8838_ _rename8839_)
                          (let ((_dphi8841_ '0))
                            (_opt-lambda87708829_
                             _out8838_
                             _rename8839_
                             _dphi8841_)))
                        _g12540_))
                ((fx= _g12539_ 3)
                 (apply (lambda (_out8843_ _rename8844_ _dphi8845_)
                          (_opt-lambda87708829_
                           _out8843_
                           _rename8844_
                           _dphi8845_))
                        _g12540_))
                (else (error "No clause matching arguments" _g12540_)))))))
  (define gx#core-expand-module%
    (lambda (_stx8700_)
      (let ((_make-context8702_
             (lambda (_id8753_)
               (let ((_super8755_ (gx#current-expander-context)))
                 (let ((_bind-id8757_ (gx#stx-e _id8753_)))
                   (let ((_mod-id8759_
                          (if (gx#module-context? _super8755_)
                              (make-symbol
                               (gx#expander-context-id _super8755_)
                               '"::"
                               _bind-id8757_)
                              _bind-id8757_)))
                     (let ((_ns8761_ (symbol->string _mod-id8759_)))
                       (let ((_path8768_
                              (if (gx#module-context? _super8755_)
                                  (let ((_path8763_
                                         (gx#module-context-path _super8755_)))
                                    (if (let ((_$e8765_ (pair? _path8763_)))
                                          (if _$e8765_
                                              _$e8765_
                                              (null? _path8763_)))
                                        (cons _bind-id8757_ _path8763_)
                                        (if (not _path8763_)
                                            _bind-id8757_
                                            (cons _bind-id8757_
                                                  (cons _path8763_ '())))))
                                  _bind-id8757_)))
                         (let ()
                           (gx#make-module-context
                            _mod-id8759_
                            _super8755_
                            _ns8761_
                            _path8768_))))))))))
        (let ((_e87038713_ _stx8700_))
          (let ((_E87058717_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e87038713_))))
            (let ((_E87048749_
                   (lambda ()
                     (if (gx#stx-pair? _e87038713_)
                         (let ((_e87068721_ (gx#syntax-e _e87038713_)))
                           (let ((_hd87078724_ (##car _e87068721_))
                                 (_tl87088726_ (##cdr _e87068721_)))
                             (if (gx#stx-pair? _tl87088726_)
                                 (let ((_e87098729_
                                        (gx#syntax-e _tl87088726_)))
                                   (let ((_hd87108732_ (##car _e87098729_))
                                         (_tl87118734_ (##cdr _e87098729_)))
                                     (let ((_id8737_ _hd87108732_))
                                       (let ((_body8739_ _tl87118734_))
                                         (if (if (gx#identifier? _id8737_)
                                                 (gx#stx-list? _body8739_)
                                                 '#f)
                                             (let ((_ctx8741_
                                                    (_make-context8702_
                                                     _id8737_)))
                                               (let ((_body8743_
                                                      (gx#core-expand-module-begin
                                                       _body8739_
                                                       _ctx8741_)))
                                                 (let ((_body8745_
                                                        (gx#core-quote-syntax
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body8743_)
                                                         (gx#stx-source
                                                          _stx8700_))))
                                                   (let ()
                                                     (begin
                                                       (gx#module-context-e-set!
                                                        _ctx8741_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body8745_))))
                                                       (gx#module-context-code-set!
                                                        _ctx8741_
                                                        _body8745_)
                                                       (gx#core-bind-syntax!
                                                        _id8737_
                                                        _ctx8741_)
                                                       (gx#core-quote-syntax
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax
                                                          _id8737_)
                                                         _body8745_)
                                                        (gx#stx-source
                                                         _stx8700_)))))))
                                             (_E87058717_))))))
                                 (_E87058717_))))
                         (_E87058717_)))))
              (let () (_E87048749_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body8696_ _ctx8697_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature! 'gerbil-module '#t)
           (gx#core-expand-module-body _body8696_)))
       gx#current-expander-context
       _ctx8697_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body8492_)
      (let ((_expand-special8494_
             (lambda (_hd8623_ _K8624_ _rest8625_ _r8626_)
               (let ((_e86278644_ _hd8623_))
                 (let ((_E86398648_
                        (lambda ()
                          (_K8624_ _rest8625_
                                   (cons (gx#core-expand-top _hd8623_)
                                         _r8626_)))))
                   (let ((_E86298660_
                          (lambda ()
                            (if (gx#stx-pair? _e86278644_)
                                (let ((_e86408652_ (gx#syntax-e _e86278644_)))
                                  (let ((_hd86418655_ (##car _e86408652_))
                                        (_tl86428657_ (##cdr _e86408652_)))
                                    (if (if (gx#identifier? _hd86418655_)
                                            (gx#core-identifier=?
                                             _hd86418655_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K8624_ _rest8625_
                                                     (cons _hd8623_ _r8626_))
                                            (_E86398648_))
                                        (_E86398648_))))
                                (_E86398648_)))))
                     (let ((_E86288692_
                            (lambda ()
                              (if (gx#stx-pair? _e86278644_)
                                  (let ((_e86308664_
                                         (gx#syntax-e _e86278644_)))
                                    (let ((_hd86318667_ (##car _e86308664_))
                                          (_tl86328669_ (##cdr _e86308664_)))
                                      (if (if (gx#identifier? _hd86318667_)
                                              (gx#core-identifier=?
                                               _hd86318667_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl86328669_)
                                              (let ((_e86338672_
                                                     (gx#syntax-e
                                                      _tl86328669_)))
                                                (let ((_hd86348675_
                                                       (##car _e86338672_))
                                                      (_tl86358677_
                                                       (##cdr _e86338672_)))
                                                  (let ((_hd-bind8680_
                                                         _hd86348675_))
                                                    (if (gx#stx-pair?
                                                         _tl86358677_)
                                                        (let ((_e86368682_
                                                               (gx#syntax-e
                                                                _tl86358677_)))
                                                          (let ((_hd86378685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e86368682_))
                        (_tl86388687_ (##cdr _e86368682_)))
                    (let ((_expr8690_ _hd86378685_))
                      (if (gx#stx-null? _tl86388687_)
                          (if (gx#core-bind-values? _hd-bind8680_)
                              (begin
                                (gx#core-bind-values! _hd-bind8680_)
                                (_K8624_ _rest8625_ (cons _hd8623_ _r8626_)))
                              (_E86298660_))
                          (_E86298660_)))))
                (_E86298660_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86298660_))
                                          (_E86298660_))))
                                  (_E86298660_)))))
                       (let () (_E86288692_)))))))))
        (let ((_expand-body8495_
               (lambda (_rbody8497_)
                 ((letrec ((_lp8499_
                            (lambda (_rest8501_ _body8502_)
                              (let ((_rest85038511_ _rest8501_))
                                (let ((_E85068515_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest85038511_))))
                                  (let ((_else85058519_
                                         (lambda () _body8502_)))
                                    (let ((_K85078611_
                                           (lambda (_rest8522_ _hd8523_)
                                             (let ((_e85248545_ _hd8523_))
                                               (let ((_E85408549_
                                                      (lambda ()
                                                        (_lp8499_
                                                         _rest8522_
                                                         (cons (gx#core-expand-expression
                                                                _hd8523_)
                                                               _body8502_)))))
                                                 (let ((_E85368563_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e85248545_)
                                                              (let ((_e85418553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e85248545_)))
                        (let ((_hd85428556_ (##car _e85418553_))
                              (_tl85438558_ (##cdr _e85418553_)))
                          (let ((_form8561_ _hd85428556_))
                            (if (gx#core-bound-identifier?
                                 _form8561_
                                 gx#special-form-binding?)
                                (_lp8499_
                                 _rest8522_
                                 (cons _hd8523_ _body8502_))
                                (_E85408549_)))))
                      (_E85408549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E85268575_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e85248545_)
                        (let ((_e85378567_ (gx#syntax-e _e85248545_)))
                          (let ((_hd85388570_ (##car _e85378567_))
                                (_tl85398572_ (##cdr _e85378567_)))
                            (if (if (gx#identifier? _hd85388570_)
                                    (gx#core-identifier=?
                                     _hd85388570_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp8499_
                                     _rest8522_
                                     (cons (gx#core-expand-export% _hd8523_)
                                           _body8502_))
                                    (_E85368563_))
                                (_E85368563_))))
                        (_E85368563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E85258607_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e85248545_)
                          (let ((_e85278579_ (gx#syntax-e _e85248545_)))
                            (let ((_hd85288582_ (##car _e85278579_))
                                  (_tl85298584_ (##cdr _e85278579_)))
                              (if (if (gx#identifier? _hd85288582_)
                                      (gx#core-identifier=?
                                       _hd85288582_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl85298584_)
                                      (let ((_e85308587_
                                             (gx#syntax-e _tl85298584_)))
                                        (let ((_hd85318590_
                                               (##car _e85308587_))
                                              (_tl85328592_
                                               (##cdr _e85308587_)))
                                          (let ((_hd-bind8595_ _hd85318590_))
                                            (if (gx#stx-pair? _tl85328592_)
                                                (let ((_e85338597_
                                                       (gx#syntax-e
                                                        _tl85328592_)))
                                                  (let ((_hd85348600_
                                                         (##car _e85338597_))
                                                        (_tl85358602_
                                                         (##cdr _e85338597_)))
                                                    (let ((_expr8605_
                                                           _hd85348600_))
                                                      (if (gx#stx-null?
                                                           _tl85358602_)
                                                          (if '#t
                                                              (_lp8499_
                                                               _rest8522_
                                                               (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind8595_)
                               (gx#core-expand-expression _expr8605_))
                              (gx#stx-source _hd8523_))
                             _body8502_))
                      (_E85268575_))
                  (_E85268575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E85268575_)))))
                                      (_E85268575_))
                                  (_E85268575_))))
                          (_E85268575_)))))
               (let () (_E85258607_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest85038511_)
                                          (let ((_hd85088614_
                                                 (##car _rest85038511_))
                                                (_tl85098616_
                                                 (##cdr _rest85038511_)))
                                            (let ((_hd8619_ _hd85088614_))
                                              (let ((_rest8621_ _tl85098616_))
                                                (_K85078611_
                                                 _rest8621_
                                                 _hd8619_))))
                                          (_else85058519_)))))))))
                    _lp8499_)
                  _rbody8497_
                  '()))))
          (_expand-body8495_
           (gx#core-expand-block
            (cons '%#begin-module _body8492_)
            _expand-special8494_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx8335_
             _expanded?8336_
             _method8337_
             _current-phi8338_
             _expand18339_)
      (letrec ((_K8341_ (lambda (_rest8459_ _r8460_)
                          (let ((_e84618468_ _rest8459_))
                            (let ((_E84638472_ (lambda () _r8460_)))
                              (let ((_E84628488_
                                     (lambda ()
                                       (if (gx#stx-pair? _e84618468_)
                                           (let ((_e84648476_
                                                  (gx#syntax-e _e84618468_)))
                                             (let ((_hd84658479_
                                                    (##car _e84648476_))
                                                   (_tl84668481_
                                                    (##cdr _e84648476_)))
                                               (let ((_hd8484_ _hd84658479_))
                                                 (let ((_rest8486_
                                                        _tl84668481_))
                                                   (if '#t
                                                       (_step8342_
                                                        _hd8484_
                                                        _rest8486_
                                                        _r8460_)
                                                       (_E84638472_))))))
                                           (_E84638472_)))))
                                (let () (_E84628488_)))))))
               (_step8342_
                (lambda (_hd8373_ _rest8374_ _r8375_)
                  (let ((_e83768394_ _hd8373_))
                    (let ((_E83898398_
                           (lambda ()
                             (if (_expanded?8336_ (gx#stx-e _hd8373_))
                                 (_K8341_ _rest8374_
                                          (cons (gx#stx-e _hd8373_) _r8375_))
                                 (_expand18339_
                                  _hd8373_
                                  _K8341_
                                  _rest8374_
                                  _r8375_)))))
                      (let ((_E83858414_
                             (lambda ()
                               (if (gx#stx-pair? _e83768394_)
                                   (let ((_e83908402_
                                          (gx#syntax-e _e83768394_)))
                                     (let ((_hd83918405_ (##car _e83908402_))
                                           (_tl83928407_ (##cdr _e83908402_)))
                                       (let ((_macro8410_ _hd83918405_))
                                         (let ((_body8412_ _tl83928407_))
                                           (if (gx#core-bound-identifier?
                                                _macro8410_
                                                gx#syntax-binding?)
                                               (_K8341_ (cons (gx#core-apply-expander
                                                               (gx#syntax-local-e
                                                                _macro8410_)
                                                               _hd8373_
                                                               _method8337_)
                                                              _rest8374_)
                                                        _r8375_)
                                               (_E83898398_))))))
                                   (_E83898398_)))))
                        (let ((_E83788428_
                               (lambda ()
                                 (if (gx#stx-pair? _e83768394_)
                                     (let ((_e83868418_
                                            (gx#syntax-e _e83768394_)))
                                       (let ((_hd83878421_ (##car _e83868418_))
                                             (_tl83888423_
                                              (##cdr _e83868418_)))
                                         (if (eq? (gx#stx-e _hd83878421_)
                                                  'begin:)
                                             (let ((_body8426_ _tl83888423_))
                                               (if '#t
                                                   (_K8341_ (gx#stx-foldr
                                                             cons
                                                             _rest8374_
                                                             _body8426_)
                                                            _r8375_)
                                                   (_E83858414_)))
                                             (_E83858414_))))
                                     (_E83858414_)))))
                          (let ((_E83778455_
                                 (lambda ()
                                   (if (gx#stx-pair? _e83768394_)
                                       (let ((_e83798432_
                                              (gx#syntax-e _e83768394_)))
                                         (let ((_hd83808435_
                                                (##car _e83798432_))
                                               (_tl83818437_
                                                (##cdr _e83798432_)))
                                           (if (eq? (gx#stx-e _hd83808435_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl83818437_)
                                                   (let ((_e83828440_
                                                          (gx#syntax-e
                                                           _tl83818437_)))
                                                     (let ((_hd83838443_
                                                            (##car _e83828440_))
                                                           (_tl83848445_
                                                            (##cdr _e83828440_)))
                                                       (let ((_dphi8448_
                                                              _hd83838443_))
                                                         (let ((_body8450_
                                                                _tl83848445_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi8448_)
                                                               (let ((_rbody8453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K8341_ _body8450_ '()))
                               _current-phi8338_
                               (fx+ (gx#stx-e _dphi8448_)
                                    (_current-phi8338_)))))
                         (_K8341_ _rest8374_ (foldr cons _r8375_ _rbody8453_)))
                       (_E83788428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E83788428_))
                                               (_E83788428_))))
                                       (_E83788428_)))))
                            (let () (_E83778455_))))))))))
        (let ((_e83438350_ _stx8335_))
          (let ((_E83458354_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e83438350_))))
            (let ((_E83448369_
                   (lambda ()
                     (if (gx#stx-pair? _e83438350_)
                         (let ((_e83468358_ (gx#syntax-e _e83438350_)))
                           (let ((_hd83478361_ (##car _e83468358_))
                                 (_tl83488363_ (##cdr _e83468358_)))
                             (let ((_body8366_ _tl83488363_))
                               (if '#t
                                   (if (_current-phi8338_)
                                       (_K8341_ _body8366_ '())
                                       (call-with-parameters
                                        (lambda () (_K8341_ _body8366_ '()))
                                        _current-phi8338_
                                        (gx#current-expander-phi)))
                                   (_E83458354_)))))
                         (_E83458354_)))))
              (let () (_E83448369_))))))))
  (define gx#core-expand-import%
    (let ((_opt-lambda78728325_
           (lambda (_stx7874_ _internal-expand?7875_)
             (let ((_import17878_
                    (lambda (_ctx8309_ _K8310_ _rest8311_ _r8312_)
                      (let ((_dphi8314_
                             (fx- (gx#current-import-expander-phi)
                                  (gx#current-expander-phi))))
                        (_K8310_ _rest8311_
                                 (cons (gx#make-import-set
                                        _ctx8309_
                                        _dphi8314_
                                        (map (lambda (_g83158317_)
                                               (gx#core-module-export->import
                                                _g83158317_
                                                '#f
                                                _dphi8314_))
                                             (gx#module-context-export
                                              _ctx8309_)))
                                       _r8312_))))))
               (let ((_import-spec?7879_
                      (lambda (_hd8266_)
                        (let ((_e82678277_ _hd8266_))
                          (let ((_E82698281_ (lambda () '#f)))
                            (let ((_E82688305_
                                   (lambda ()
                                     (if (gx#stx-pair? _e82678277_)
                                         (let ((_e82708285_
                                                (gx#syntax-e _e82678277_)))
                                           (let ((_hd82718288_
                                                  (##car _e82708285_))
                                                 (_tl82728290_
                                                  (##cdr _e82708285_)))
                                             (if (eq? (gx#stx-e _hd82718288_)
                                                      'spec:)
                                                 (if (gx#stx-pair?
                                                      _tl82728290_)
                                                     (let ((_e82738293_
                                                            (gx#syntax-e
                                                             _tl82728290_)))
                                                       (let ((_hd82748296_
                                                              (##car _e82738293_))
                                                             (_tl82758298_
                                                              (##cdr _e82738293_)))
                                                         (let ((_spath8301_
                                                                _hd82748296_))
                                                           (let ((_specs8303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl82758298_))
                     (if '#t '#t (_E82698281_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E82698281_))
                                                 (_E82698281_))))
                                         (_E82698281_)))))
                              (let () (_E82688305_))))))))
                 (let ((_import-submodule?7880_
                        (lambda (_hd8223_)
                          (let ((_e82248234_ _hd8223_))
                            (let ((_E82268238_ (lambda () '#f)))
                              (let ((_E82258262_
                                     (lambda ()
                                       (if (gx#stx-pair? _e82248234_)
                                           (let ((_e82278242_
                                                  (gx#syntax-e _e82248234_)))
                                             (let ((_hd82288245_
                                                    (##car _e82278242_))
                                                   (_tl82298247_
                                                    (##cdr _e82278242_)))
                                               (if (eq? (gx#stx-e _hd82288245_)
                                                        'in:)
                                                   (if (gx#stx-pair?
                                                        _tl82298247_)
                                                       (let ((_e82308250_
                                                              (gx#syntax-e
                                                               _tl82298247_)))
                                                         (let ((_hd82318253_
                                                                (##car _e82308250_))
                                                               (_tl82328255_
                                                                (##cdr _e82308250_)))
                                                           (let ((_top8258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd82318253_))
                     (let ((_sub8260_ _tl82328255_))
                       (if '#t '#t (_E82268238_))))))
               (_E82268238_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82268238_))))
                                           (_E82268238_)))))
                                (let () (_E82258262_))))))))
                   (let ((_import-runtime?7881_
                          (lambda (_hd8180_)
                            (let ((_e81818191_ _hd8180_))
                              (let ((_E81838195_ (lambda () '#f)))
                                (let ((_E81828219_
                                       (lambda ()
                                         (if (gx#stx-pair? _e81818191_)
                                             (let ((_e81848199_
                                                    (gx#syntax-e _e81818191_)))
                                               (let ((_hd81858202_
                                                      (##car _e81848199_))
                                                     (_tl81868204_
                                                      (##cdr _e81848199_)))
                                                 (if (eq? (gx#stx-e
                                                           _hd81858202_)
                                                          'runtime:)
                                                     (if (gx#stx-pair?
                                                          _tl81868204_)
                                                         (let ((_e81878207_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81868204_)))
                   (let ((_hd81888210_ (##car _e81878207_))
                         (_tl81898212_ (##cdr _e81878207_)))
                     (let ((_top8215_ _hd81888210_))
                       (let ((_spath8217_ _tl81898212_))
                         (if '#t '#t (_E81838195_))))))
                 (_E81838195_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E81838195_))))
                                             (_E81838195_)))))
                                  (let () (_E81828219_))))))))
                     (let ((_import-spec-source7885_
                            (lambda (_spath7951_)
                              (gx#core-import-nested-module
                               _spath7951_
                               _stx7874_))))
                       (let ((_import!7886_
                              (lambda (_rbody7899_)
                                (let ((_current-ctx7901_
                                       (gx#current-expander-context)))
                                  (let ((_deps7902_ (make-hash-table-eq)))
                                    (let ((_bind!7903_
                                           (lambda (_hd7949_)
                                             (begin
                                               (gx#core-bind-import!
                                                _hd7949_
                                                _current-ctx7901_)
                                               (if (if (fxpositive?
                                                        (gx#module-import-phi
                                                         _hd7949_))
                                                       (fxzero? (gx#module-export-phi
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#module-import-source _hd7949_)))
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (hash-put!
                                                    _deps7902_
                                                    (gx#module-export-context
                                                     (gx#module-import-source
                                                      _hd7949_))
                                                    '#t)
                                                   '#!void)))))
                                      (let ((_fold-e7904_
                                             (lambda (_in7946_ _r7947_)
                                               (if (gx#module-import? _in7946_)
                                                   (cons _in7946_ _r7947_)
                                                   (if (gx#import-set?
                                                        _in7946_)
                                                       (foldl cons
                                                              _r7947_
                                                              (gx#import-set-imports
                                                               _in7946_))
                                                       _r7947_)))))
                                        ((letrec ((_lp7906_
                                                   (lambda (_rest7908_
                                                            _body7909_)
                                                     (let ((_rest79107918_
                                                            _rest7908_))
                                                       (let ((_E79137922_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest79107918_))))
                 (let ((_else79127928_
                        (lambda ()
                          (begin
                            (if (gx#module-context? _current-ctx7901_)
                                (gx#module-context-import-set!
                                 _current-ctx7901_
                                 (foldl _fold-e7904_
                                        (gx#module-context-import
                                         _current-ctx7901_)
                                        _body7909_))
                                '#!void)
                            (hash-for-each
                             (lambda (_ctx7926_ _g12541_)
                               (gx#eval-module _ctx7926_))
                             _deps7902_)
                            _body7909_))))
                   (let ((_K79147934_
                          (lambda (_rest7931_ _hd7932_)
                            (begin
                              (if (gx#module-import? _hd7932_)
                                  (_bind!7903_ _hd7932_)
                                  (if (gx#import-set? _hd7932_)
                                      (for-each
                                       _bind!7903_
                                       (gx#import-set-imports _hd7932_))
                                      (if (gx#module-context? _hd7932_)
                                          '#!void
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Unexpected import"
                                           _stx7874_
                                           _hd7932_))))
                              (_lp7906_
                               _rest7931_
                               (cons _hd7932_ _body7909_))))))
                     (if (##pair? _rest79107918_)
                         (let ((_hd79157937_ (##car _rest79107918_))
                               (_tl79167939_ (##cdr _rest79107918_)))
                           (let ((_hd7942_ _hd79157937_))
                             (let ((_rest7944_ _tl79167939_))
                               (_K79147934_ _rest7944_ _hd7942_))))
                         (_else79127928_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _lp7906_)
                                         _rbody7899_
                                         '()))))))))
                         (let ((_expanded-import?7887_
                                (lambda (_e7891_)
                                  (let ((_$e7893_ (gx#import-set? _e7891_)))
                                    (if _$e7893_
                                        _$e7893_
                                        (let ((_$e7896_
                                               (gx#module-import? _e7891_)))
                                          (if _$e7896_
                                              _$e7896_
                                              (gx#module-context?
                                               _e7891_))))))))
                           (let ((_import-submodule7882_
                                  (lambda (_hd8147_ _K8148_ _rest8149_ _r8150_)
                                    (let ((_e81518158_ _hd8147_))
                                      (let ((_E81538162_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e81518158_))))
                                        (let ((_E81528176_
                                               (lambda ()
                                                 (if (gx#stx-pair? _e81518158_)
                                                     (let ((_e81548166_
                                                            (gx#syntax-e
                                                             _e81518158_)))
                                                       (let ((_hd81558169_
                                                              (##car _e81548166_))
                                                             (_tl81568171_
                                                              (##cdr _e81548166_)))
                                                         (let ((_spath8174_
                                                                _tl81568171_))
                                                           (if '#t
                                                               (_import17878_
                                                                (_import-spec-source7885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _spath8174_)
                        _K8148_
                        _rest8149_
                        _r8150_)
                       (_E81538162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E81538162_)))))
                                          (let () (_E81528176_))))))))
                             (let ((_import-runtime7883_
                                    (lambda (_hd8114_
                                             _K8115_
                                             _rest8116_
                                             _r8117_)
                                      (let ((_e81188125_ _hd8114_))
                                        (let ((_E81208129_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e81188125_))))
                                          (let ((_E81198143_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e81188125_)
                                                       (let ((_e81218133_
                                                              (gx#syntax-e
                                                               _e81188125_)))
                                                         (let ((_hd81228136_
                                                                (##car _e81218133_))
                                                               (_tl81238138_
                                                                (##cdr _e81218133_)))
                                                           (let ((_spath8141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl81238138_))
                     (if '#t
                         (_K8115_ _rest8116_
                                  (cons (_import-spec-source7885_ _spath8141_)
                                        _r8117_))
                         (_E81208129_)))))
               (_E81208129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E81198143_))))))))
                               (let ((_import-spec7884_
                                      (lambda (_hd7953_
                                               _K7954_
                                               _rest7955_
                                               _r7956_)
                                        (let ((_e79577974_ _hd7953_))
                                          (let ((_E79667978_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e79577974_))))
                                            (let ((_E79598088_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e79577974_)
                                                         (let ((_e79677982_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e79577974_)))
                   (let ((_hd79687985_ (##car _e79677982_))
                         (_tl79697987_ (##cdr _e79677982_)))
                     (if (gx#stx-pair? _tl79697987_)
                         (let ((_e79707990_ (gx#syntax-e _tl79697987_)))
                           (let ((_hd79717993_ (##car _e79707990_))
                                 (_tl79727995_ (##cdr _e79707990_)))
                             (let ((_path7998_ _hd79717993_))
                               (let ((_specs8000_ _tl79727995_))
                                 (if '#t
                                     (let ((_src-ctx8002_
                                            (_import-spec-source7885_
                                             _path7998_))
                                           (_exports8003_ (make-hash-table))
                                           (_specs8004_
                                            (gx#syntax->list _specs8000_)))
                                       (begin
                                         (for-each
                                          (lambda (_out8006_)
                                            (hash-put!
                                             _exports8003_
                                             (cons (gx#module-export-phi
                                                    _out8006_)
                                                   (gx#module-export-name
                                                    _out8006_))
                                             _out8006_))
                                          (gx#module-context-export
                                           _src-ctx8002_))
                                         (_K7954_ _rest7955_
                                                  (foldl (lambda (_spec8008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r8009_)
                   (let ((_e80108026_ _spec8008_))
                     (let ((_E80128030_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e80108026_))))
                       (let ((_E80118084_
                              (lambda ()
                                (if (gx#stx-pair? _e80108026_)
                                    (let ((_e80138034_
                                           (gx#syntax-e _e80108026_)))
                                      (let ((_hd80148037_ (##car _e80138034_))
                                            (_tl80158039_ (##cdr _e80138034_)))
                                        (let ((_phi8042_ _hd80148037_))
                                          (if (gx#stx-pair? _tl80158039_)
                                              (let ((_e80168044_
                                                     (gx#syntax-e
                                                      _tl80158039_)))
                                                (let ((_hd80178047_
                                                       (##car _e80168044_))
                                                      (_tl80188049_
                                                       (##cdr _e80168044_)))
                                                  (let ((_name8052_
                                                         _hd80178047_))
                                                    (if (gx#stx-pair?
                                                         _tl80188049_)
                                                        (let ((_e80198054_
                                                               (gx#syntax-e
                                                                _tl80188049_)))
                                                          (let ((_hd80208057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e80198054_))
                        (_tl80218059_ (##cdr _e80198054_)))
                    (let ((_src-phi8062_ _hd80208057_))
                      (if (gx#stx-pair? _tl80218059_)
                          (let ((_e80228064_ (gx#syntax-e _tl80218059_)))
                            (let ((_hd80238067_ (##car _e80228064_))
                                  (_tl80248069_ (##cdr _e80228064_)))
                              (let ((_src-name8072_ _hd80238067_))
                                (if (gx#stx-null? _tl80248069_)
                                    (if (if (gx#stx-fixnum? _src-phi8062_)
                                            (if (gx#identifier? _src-name8072_)
                                                (if (gx#stx-fixnum? _phi8042_)
                                                    (gx#identifier? _name8052_)
                                                    '#f)
                                                '#f)
                                            '#f)
                                        (let ((_src-phi8074_
                                               (gx#stx-e _src-phi8062_))
                                              (_src-name8075_
                                               (gx#core-identifier-key
                                                _src-name8072_))
                                              (_phi8076_ (gx#stx-e _phi8042_))
                                              (_name8077_
                                               (gx#core-identifier-key
                                                _name8052_)))
                                          (let ((_$e8079_
                                                 (hash-get
                                                  _exports8003_
                                                  (cons _src-phi8074_
                                                        _src-name8075_))))
                                            (if _$e8079_
                                                ((lambda (_out8082_)
                                                   (cons (gx#core-module-export->import
                                                          _out8082_
                                                          _name8077_
                                                          (fx- _phi8076_
                                                               _src-phi8074_))
                                                         _r8009_))
                                                 _$e8079_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; no matching export"
                                                 _stx7874_
                                                 _hd7953_))))
                                        (_E80128030_))
                                    (_E80128030_)))))
                          (_E80128030_)))))
                (_E80128030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E80128030_)))))
                                    (_E80128030_)))))
                         (let () (_E80118084_))))))
                 _r7956_
                 _specs8004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_E79667978_))))))
                         (_E79667978_))))
                 (_E79667978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_E79588110_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e79577974_)
                                                           (let ((_e79608092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e79577974_)))
                     (let ((_hd79618095_ (##car _e79608092_))
                           (_tl79628097_ (##cdr _e79608092_)))
                       (if (gx#stx-pair? _tl79628097_)
                           (let ((_e79638100_ (gx#syntax-e _tl79628097_)))
                             (let ((_hd79648103_ (##car _e79638100_))
                                   (_tl79658105_ (##cdr _e79638100_)))
                               (let ((_path8108_ _hd79648103_))
                                 (if (gx#stx-null? _tl79658105_)
                                     (if '#t
                                         (_K7954_ _rest7955_
                                                  (cons (_import-spec-source7885_
                                                         _path8108_)
                                                        _r7956_))
                                         (_E79598088_))
                                     (_E79598088_)))))
                           (_E79598088_))))
                   (_E79598088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E79588110_)))))))))
                                 (let ((_expand17877_
                                        (lambda (_hd8320_
                                                 _K8321_
                                                 _rest8322_
                                                 _r8323_)
                                          (if (gx#core-bound-module? _hd8320_)
                                              (_import17878_
                                               (gx#syntax-local-e _hd8320_)
                                               _K8321_
                                               _rest8322_
                                               _r8323_)
                                              (if (gx#core-library-module-path?
                                                   _hd8320_)
                                                  (_import17878_
                                                   (gx#import-module
                                                    (gx#core-resolve-library-module-path
                                                     _hd8320_))
                                                   _K8321_
                                                   _rest8322_
                                                   _r8323_)
                                                  (if (gx#stx-string? _hd8320_)
                                                      (_import17878_
                                                       (gx#import-module
                                                        (gx#core-resolve-module-path
                                                         _hd8320_
                                                         (gx#stx-source
                                                          _stx7874_)))
                                                       _K8321_
                                                       _rest8322_
                                                       _r8323_)
                                                      (if (gx#module-context?
                                                           (gx#stx-e _hd8320_))
                                                          (_K8321_ _rest8322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-e _hd8320_) _r8323_))
                  (if (_import-spec?7879_ _hd8320_)
                      (_import-spec7884_ _hd8320_ _K8321_ _rest8322_ _r8323_)
                      (if (_import-submodule?7880_ _hd8320_)
                          (_import-submodule7882_
                           _hd8320_
                           _K8321_
                           _rest8322_
                           _r8323_)
                          (if (_import-runtime?7881_ _hd8320_)
                              (_import-runtime7883_
                               _hd8320_
                               _K8321_
                               _rest8322_
                               _r8323_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal import"
                               _stx7874_
                               _hd8320_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let ((_rbody7889_
                                          (gx#core-expand-import/export
                                           _stx7874_
                                           _expanded-import?7887_
                                           'apply-import-expander
                                           gx#current-import-expander-phi
                                           _expand17877_)))
                                     (if _internal-expand?7875_
                                         (reverse _rbody7889_)
                                         (gx#core-quote-syntax
                                          (gx#core-cons
                                           '%#import
                                           (_import!7886_ _rbody7889_))
                                          (gx#stx-source
                                           _stx7874_))))))))))))))))))
      (lambda _g12543_
        (let ((_g12542_ (length _g12543_)))
          (cond ((fx= _g12542_ 1)
                 (apply (lambda (_stx8328_)
                          (let ((_internal-expand?8330_ '#f))
                            (_opt-lambda78728325_
                             _stx8328_
                             _internal-expand?8330_)))
                        _g12543_))
                ((fx= _g12542_ 2)
                 (apply (lambda (_stx8332_ _internal-expand?8333_)
                          (_opt-lambda78728325_
                           _stx8332_
                           _internal-expand?8333_))
                        _g12543_))
                (else (error "No clause matching arguments" _g12543_)))))))
  (define gx#core-import-nested-module
    (lambda (_spath7801_ _where7802_)
      (let ((_e78037810_ _spath7801_))
        (let ((_E78057814_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78037810_))))
          (let ((_E78047869_
                 (lambda ()
                   (if (gx#stx-pair? _e78037810_)
                       (let ((_e78067818_ (gx#syntax-e _e78037810_)))
                         (let ((_hd78077821_ (##car _e78067818_))
                               (_tl78087823_ (##cdr _e78067818_)))
                           (let ((_origin7826_ _hd78077821_))
                             (let ((_sub7828_ _tl78087823_))
                               (if '#t
                                   (let ((_origin-ctx7830_
                                          (if (gx#stx-false? _origin7826_)
                                              (gx#current-expander-context)
                                              (gx#import-module
                                               _origin7826_))))
                                     ((letrec ((_lp7832_
                                                (lambda (_rest7834_ _ctx7835_)
                                                  (let ((_e78367843_
                                                         _rest7834_))
                                                    (let ((_E78387847_
                                                           (lambda ()
                                                             _ctx7835_)))
                                                      (let ((_E78377865_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e78367843_)
                           (let ((_e78397851_ (gx#syntax-e _e78367843_)))
                             (let ((_hd78407854_ (##car _e78397851_))
                                   (_tl78417856_ (##cdr _e78397851_)))
                               (let ((_id7859_ _hd78407854_))
                                 (let ((_rest7861_ _tl78417856_))
                                   (if '#t
                                       (let ((_bind7863_
                                              (gx#resolve-identifier
                                               _id7859_
                                               '0
                                               _ctx7835_)))
                                         (begin
                                           (if (if (gx#syntax-binding?
                                                    _bind7863_)
                                                   (gx#module-context?
                                                    (gx#syntax-binding-e
                                                     _bind7863_))
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where7802_
                                                _spath7801_
                                                _id7859_))
                                           (_lp7832_
                                            _rest7861_
                                            (gx#syntax-binding-e _bind7863_))))
                                       (_E78387847_))))))
                           (_E78387847_)))))
                (let () (_E78377865_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7832_)
                                      _sub7828_
                                      _origin-ctx7830_))
                                   (_E78057814_))))))
                       (_E78057814_)))))
            (let () (_E78047869_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd7799_)
      (gx#core-expand-import%
       (cons 'import-internal% (cons _hd7799_ '()))
       '#t)))
  (define gx#core-expand-export%
    (let ((_opt-lambda74307789_
           (lambda (_stx7432_ _internal-expand?7433_)
             (let ((_make-export7435_
                    (let ((_opt-lambda77457760_
                           (lambda (_bind7747_ _phi7748_ _ctx7749_ _name7750_)
                             (let ((_key7752_ (gx#binding-key _bind7747_)))
                               (let ((_export-key7754_
                                      (if _name7750_
                                          (gx#core-identifier-key _name7750_)
                                          _key7752_)))
                                 (let ()
                                   (gx#make-module-export
                                    _ctx7749_
                                    _key7752_
                                    _phi7748_
                                    _export-key7754_
                                    (let ((_$e7757_
                                           (gx#extern-binding? _bind7747_)))
                                      (if _$e7757_
                                          _$e7757_
                                          (gx#import-binding?
                                           _bind7747_))))))))))
                      (lambda _g12545_
                        (let ((_g12544_ (length _g12545_)))
                          (cond ((fx= _g12544_ 1)
                                 (apply (lambda (_bind7763_)
                                          (let ((_phi7765_
                                                 (gx#current-export-expander-phi)))
                                            (let ((_ctx7767_
                                                   (gx#current-expander-context)))
                                              (let ((_name7769_ '#f))
                                                (_opt-lambda77457760_
                                                 _bind7763_
                                                 _phi7765_
                                                 _ctx7767_
                                                 _name7769_)))))
                                        _g12545_))
                                ((fx= _g12544_ 2)
                                 (apply (lambda (_bind7771_ _phi7772_)
                                          (let ((_ctx7774_
                                                 (gx#current-expander-context)))
                                            (let ((_name7776_ '#f))
                                              (_opt-lambda77457760_
                                               _bind7771_
                                               _phi7772_
                                               _ctx7774_
                                               _name7776_))))
                                        _g12545_))
                                ((fx= _g12544_ 3)
                                 (apply (lambda (_bind7778_
                                                 _phi7779_
                                                 _ctx7780_)
                                          (let ((_name7782_ '#f))
                                            (_opt-lambda77457760_
                                             _bind7778_
                                             _phi7779_
                                             _ctx7780_
                                             _name7782_)))
                                        _g12545_))
                                ((fx= _g12544_ 4)
                                 (apply (lambda (_bind7784_
                                                 _phi7785_
                                                 _ctx7786_
                                                 _name7787_)
                                          (_opt-lambda77457760_
                                           _bind7784_
                                           _phi7785_
                                           _ctx7786_
                                           _name7787_))
                                        _g12545_))
                                (else
                                 (error "No clause matching arguments"
                                        _g12545_))))))))
               (let ((_export-imports7437_
                      (lambda (_src7458_ _r7459_)
                        (let ((_current-ctx7461_
                               (gx#current-expander-context)))
                          (let ((_current-phi7462_
                                 (gx#current-export-expander-phi)))
                            (let ((_import->export7463_
                                   (lambda (_in7471_)
                                     (let ((_in74727480_ _in7471_))
                                       (let ((_E74747484_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _in74727480_))))
                                         (let ((_K74757491_
                                                (lambda (_phi7487_
                                                         _key7488_
                                                         _out7489_)
                                                  (if (fx= _phi7487_
                                                           _current-phi7462_)
                                                      (if (eq? _src7458_
                                                               (gx#module-export-context
                                                                _out7489_))
                                                          (gx#make-module-export
                                                           _current-ctx7461_
                                                           _key7488_
                                                           _phi7487_
                                                           _key7488_
                                                           '#t)
                                                          '#f)
                                                      '#f))))
                                           (if (direct-struct-instance?
                                                gx#module-import::t
                                                _in74727480_)
                                               (let ((_e74767494_
                                                      (##vector-ref
                                                       _in74727480_
                                                       '1)))
                                                 (let ((_out7497_ _e74767494_))
                                                   (let ((_e74777499_
                                                          (##vector-ref
                                                           _in74727480_
                                                           '2)))
                                                     (let ((_key7502_
                                                            _e74777499_))
                                                       (let ((_e74787504_
                                                              (##vector-ref
                                                               _in74727480_
                                                               '3)))
                                                         (let ((_phi7507_
                                                                _e74787504_))
                                                           (_K74757491_
                                                            _phi7507_
                                                            _key7502_
                                                            _out7497_)))))))
                                               (_E74747484_))))))))
                              (let ((_fold-e7464_
                                     (lambda (_in7466_ _r7467_)
                                       (let ((_out7469_
                                              (_import->export7463_ _in7466_)))
                                         (if _out7469_
                                             (cons _out7469_ _r7467_)
                                             _r7467_)))))
                                (cons (gx#make-export-set
                                       _src7458_
                                       _current-phi7462_
                                       (foldl _fold-e7464_
                                              '()
                                              (gx#module-context-import
                                               _current-ctx7461_)))
                                      _r7459_))))))))
                 (let ((_export!7438_
                        (lambda (_rbody7448_)
                          (let ((_current-ctx7450_
                                 (gx#current-expander-context)))
                            (let ((_fold-e7451_
                                   (lambda (_out7455_ _r7456_)
                                     (if (gx#module-export? _out7455_)
                                         (cons _out7455_ _r7456_)
                                         (if (gx#export-set? _out7455_)
                                             (foldl cons
                                                    _r7456_
                                                    (gx#export-set-exports
                                                     _out7455_))
                                             _r7456_)))))
                              (let ((_body7453_ (reverse _rbody7448_)))
                                (begin
                                  (gx#module-context-export-set!
                                   _current-ctx7450_
                                   (foldl _fold-e7451_
                                          (gx#module-context-export
                                           _current-ctx7450_)
                                          _body7453_))
                                  _body7453_)))))))
                   (let ((_expanded-export?7439_
                          (lambda (_e7443_)
                            (let ((_$e7445_ (gx#module-export? _e7443_)))
                              (if _$e7445_
                                  _$e7445_
                                  (gx#export-set? _e7443_))))))
                     (let ((_expand17436_
                            (lambda (_hd7509_ _K7510_ _rest7511_ _r7512_)
                              (let ((_e75137535_ _hd7509_))
                                (let ((_E75307539_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; illegal export"
                                          _stx7432_
                                          _hd7509_))))
                                  (let ((_E75177618_
                                         (lambda ()
                                           (if (gx#stx-pair? _e75137535_)
                                               (let ((_e75317543_
                                                      (gx#syntax-e
                                                       _e75137535_)))
                                                 (let ((_hd75327546_
                                                        (##car _e75317543_))
                                                       (_tl75337548_
                                                        (##cdr _e75317543_)))
                                                   (if (eq? (gx#stx-e
                                                             _hd75327546_)
                                                            'import:)
                                                       (let ((_in7551_
                                                              _tl75337548_))
                                                         (if (gx#stx-list?
                                                              _in7551_)
                                                             ((letrec ((_lp7553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_in-rest7555_ _r7556_)
                                  (let ((_e75577564_ _in-rest7555_))
                                    (let ((_E75597568_
                                           (lambda ()
                                             (_K7510_ _rest7511_ _r7556_))))
                                      (let ((_E75587614_
                                             (lambda ()
                                               (if (gx#stx-pair? _e75577564_)
                                                   (let ((_e75607572_
                                                          (gx#syntax-e
                                                           _e75577564_)))
                                                     (let ((_hd75617575_
                                                            (##car _e75607572_))
                                                           (_tl75627577_
                                                            (##cdr _e75607572_)))
                                                       (let ((_hd7580_
                                                              _hd75617575_))
                                                         (let ((_in-rest7582_
                                                                _tl75627577_))
                                                           (if '#t
                                                               (let ((_src7612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (gx#core-bound-module? _hd7580_)
                                  (gx#syntax-local-e _hd7580_)
                                  (if (gx#core-library-module-path? _hd7580_)
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _hd7580_))
                                      (if (gx#stx-string? _hd7580_)
                                          (gx#import-module
                                           (gx#core-resolve-module-path
                                            _hd7580_
                                            (gx#stx-source _stx7432_)))
                                          (let ((_e75837590_ _hd7580_))
                                            (let ((_E75857594_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; illegal re-export"
                                                      _stx7432_
                                                      _hd7580_))))
                                              (let ((_E75847608_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e75837590_)
                                                           (let ((_e75867598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e75837590_)))
                     (let ((_hd75877601_ (##car _e75867598_))
                           (_tl75887603_ (##cdr _e75867598_)))
                       (if (eq? (gx#stx-e _hd75877601_) 'in:)
                           (let ((_spath7606_ _tl75887603_))
                             (if '#t
                                 (gx#core-import-nested-module
                                  _spath7606_
                                  _stx7432_)
                                 (_E75857594_)))
                           (_E75857594_))))
                   (_E75857594_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E75847608_))))))))))
                         (_lp7553_
                          _in-rest7582_
                          (_export-imports7437_ _src7612_ _r7556_)))
                       (_E75597568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E75597568_)))))
                                        (let () (_E75587614_))))))))
                        _lp7553_)
                      _in7551_
                      _r7512_)
                     (_E75307539_)))
               (_E75307539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E75307539_)))))
                                    (let ((_E75167667_
                                           (lambda ()
                                             (if (gx#stx-pair? _e75137535_)
                                                 (let ((_e75187622_
                                                        (gx#syntax-e
                                                         _e75137535_)))
                                                   (let ((_hd75197625_
                                                          (##car _e75187622_))
                                                         (_tl75207627_
                                                          (##cdr _e75187622_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd75197625_)
                                                              'spec:)
                                                         (if (gx#stx-pair?
                                                              _tl75207627_)
                                                             (let ((_e75217630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl75207627_)))
                       (let ((_hd75227633_ (##car _e75217630_))
                             (_tl75237635_ (##cdr _e75217630_)))
                         (let ((_phi7638_ _hd75227633_))
                           (if (gx#stx-pair? _tl75237635_)
                               (let ((_e75247640_ (gx#syntax-e _tl75237635_)))
                                 (let ((_hd75257643_ (##car _e75247640_))
                                       (_tl75267645_ (##cdr _e75247640_)))
                                   (let ((_id7648_ _hd75257643_))
                                     (if (gx#stx-pair? _tl75267645_)
                                         (let ((_e75277650_
                                                (gx#syntax-e _tl75267645_)))
                                           (let ((_hd75287653_
                                                  (##car _e75277650_))
                                                 (_tl75297655_
                                                  (##cdr _e75277650_)))
                                             (let ((_name7658_ _hd75287653_))
                                               (if (gx#stx-null? _tl75297655_)
                                                   (if (if (gx#stx-fixnum?
                                                            _phi7638_)
                                                           (if (gx#identifier?
                                                                _id7648_)
                                                               (gx#identifier?
                                                                _name7658_)
                                                               '#f)
                                                           '#f)
                                                       (let ((_phi7660_
                                                              (gx#stx-e
                                                               _phi7638_)))
                                                         (let ((_$e7662_
                                                                (gx#core-resolve-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id7648_
                         _phi7660_)))
                   (if _$e7662_
                       ((lambda (_bind7665_)
                          (_K7510_ _rest7511_
                                   (cons (_make-export7435_
                                          _bind7665_
                                          _phi7660_
                                          (gx#current-expander-context)
                                          _name7658_)
                                         _r7512_)))
                        _$e7662_)
                       (gx#raise-syntax-error
                        '#f
                        '"Reference to unbound identifier"
                        _stx7432_
                        _hd7509_
                        _id7648_))))
               (_E75177618_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E75177618_)))))
                                         (_E75177618_)))))
                               (_E75177618_)))))
                     (_E75177618_))
                 (_E75177618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E75177618_)))))
                                      (let ((_E75157678_
                                             (lambda ()
                                               (let ((_id7671_ _e75137535_))
                                                 (if (gx#identifier? _id7671_)
                                                     (let ((_$e7673_
                                                            (gx#core-resolve-identifier
                                                             _id7671_
                                                             (gx#current-export-expander-phi))))
                                                       (if _$e7673_
                                                           ((lambda (_bind7676_)
                                                              (_K7510_ _rest7511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (_make-export7435_ _bind7676_) _r7512_)))
                    _$e7673_)
                   (gx#raise-syntax-error
                    '#f
                    '"Reference to unbound identifier"
                    _stx7432_
                    _hd7509_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E75167667_))))))
                                        (let ((_E75147742_
                                               (lambda ()
                                                 (if (eq? (gx#stx-e
                                                           _e75137535_)
                                                          '#t)
                                                     (if '#t
                                                         (let ((_current-ctx7682_
                                                                (gx#current-expander-context)))
                                                           (let ((_current-phi7684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#current-export-expander-phi)))
                     (let ((_phi-ctx7686_
                            (gx#core-context-shift
                             _current-ctx7682_
                             _current-phi7684_)))
                       (let ((_phi-bind7688_
                              (hash->list
                               (gx#expander-context-table _phi-ctx7686_))))
                         (let ()
                           ((letrec ((_lp7691_
                                      (lambda (_bind-rest7693_ _set7694_)
                                        (let ((_bind-rest76957705_
                                               _bind-rest7693_))
                                          (let ((_E76987709_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _bind-rest76957705_))))
                                            (let ((_else76977713_
                                                   (lambda ()
                                                     (_K7510_ _rest7511_
                                                              (cons (gx#make-export-set
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             _current-phi7684_
                             _set7694_)
                            _r7512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_K76997723_
                                                     (lambda (_bind-rest7716_
                                                              _bind7717_
                                                              _key7718_)
                                                       (if (let ((_$e7720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#import-binding? _bind7717_)))
                     (if _$e7720_
                         _$e7720_
                         (gx#private-feature-binding? _bind7717_)))
                   (_lp7691_ _bind-rest7716_ _set7694_)
                   (_lp7691_
                    _bind-rest7716_
                    (cons (_make-export7435_
                           _bind7717_
                           _current-phi7684_
                           _current-ctx7682_)
                          _set7694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _bind-rest76957705_)
                                                    (let ((_hd77007726_
                                                           (##car _bind-rest76957705_))
                                                          (_tl77017728_
                                                           (##cdr _bind-rest76957705_)))
                                                      (if (##pair? _hd77007726_)
                                                          (let ((_hd77027731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _hd77007726_))
                        (_tl77037733_ (##cdr _hd77007726_)))
                    (let ((_key7736_ _hd77027731_))
                      (let ((_bind7738_ _tl77037733_))
                        (let ((_bind-rest7740_ _tl77017728_))
                          (_K76997723_
                           _bind-rest7740_
                           _bind7738_
                           _key7736_)))))
                  (_else76977713_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else76977713_)))))))))
                              _lp7691_)
                            _phi-bind7688_
                            '()))))))
                 (_E75157678_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E75157678_)))))
                                          (let () (_E75147742_)))))))))))
                       (let ((_rbody7441_
                              (gx#core-expand-import/export
                               _stx7432_
                               gx#module-export?
                               'apply-export-expander
                               gx#current-export-expander-phi
                               _expand17436_)))
                         (if _internal-expand?7433_
                             (reverse _rbody7441_)
                             (gx#core-quote-syntax
                              (gx#core-cons
                               '%#export
                               (_export!7438_ _rbody7441_))
                              (gx#stx-source _stx7432_))))))))))))
      (lambda _g12547_
        (let ((_g12546_ (length _g12547_)))
          (cond ((fx= _g12546_ 1)
                 (apply (lambda (_stx7792_)
                          (let ((_internal-expand?7794_ '#f))
                            (_opt-lambda74307789_
                             _stx7792_
                             _internal-expand?7794_)))
                        _g12547_))
                ((fx= _g12546_ 2)
                 (apply (lambda (_stx7796_ _internal-expand?7797_)
                          (_opt-lambda74307789_
                           _stx7796_
                           _internal-expand?7797_))
                        _g12547_))
                (else (error "No clause matching arguments" _g12547_)))))))
  (define gx#core-expand-export-source
    (lambda (_hd7429_)
      (gx#core-expand-export% (cons 'export-macro% (cons _hd7429_ '())) '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx7399_)
      (let ((_e74007407_ _stx7399_))
        (let ((_E74027411_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74007407_))))
          (let ((_E74017425_
                 (lambda ()
                   (if (gx#stx-pair? _e74007407_)
                       (let ((_e74037415_ (gx#syntax-e _e74007407_)))
                         (let ((_hd74047418_ (##car _e74037415_))
                               (_tl74057420_ (##cdr _e74037415_)))
                           (let ((_body7423_ _tl74057420_))
                             (if (gx#identifier-list? _body7423_)
                                 (begin
                                   (gx#stx-for-each
                                    gx#core-bind-feature!
                                    _body7423_)
                                   (gx#core-quote-syntax
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map
                                      gx#core-quote-syntax
                                      _body7423_))
                                    (gx#stx-source _stx7399_)))
                                 (_E74027411_)))))
                       (_E74027411_)))))
            (let () (_E74017425_)))))))
  (define gx#core-bind-feature!
    (let ((_opt-lambda73637370_
           (lambda (_id7365_ _private?7366_ _phi7367_ _ctx7368_)
             (gx#core-bind-syntax!
              _id7365_
              ((if _private?7366_
                   gx#make-private-feature-expander
                   gx#make-feature-expander)
               (gx#stx-e _id7365_))
              _private?7366_
              _phi7367_
              _ctx7368_))))
      (lambda _g12549_
        (let ((_g12548_ (length _g12549_)))
          (cond ((fx= _g12548_ 1)
                 (apply (lambda (_id7373_)
                          (let ((_private?7375_ '#f))
                            (let ((_phi7377_ (gx#current-expander-phi)))
                              (let ((_ctx7379_ (gx#current-expander-context)))
                                (_opt-lambda73637370_
                                 _id7373_
                                 _private?7375_
                                 _phi7377_
                                 _ctx7379_)))))
                        _g12549_))
                ((fx= _g12548_ 2)
                 (apply (lambda (_id7381_ _private?7382_)
                          (let ((_phi7384_ (gx#current-expander-phi)))
                            (let ((_ctx7386_ (gx#current-expander-context)))
                              (_opt-lambda73637370_
                               _id7381_
                               _private?7382_
                               _phi7384_
                               _ctx7386_))))
                        _g12549_))
                ((fx= _g12548_ 3)
                 (apply (lambda (_id7388_ _private?7389_ _phi7390_)
                          (let ((_ctx7392_ (gx#current-expander-context)))
                            (_opt-lambda73637370_
                             _id7388_
                             _private?7389_
                             _phi7390_
                             _ctx7392_)))
                        _g12549_))
                ((fx= _g12548_ 4)
                 (apply (lambda (_id7394_ _private?7395_ _phi7396_ _ctx7397_)
                          (_opt-lambda73637370_
                           _id7394_
                           _private?7395_
                           _phi7396_
                           _ctx7397_))
                        _g12549_))
                (else (error "No clause matching arguments" _g12549_))))))))
