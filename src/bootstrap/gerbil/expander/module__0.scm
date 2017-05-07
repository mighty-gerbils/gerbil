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
    (lambda _$args9467_
      (apply make-struct-instance gx#module-import::t _$args9467_)))
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
    (lambda _$args9464_
      (apply make-struct-instance gx#module-export::t _$args9464_)))
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
    (lambda _$args9461_
      (apply make-struct-instance gx#import-set::t _$args9461_)))
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
    (lambda _$args9458_
      (apply make-struct-instance gx#export-set::t _$args9458_)))
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
    (lambda _$args9455_
      (apply make-struct-instance gx#import-expander::t _$args9455_)))
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
    (lambda _$args9452_
      (apply make-struct-instance gx#export-expander::t _$args9452_)))
  (begin)
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self9446_ _id9447_ _super9448_ _ns9449_ _path9450_)
      (direct-struct-instance-init!
       _self9446_
       _id9447_
       (make-hash-table-eq)
       _super9448_
       '#f
       '#f
       _ns9449_
       _path9450_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (define gx#prelude-context:::init!
    (let ((_opt-lambda94109434_
           (lambda (_self9412_ _ctx9413_ _root9414_)
             (let ((_super9422_
                    (let ((_$e9416_ _root9414_))
                      (if _$e9416_
                          _$e9416_
                          (let ((_$e9419_ (gx#core-context-root)))
                            (if _$e9419_ _$e9419_ (gx#make-root-context)))))))
               (if _ctx9413_
                   (let ((_id9425_ (gx#expander-context-id _ctx9413_))
                         (_path9426_ (gx#module-context-path _ctx9413_))
                         (_in9427_
                          (map gx#core-module-export->import
                               (gx#module-context-export _ctx9413_)))
                         (_e9428_ (make-promise
                                   (lambda () (gx#eval-module _ctx9413_)))))
                     (begin
                       (direct-struct-instance-init!
                        _self9412_
                        _id9425_
                        (make-hash-table-eq)
                        _super9422_
                        '#f
                        '#f
                        _path9426_
                        _in9427_
                        _e9428_)
                       (for-each
                        (lambda (_g94299431_)
                          (gx#core-bind-weak-import! _g94299431_ _self9412_))
                        _in9427_)))
                   (direct-struct-instance-init!
                    _self9412_
                    '#f
                    (make-hash-table-eq)
                    _super9422_
                    '#f
                    '#f
                    '#f
                    '()
                    '#f))))))
      (lambda _g12361_
        (let ((_g12360_ (length _g12361_)))
          (cond ((fx= _g12360_ 2)
                 (apply (lambda (_self9437_ _ctx9438_)
                          (let ((_root9440_ '#f))
                            (_opt-lambda94109434_
                             _self9437_
                             _ctx9438_
                             _root9440_)))
                        _g12361_))
                ((fx= _g12360_ 3)
                 (apply (lambda (_self9442_ _ctx9443_ _root9444_)
                          (_opt-lambda94109434_
                           _self9442_
                           _ctx9443_
                           _root9444_))
                        _g12361_))
                (else (error "No clause matching arguments" _g12361_)))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self9408_ _e9409_)
      (direct-struct-instance-init!
       _self9408_
       _e9409_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self9405_ _e9406_)
      (direct-struct-instance-init!
       _self9405_
       _e9406_
       (gx#current-expander-context)
       (fx1- (gx#current-expander-phi)))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g93979400_ _g93989402_)
      (gx#core-apply-user-expander
       _g93979400_
       _g93989402_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g93909393_ _g93919395_)
      (gx#core-apply-user-expander
       _g93909393_
       _g93919395_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx9384_)
      (let ((_path9386_ (gx#module-context-path _ctx9384_)))
        (let ((_path9388_
               (if (pair? _path9386_) (last _path9386_) _path9386_)))
          (let () (if (string? _path9388_) _path9388_ '#f))))))
  (define gx#import-module
    (let ((_opt-lambda93589366_
           (lambda (_path9360_ _reload?9361_ _eval?9362_)
             (let ((_ctx9364_
                    ((gx#current-expander-module-import)
                     _path9360_
                     _reload?9361_)))
               (begin
                 (if (if _ctx9364_ _eval?9362_ '#f)
                     (gx#eval-module _ctx9364_)
                     '#!void)
                 _ctx9364_)))))
      (lambda _g12363_
        (let ((_g12362_ (length _g12363_)))
          (cond ((fx= _g12362_ 1)
                 (apply (lambda (_path9369_)
                          (let ((_reload?9371_ '#f))
                            (let ((_eval?9373_ '#f))
                              (_opt-lambda93589366_
                               _path9369_
                               _reload?9371_
                               _eval?9373_))))
                        _g12363_))
                ((fx= _g12362_ 2)
                 (apply (lambda (_path9375_ _reload?9376_)
                          (let ((_eval?9378_ '#f))
                            (_opt-lambda93589366_
                             _path9375_
                             _reload?9376_
                             _eval?9378_)))
                        _g12363_))
                ((fx= _g12362_ 3)
                 (apply (lambda (_path9380_ _reload?9381_ _eval?9382_)
                          (_opt-lambda93589366_
                           _path9380_
                           _reload?9381_
                           _eval?9382_))
                        _g12363_))
                (else (error "No clause matching arguments" _g12363_)))))))
  (define gx#eval-module
    (lambda (_mod9357_) ((gx#current-expander-module-eval) _mod9357_)))
  (define gx#core-eval-module
    (lambda (_obj9342_)
      (let ((_force-e9344_
             (lambda (_getf9353_ _e9354_)
               (call-with-parameters
                (lambda () (force (_getf9353_ _e9354_)))
                gx#current-expander-context
                _e9354_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur9346_
                   (lambda (_e9348_)
                     (if (gx#module-context? _e9348_)
                         (begin
                           (let ((_$e9350_ (gx#core-context-prelude _e9348_)))
                             (if _$e9350_ (_recur9346_ _$e9350_) '#!void))
                           (_force-e9344_ gx#module-context-e _e9348_))
                         (if (gx#prelude-context? _e9348_)
                             (_force-e9344_ gx#prelude-context-e _e9348_)
                             (if (gx#stx-string? _e9348_)
                                 (_recur9346_
                                  (gx#import-module
                                   (gx#core-resolve-module-path _e9348_)))
                                 (if (gx#core-library-module-path? _e9348_)
                                     (_recur9346_
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _e9348_)))
                                     (error '"Cannot eval module"
                                            _obj9342_))))))))
           _recur9346_)
         _obj9342_))))
  (define gx#core-context-prelude
    (let ((_opt-lambda93239334_
           (lambda (_ctx9325_)
             ((letrec ((_lp9327_
                        (lambda (_e9329_)
                          (if (let ((_$e9331_ (gx#module-context? _e9329_)))
                                (if _$e9331_
                                    _$e9331_
                                    (gx#local-context? _e9329_)))
                              (_lp9327_ (gx#phi-context-super _e9329_))
                              (if (gx#prelude-context? _e9329_)
                                  _e9329_
                                  '#f)))))
                _lp9327_)
              _ctx9325_))))
      (lambda _g12365_
        (let ((_g12364_ (length _g12365_)))
          (cond ((fx= _g12364_ 0)
                 (apply (lambda ()
                          (let ((_ctx9338_ (gx#current-expander-context)))
                            (_opt-lambda93239334_ _ctx9338_)))
                        _g12365_))
                ((fx= _g12364_ 1)
                 (apply (lambda (_ctx9340_) (_opt-lambda93239334_ _ctx9340_))
                        _g12365_))
                (else (error "No clause matching arguments" _g12365_)))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx9315_)
      (let ((_ht9317_ (gx#current-expander-module-registry)))
        (let ((_$e9319_ (hash-get _ht9317_ _ctx9315_)))
          (if _$e9319_
              (values _$e9319_)
              (let ((_pre9322_ (gx#make-prelude-context _ctx9315_)))
                (begin
                  (hash-put! _ht9317_ _ctx9315_ _pre9322_)
                  _pre9322_)))))))
  (define gx#core-import-module
    (let ((_opt-lambda92679305_
           (lambda (_rpath9269_ _reload?9270_)
             (let ((_import-source9272_
                    (lambda (_path9284_)
                      (begin
                        (if (member _path9284_ (gx#current-expander-path))
                            (error '"Cyclic expansion" _path9284_)
                            '#!void)
                        (call-with-parameters
                         (lambda ()
                           (let ((_g12366_ (gx#core-read-module _path9284_)))
                             (begin
                               (let ((_g12367_ (values-count _g12366_)))
                                 (if (not (fx= _g12367_ 4))
                                     (error "Context expects 4 values"
                                            _g12367_)))
                               (let ((_pre9287_ (values-ref _g12366_ 0))
                                     (_id9288_ (values-ref _g12366_ 1))
                                     (_ns9289_ (values-ref _g12366_ 2))
                                     (_body9290_ (values-ref _g12366_ 3)))
                                 (let ((_prelude9295_
                                        (if (gx#prelude-context? _pre9287_)
                                            _pre9287_
                                            (if (gx#module-context? _pre9287_)
                                                (gx#core-module->prelude-context
                                                 _pre9287_)
                                                (if (string? _pre9287_)
                                                    (gx#core-module->prelude-context
                                                     (gx#core-import-module
                                                      _pre9287_))
                                                    (if (not _pre9287_)
                                                        (let ((_$e9292_
                                                               (gx#current-expander-module-prelude)))
                                                          (if _$e9292_
                                                              _$e9292_
                                                              (gx#make-prelude-context
                                                               '#f)))
                                                        (error '"Cannot import module; unknown prelude"
                                                               _rpath9269_
                                                               _pre9287_)))))))
                                   (let ((_ctx9297_
                                          (gx#make-module-context
                                           _id9288_
                                           _prelude9295_
                                           _ns9289_
                                           _path9284_)))
                                     (let ((_body9299_
                                            (gx#core-expand-module-begin
                                             _body9290_
                                             _ctx9297_)))
                                       (let ((_body9301_
                                              (gx#core-quote-syntax
                                               (gx#core-cons
                                                '%#begin
                                                _body9299_)
                                               _path9284_
                                               _ctx9297_
                                               '())))
                                         (let ()
                                           (begin
                                             (gx#module-context-e-set!
                                              _ctx9297_
                                              (make-promise
                                               (lambda ()
                                                 (gx#eval-syntax*
                                                  _body9301_))))
                                             (gx#module-context-code-set!
                                              _ctx9297_
                                              _body9301_)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _path9284_
                                              _ctx9297_)
                                             (hash-put!
                                              (gx#current-expander-module-registry)
                                              _id9288_
                                              _ctx9297_)
                                             _ctx9297_))))))))))
                         gx#current-expander-context
                         (gx#core-context-root)
                         gx#current-expander-marks
                         '()
                         gx#current-expander-phi
                         '0
                         gx#current-expander-path
                         (cons _path9284_ (gx#current-expander-path))
                         gx#current-import-expander-phi
                         '#f
                         gx#current-export-expander-phi
                         '#f)))))
               (let ((_$e9274_
                      (if (not _reload?9270_)
                          (hash-get
                           (gx#current-expander-module-registry)
                           _rpath9269_)
                          '#f)))
                 (if _$e9274_
                     (values _$e9274_)
                     (if (gx#core-library-module-path? _rpath9269_)
                         (let ((_ctx9277_
                                (gx#core-import-module
                                 (gx#core-resolve-library-module-path
                                  _rpath9269_)
                                 _reload?9270_)))
                           (begin
                             (hash-put!
                              (gx#current-expander-module-registry)
                              _rpath9269_
                              _ctx9277_)
                             _ctx9277_))
                         (let ((_npath9279_ (path-normalize _rpath9269_)))
                           (let ((_$e9281_
                                  (if (not _reload?9270_)
                                      (hash-get
                                       (gx#current-expander-module-registry)
                                       _npath9279_)
                                      '#f)))
                             (if _$e9281_
                                 (values _$e9281_)
                                 (_import-source9272_ _npath9279_)))))))))))
      (lambda _g12369_
        (let ((_g12368_ (length _g12369_)))
          (cond ((fx= _g12368_ 1)
                 (apply (lambda (_rpath9308_)
                          (let ((_reload?9310_ '#f))
                            (_opt-lambda92679305_ _rpath9308_ _reload?9310_)))
                        _g12369_))
                ((fx= _g12368_ 2)
                 (apply (lambda (_rpath9312_ _reload?9313_)
                          (_opt-lambda92679305_ _rpath9312_ _reload?9313_))
                        _g12369_))
                (else (error "No clause matching arguments" _g12369_)))))))
  (define gx#core-read-module
    (lambda (_path9132_)
      ((letrec ((_lp9134_
                 (lambda (_body9136_ _pre9137_ _ns9138_ _pkg9139_)
                   (let ((_e91409164_ _body9136_))
                     (let ((_E91569182_
                            (lambda ()
                              (let ((_prelude9168_
                                     (if (gx#core-bound-module-prelude?
                                          _pre9137_)
                                         (gx#syntax-local-e _pre9137_)
                                         (if (gx#core-library-module-path?
                                              _pre9137_)
                                             (gx#core-resolve-library-module-path
                                              _pre9137_)
                                             (if (gx#stx-string? _pre9137_)
                                                 (gx#core-resolve-module-path
                                                  _pre9137_
                                                  _path9132_)
                                                 (gx#stx-e _pre9137_))))))
                                (let ((_path-id9170_
                                       (gx#core-module-path->namespace
                                        _path9132_)))
                                  (let ((_pkg-id9172_
                                         (if _pkg9139_
                                             (string-append
                                              _pkg9139_
                                              '"/"
                                              _path-id9170_)
                                             _path-id9170_)))
                                    (let ((_module-id9174_
                                           (string->symbol _pkg-id9172_)))
                                      (let ((_module-ns9179_
                                             (let ((_$e9176_ _ns9138_))
                                               (if _$e9176_
                                                   _$e9176_
                                                   _pkg-id9172_))))
                                        (let ()
                                          (values _prelude9168_
                                                  _module-id9174_
                                                  _module-ns9179_
                                                  _body9136_))))))))))
                       (let ((_E91499211_
                              (lambda ()
                                (if (gx#stx-pair? _e91409164_)
                                    (let ((_e91579186_
                                           (gx#syntax-e _e91409164_)))
                                      (let ((_hd91589189_ (##car _e91579186_))
                                            (_tl91599191_ (##cdr _e91579186_)))
                                        (if (eq? (gx#stx-e _hd91589189_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl91599191_)
                                                (let ((_e91609194_
                                                       (gx#syntax-e
                                                        _tl91599191_)))
                                                  (let ((_hd91619197_
                                                         (##car _e91609194_))
                                                        (_tl91629199_
                                                         (##cdr _e91609194_)))
                                                    (let ((_pkg9202_
                                                           _hd91619197_))
                                                      (let ((_rest9204_
                                                             _tl91629199_))
                                                        (if '#t
                                                            (let ((_pkg9209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg9202_)
                               (symbol->string (gx#stx-e _pkg9202_))
                               (if (let ((_$e9206_ (gx#stx-string? _pkg9202_)))
                                     (if _$e9206_
                                         _$e9206_
                                         (gx#stx-false? _pkg9202_)))
                                   (gx#stx-e _pkg9202_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg9202_)))))
                      (_lp9134_ _rest9204_ _pre9137_ _ns9138_ _pkg9209_))
                    (_E91569182_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91569182_))
                                            (_E91569182_))))
                                    (_E91569182_)))))
                         (let ((_E91429240_
                                (lambda ()
                                  (if (gx#stx-pair? _e91409164_)
                                      (let ((_e91509215_
                                             (gx#syntax-e _e91409164_)))
                                        (let ((_hd91519218_
                                               (##car _e91509215_))
                                              (_tl91529220_
                                               (##cdr _e91509215_)))
                                          (if (eq? (gx#stx-e _hd91519218_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl91529220_)
                                                  (let ((_e91539223_
                                                         (gx#syntax-e
                                                          _tl91529220_)))
                                                    (let ((_hd91549226_
                                                           (##car _e91539223_))
                                                          (_tl91559228_
                                                           (##cdr _e91539223_)))
                                                      (let ((_ns9231_
                                                             _hd91549226_))
                                                        (let ((_rest9233_
                                                               _tl91559228_))
                                                          (if '#t
                                                              (let ((_ns9238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns9231_)
                                 (symbol->string (gx#stx-e _ns9231_))
                                 (if (let ((_$e9235_
                                            (gx#stx-string? _ns9231_)))
                                       (if _$e9235_
                                           _$e9235_
                                           (gx#stx-false? _ns9231_)))
                                     (gx#stx-e _ns9231_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns9231_)))))
                        (_lp9134_ _rest9233_ _pre9137_ _ns9238_ _pkg9139_))
                      (_E91499211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E91499211_))
                                              (_E91499211_))))
                                      (_E91499211_)))))
                           (let ((_E91419264_
                                  (lambda ()
                                    (if (gx#stx-pair? _e91409164_)
                                        (let ((_e91439244_
                                               (gx#syntax-e _e91409164_)))
                                          (let ((_hd91449247_
                                                 (##car _e91439244_))
                                                (_tl91459249_
                                                 (##cdr _e91439244_)))
                                            (if (eq? (gx#stx-e _hd91449247_)
                                                     'prelude:)
                                                (if (gx#stx-pair? _tl91459249_)
                                                    (let ((_e91469252_
                                                           (gx#syntax-e
                                                            _tl91459249_)))
                                                      (let ((_hd91479255_
                                                             (##car _e91469252_))
                                                            (_tl91489257_
                                                             (##cdr _e91469252_)))
                                                        (let ((_prelude9260_
                                                               _hd91479255_))
                                                          (let ((_rest9262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91489257_))
                    (if '#t
                        (_lp9134_ _rest9262_ _prelude9260_ _ns9138_ _pkg9139_)
                        (_E91429240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E91429240_))
                                                (_E91429240_))))
                                        (_E91429240_)))))
                             (let () (_E91419264_))))))))))
         _lp9134_)
       (read-syntax-from-file _path9132_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path9130_)
      (path-strip-extension (path-strip-directory _path9130_))))
  (define gx#core-module-path->id
    (lambda (_path9128_)
      (string->symbol (gx#core-module-path->namespace _path9128_))))
  (define gx#core-resolve-module-path
    (let ((_opt-lambda91059118_
           (lambda (_stx-path9107_ _rel9108_)
             (let ((_path9110_ (gx#stx-e _stx-path9107_)))
               (let ((_path9112_
                      (if (equal? (path-extension _path9110_) '".ss")
                          _path9110_
                          (string-append _path9110_ '".ss"))))
                 (let ()
                   (gx#core-resolve-path
                    _path9112_
                    (let ((_$e9115_ (gx#stx-source _stx-path9107_)))
                      (if _$e9115_ _$e9115_ _rel9108_)))))))))
      (lambda _g12371_
        (let ((_g12370_ (length _g12371_)))
          (cond ((fx= _g12370_ 1)
                 (apply (lambda (_stx-path9121_)
                          (let ((_rel9123_ '#f))
                            (_opt-lambda91059118_ _stx-path9121_ _rel9123_)))
                        _g12371_))
                ((fx= _g12370_ 2)
                 (apply (lambda (_stx-path9125_ _rel9126_)
                          (_opt-lambda91059118_ _stx-path9125_ _rel9126_))
                        _g12371_))
                (else (error "No clause matching arguments" _g12371_)))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath9053_)
      (let ((_spath9055_ (symbol->string (gx#stx-e _libpath9053_))))
        (let ((_spath9057_
               (substring _spath9055_ '1 (string-length _spath9055_))))
          (let ()
            ((letrec ((_lp9060_
                       (lambda (_rest9062_)
                         (let ((_rest90639072_ _rest9062_))
                           (let ((_E90669076_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest90639072_))))
                             (let ((_try-match90659084_
                                    (lambda ()
                                      (let ((_K90679081_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath9053_))))
                                        (if (##null? _rest90639072_)
                                            (_K90679081_)
                                            (_E90669076_))))))
                               (let ((_K90689094_
                                      (lambda (_rest9087_ _dir9088_)
                                        (let ((_compiled-path9090_
                                               (path-expand
                                                (string-append
                                                 _spath9057_
                                                 '".ssi")
                                                _dir9088_)))
                                          (if (file-exists?
                                               _compiled-path9090_)
                                              (path-normalize
                                               _compiled-path9090_)
                                              (let ((_src-path9092_
                                                     (path-expand
                                                      (string-append
                                                       _spath9057_
                                                       '".ss")
                                                      _dir9088_)))
                                                (if (file-exists?
                                                     _src-path9092_)
                                                    (path-normalize
                                                     _src-path9092_)
                                                    (_lp9060_
                                                     _rest9087_))))))))
                                 (if (##pair? _rest90639072_)
                                     (let ((_hd90699097_
                                            (##car _rest90639072_))
                                           (_tl90709099_
                                            (##cdr _rest90639072_)))
                                       (let ((_dir9102_ _hd90699097_))
                                         (let ((_rest9104_ _tl90709099_))
                                           (_K90689094_
                                            _rest9104_
                                            _dir9102_))))
                                     (_try-match90659084_)))))))))
               _lp9060_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx9051_) (gx#core-special-module-path? _stx9051_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx9046_ _char9047_)
      (if (gx#identifier? _stx9046_)
          (if (interned-symbol? (gx#stx-e _stx9046_))
              (let ((_str9049_ (symbol->string (gx#stx-e _stx9046_))))
                (if (fx> (string-length _str9049_) '1)
                    (eq? (string-ref _str9049_ '0) _char9047_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx9040_)
      (gx#core-bound-identifier?
       _stx9040_
       (lambda (_g90419043_)
         (gx#expander-binding? _g90419043_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx9034_)
      (gx#core-bound-identifier?
       _stx9034_
       (lambda (_g90359037_)
         (gx#expander-binding? _g90359037_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx9021_)
      (let ((_module-prelude?9023_
             (lambda (_e9029_)
               (let ((_$e9031_ (gx#module-context? _e9029_)))
                 (if _$e9031_ _$e9031_ (gx#prelude-context? _e9029_))))))
        (gx#core-bound-identifier?
         _stx9021_
         (lambda (_g90249026_)
           (gx#expander-binding? _g90249026_ _module-prelude?9023_))))))
  (define gx#core-bind-import!
    (let ((_opt-lambda89499003_
           (lambda (_in8951_ _ctx8952_ _force-weak?8953_)
             (let ((_in89548963_ _in8951_))
               (let ((_E89568967_
                      (lambda () (error '"No clause matching" _in89548963_))))
                 (let ((_K89578980_
                        (lambda (_weak?8970_ _phi8971_ _key8972_ _source8973_)
                          (gx#core-bind!
                           _key8972_
                           (let ((_e8975_ (gx#core-resolve-module-export
                                           _source8973_)))
                             (gx#make-import-binding
                              (gx#binding-id _e8975_)
                              _key8972_
                              _phi8971_
                              _e8975_
                              (gx#module-export-context _source8973_)
                              (let ((_$e8977_ _force-weak?8953_))
                                (if _$e8977_ _$e8977_ _weak?8970_))))
                           gx#core-context-rebind?
                           _phi8971_
                           _ctx8952_))))
                   (if (direct-struct-instance?
                        gx#module-import::t
                        _in89548963_)
                       (let ((_e89588983_ (##vector-ref _in89548963_ '1)))
                         (let ((_source8986_ _e89588983_))
                           (let ((_e89598988_ (##vector-ref _in89548963_ '2)))
                             (let ((_key8991_ _e89598988_))
                               (let ((_e89608993_
                                      (##vector-ref _in89548963_ '3)))
                                 (let ((_phi8996_ _e89608993_))
                                   (let ((_e89618998_
                                          (##vector-ref _in89548963_ '4)))
                                     (let ((_weak?9001_ _e89618998_))
                                       (_K89578980_
                                        _weak?9001_
                                        _phi8996_
                                        _key8991_
                                        _source8986_)))))))))
                       (_E89568967_))))))))
      (lambda _g12373_
        (let ((_g12372_ (length _g12373_)))
          (cond ((fx= _g12372_ 1)
                 (apply (lambda (_in9006_)
                          (let ((_ctx9008_ (gx#current-expander-context)))
                            (let ((_force-weak?9010_ '#f))
                              (_opt-lambda89499003_
                               _in9006_
                               _ctx9008_
                               _force-weak?9010_))))
                        _g12373_))
                ((fx= _g12372_ 2)
                 (apply (lambda (_in9012_ _ctx9013_)
                          (let ((_force-weak?9015_ '#f))
                            (_opt-lambda89499003_
                             _in9012_
                             _ctx9013_
                             _force-weak?9015_)))
                        _g12373_))
                ((fx= _g12372_ 3)
                 (apply (lambda (_in9017_ _ctx9018_ _force-weak?9019_)
                          (_opt-lambda89499003_
                           _in9017_
                           _ctx9018_
                           _force-weak?9019_))
                        _g12373_))
                (else (error "No clause matching arguments" _g12373_)))))))
  (define gx#core-bind-weak-import!
    (let ((_opt-lambda89358940_
           (lambda (_in8937_ _ctx8938_)
             (gx#core-bind-import! _in8937_ _ctx8938_ '#t))))
      (lambda _g12375_
        (let ((_g12374_ (length _g12375_)))
          (cond ((fx= _g12374_ 1)
                 (apply (lambda (_in8943_)
                          (let ((_ctx8945_ (gx#current-expander-context)))
                            (_opt-lambda89358940_ _in8943_ _ctx8945_)))
                        _g12375_))
                ((fx= _g12374_ 2)
                 (apply (lambda (_in8947_ _ctx8948_)
                          (_opt-lambda89358940_ _in8947_ _ctx8948_))
                        _g12375_))
                (else (error "No clause matching arguments" _g12375_)))))))
  (define gx#core-resolve-module-export
    (lambda (_out8828_)
      (let ((_subst8830_
             (lambda (_key8876_)
               (let ((_key88778885_ _key8876_))
                 (let ((_E88808889_
                        (lambda ()
                          (error '"No clause matching" _key88778885_))))
                   (let ((_else88798893_ (lambda () _key8876_)))
                     (let ((_K88818924_
                            (lambda (_mark8896_ _id8897_)
                              (let ((_mark88988904_ _mark8896_))
                                (let ((_E89008908_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark88988904_))))
                                  (let ((_K89018916_
                                         (lambda (_subst8911_)
                                           (let ((_$e8913_
                                                  (if _subst8911_
                                                      (hash-get
                                                       _subst8911_
                                                       _id8897_)
                                                      '#f)))
                                             (if _$e8913_
                                                 _$e8913_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key8876_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark88988904_)
                                        (let ((_e89028919_
                                               (##vector-ref
                                                _mark88988904_
                                                '1)))
                                          (let ((_subst8922_ _e89028919_))
                                            (_K89018916_ _subst8922_)))
                                        (_E89008908_))))))))
                       (if (##pair? _key88778885_)
                           (let ((_hd88828927_ (##car _key88778885_))
                                 (_tl88838929_ (##cdr _key88778885_)))
                             (let ((_id8932_ _hd88828927_))
                               (let ((_mark8934_ _tl88838929_))
                                 (_K88818924_ _mark8934_ _id8932_))))
                           (_else88798893_)))))))))
        (let ((_out88318841_ _out8828_))
          (let ((_E88338845_
                 (lambda () (error '"No clause matching" _out88318841_))))
            (let ((_K88348852_
                   (lambda (_phi8848_ _key8849_ _ctx8850_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx8850_ _phi8848_)
                      (_subst8830_ _key8849_)))))
              (if (direct-struct-instance? gx#module-export::t _out88318841_)
                  (let ((_e88358855_ (##vector-ref _out88318841_ '1)))
                    (let ((_ctx8858_ _e88358855_))
                      (let ((_e88368860_ (##vector-ref _out88318841_ '2)))
                        (let ((_key8863_ _e88368860_))
                          (let ((_e88378865_ (##vector-ref _out88318841_ '3)))
                            (let ((_phi8868_ _e88378865_))
                              (let ((_e88388870_
                                     (##vector-ref _out88318841_ '4)))
                                (let ((_e88398873_
                                       (##vector-ref _out88318841_ '5)))
                                  (_K88348852_
                                   _phi8868_
                                   _key8863_
                                   _ctx8858_)))))))))
                  (_E88338845_))))))))
  (define gx#core-module-export->import
    (let ((_opt-lambda87518810_
           (lambda (_out8753_ _rename8754_ _dphi8755_)
             (let ((_out87568766_ _out8753_))
               (let ((_E87588770_
                      (lambda () (error '"No clause matching" _out87568766_))))
                 (let ((_K87598782_
                        (lambda (_weak?8773_
                                 _name8774_
                                 _phi8775_
                                 _key8776_
                                 _ctx8777_)
                          (gx#make-module-import
                           _out8753_
                           (let ((_$e8779_ _rename8754_))
                             (if _$e8779_ _$e8779_ _name8774_))
                           (fx+ _phi8775_ _dphi8755_)
                           _weak?8773_))))
                   (if (direct-struct-instance?
                        gx#module-export::t
                        _out87568766_)
                       (let ((_e87608785_ (##vector-ref _out87568766_ '1)))
                         (let ((_ctx8788_ _e87608785_))
                           (let ((_e87618790_ (##vector-ref _out87568766_ '2)))
                             (let ((_key8793_ _e87618790_))
                               (let ((_e87628795_
                                      (##vector-ref _out87568766_ '3)))
                                 (let ((_phi8798_ _e87628795_))
                                   (let ((_e87638800_
                                          (##vector-ref _out87568766_ '4)))
                                     (let ((_name8803_ _e87638800_))
                                       (let ((_e87648805_
                                              (##vector-ref _out87568766_ '5)))
                                         (let ((_weak?8808_ _e87648805_))
                                           (_K87598782_
                                            _weak?8808_
                                            _name8803_
                                            _phi8798_
                                            _key8793_
                                            _ctx8788_)))))))))))
                       (_E87588770_))))))))
      (lambda _g12377_
        (let ((_g12376_ (length _g12377_)))
          (cond ((fx= _g12376_ 1)
                 (apply (lambda (_out8813_)
                          (let ((_rename8815_ '#f))
                            (let ((_dphi8817_ '0))
                              (_opt-lambda87518810_
                               _out8813_
                               _rename8815_
                               _dphi8817_))))
                        _g12377_))
                ((fx= _g12376_ 2)
                 (apply (lambda (_out8819_ _rename8820_)
                          (let ((_dphi8822_ '0))
                            (_opt-lambda87518810_
                             _out8819_
                             _rename8820_
                             _dphi8822_)))
                        _g12377_))
                ((fx= _g12376_ 3)
                 (apply (lambda (_out8824_ _rename8825_ _dphi8826_)
                          (_opt-lambda87518810_
                           _out8824_
                           _rename8825_
                           _dphi8826_))
                        _g12377_))
                (else (error "No clause matching arguments" _g12377_)))))))
  (define gx#core-expand-module%
    (lambda (_stx8681_)
      (let ((_make-context8683_
             (lambda (_id8734_)
               (let ((_super8736_ (gx#current-expander-context)))
                 (let ((_bind-id8738_ (gx#stx-e _id8734_)))
                   (let ((_mod-id8740_
                          (if (gx#module-context? _super8736_)
                              (make-symbol
                               (gx#expander-context-id _super8736_)
                               '"::"
                               _bind-id8738_)
                              _bind-id8738_)))
                     (let ((_ns8742_ (symbol->string _mod-id8740_)))
                       (let ((_path8749_
                              (if (gx#module-context? _super8736_)
                                  (let ((_path8744_
                                         (gx#module-context-path _super8736_)))
                                    (if (let ((_$e8746_ (pair? _path8744_)))
                                          (if _$e8746_
                                              _$e8746_
                                              (null? _path8744_)))
                                        (cons _bind-id8738_ _path8744_)
                                        (if (not _path8744_)
                                            _bind-id8738_
                                            (cons _bind-id8738_
                                                  (cons _path8744_ '())))))
                                  _bind-id8738_)))
                         (let ()
                           (gx#make-module-context
                            _mod-id8740_
                            _super8736_
                            _ns8742_
                            _path8749_))))))))))
        (let ((_e86848694_ _stx8681_))
          (let ((_E86868698_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e86848694_))))
            (let ((_E86858730_
                   (lambda ()
                     (if (gx#stx-pair? _e86848694_)
                         (let ((_e86878702_ (gx#syntax-e _e86848694_)))
                           (let ((_hd86888705_ (##car _e86878702_))
                                 (_tl86898707_ (##cdr _e86878702_)))
                             (if (gx#stx-pair? _tl86898707_)
                                 (let ((_e86908710_
                                        (gx#syntax-e _tl86898707_)))
                                   (let ((_hd86918713_ (##car _e86908710_))
                                         (_tl86928715_ (##cdr _e86908710_)))
                                     (let ((_id8718_ _hd86918713_))
                                       (let ((_body8720_ _tl86928715_))
                                         (if (if (gx#identifier? _id8718_)
                                                 (gx#stx-list? _body8720_)
                                                 '#f)
                                             (let ((_ctx8722_
                                                    (_make-context8683_
                                                     _id8718_)))
                                               (let ((_body8724_
                                                      (gx#core-expand-module-begin
                                                       _body8720_
                                                       _ctx8722_)))
                                                 (let ((_body8726_
                                                        (gx#core-quote-syntax
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body8724_)
                                                         (gx#stx-source
                                                          _stx8681_))))
                                                   (let ()
                                                     (begin
                                                       (gx#module-context-e-set!
                                                        _ctx8722_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body8726_))))
                                                       (gx#module-context-code-set!
                                                        _ctx8722_
                                                        _body8726_)
                                                       (gx#core-bind-syntax!
                                                        _id8718_
                                                        _ctx8722_)
                                                       (gx#core-quote-syntax
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax
                                                          _id8718_)
                                                         _body8726_)
                                                        (gx#stx-source
                                                         _stx8681_)))))))
                                             (_E86868698_))))))
                                 (_E86868698_))))
                         (_E86868698_)))))
              (let () (_E86858730_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body8677_ _ctx8678_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature! 'gerbil-module '#t)
           (gx#core-expand-module-body _body8677_)))
       gx#current-expander-context
       _ctx8678_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body8473_)
      (let ((_expand-special8475_
             (lambda (_hd8604_ _K8605_ _rest8606_ _r8607_)
               (let ((_e86088625_ _hd8604_))
                 (let ((_E86208629_
                        (lambda ()
                          (_K8605_ _rest8606_
                                   (cons (gx#core-expand-top _hd8604_)
                                         _r8607_)))))
                   (let ((_E86108641_
                          (lambda ()
                            (if (gx#stx-pair? _e86088625_)
                                (let ((_e86218633_ (gx#syntax-e _e86088625_)))
                                  (let ((_hd86228636_ (##car _e86218633_))
                                        (_tl86238638_ (##cdr _e86218633_)))
                                    (if (if (gx#identifier? _hd86228636_)
                                            (gx#core-identifier=?
                                             _hd86228636_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K8605_ _rest8606_
                                                     (cons _hd8604_ _r8607_))
                                            (_E86208629_))
                                        (_E86208629_))))
                                (_E86208629_)))))
                     (let ((_E86098673_
                            (lambda ()
                              (if (gx#stx-pair? _e86088625_)
                                  (let ((_e86118645_
                                         (gx#syntax-e _e86088625_)))
                                    (let ((_hd86128648_ (##car _e86118645_))
                                          (_tl86138650_ (##cdr _e86118645_)))
                                      (if (if (gx#identifier? _hd86128648_)
                                              (gx#core-identifier=?
                                               _hd86128648_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl86138650_)
                                              (let ((_e86148653_
                                                     (gx#syntax-e
                                                      _tl86138650_)))
                                                (let ((_hd86158656_
                                                       (##car _e86148653_))
                                                      (_tl86168658_
                                                       (##cdr _e86148653_)))
                                                  (let ((_hd-bind8661_
                                                         _hd86158656_))
                                                    (if (gx#stx-pair?
                                                         _tl86168658_)
                                                        (let ((_e86178663_
                                                               (gx#syntax-e
                                                                _tl86168658_)))
                                                          (let ((_hd86188666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e86178663_))
                        (_tl86198668_ (##cdr _e86178663_)))
                    (let ((_expr8671_ _hd86188666_))
                      (if (gx#stx-null? _tl86198668_)
                          (if (gx#core-bind-values? _hd-bind8661_)
                              (begin
                                (gx#core-bind-values! _hd-bind8661_)
                                (_K8605_ _rest8606_ (cons _hd8604_ _r8607_)))
                              (_E86108641_))
                          (_E86108641_)))))
                (_E86108641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86108641_))
                                          (_E86108641_))))
                                  (_E86108641_)))))
                       (let () (_E86098673_)))))))))
        (let ((_expand-body8476_
               (lambda (_rbody8478_)
                 ((letrec ((_lp8480_
                            (lambda (_rest8482_ _body8483_)
                              (let ((_rest84848492_ _rest8482_))
                                (let ((_E84878496_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest84848492_))))
                                  (let ((_else84868500_
                                         (lambda () _body8483_)))
                                    (let ((_K84888592_
                                           (lambda (_rest8503_ _hd8504_)
                                             (let ((_e85058526_ _hd8504_))
                                               (let ((_E85218530_
                                                      (lambda ()
                                                        (_lp8480_
                                                         _rest8503_
                                                         (cons (gx#core-expand-expression
                                                                _hd8504_)
                                                               _body8483_)))))
                                                 (let ((_E85178544_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e85058526_)
                                                              (let ((_e85228534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e85058526_)))
                        (let ((_hd85238537_ (##car _e85228534_))
                              (_tl85248539_ (##cdr _e85228534_)))
                          (let ((_form8542_ _hd85238537_))
                            (if (gx#core-bound-identifier?
                                 _form8542_
                                 gx#special-form-binding?)
                                (_lp8480_
                                 _rest8503_
                                 (cons _hd8504_ _body8483_))
                                (_E85218530_)))))
                      (_E85218530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E85078556_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e85058526_)
                        (let ((_e85188548_ (gx#syntax-e _e85058526_)))
                          (let ((_hd85198551_ (##car _e85188548_))
                                (_tl85208553_ (##cdr _e85188548_)))
                            (if (if (gx#identifier? _hd85198551_)
                                    (gx#core-identifier=?
                                     _hd85198551_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp8480_
                                     _rest8503_
                                     (cons (gx#core-expand-export% _hd8504_)
                                           _body8483_))
                                    (_E85178544_))
                                (_E85178544_))))
                        (_E85178544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E85068588_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e85058526_)
                          (let ((_e85088560_ (gx#syntax-e _e85058526_)))
                            (let ((_hd85098563_ (##car _e85088560_))
                                  (_tl85108565_ (##cdr _e85088560_)))
                              (if (if (gx#identifier? _hd85098563_)
                                      (gx#core-identifier=?
                                       _hd85098563_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl85108565_)
                                      (let ((_e85118568_
                                             (gx#syntax-e _tl85108565_)))
                                        (let ((_hd85128571_
                                               (##car _e85118568_))
                                              (_tl85138573_
                                               (##cdr _e85118568_)))
                                          (let ((_hd-bind8576_ _hd85128571_))
                                            (if (gx#stx-pair? _tl85138573_)
                                                (let ((_e85148578_
                                                       (gx#syntax-e
                                                        _tl85138573_)))
                                                  (let ((_hd85158581_
                                                         (##car _e85148578_))
                                                        (_tl85168583_
                                                         (##cdr _e85148578_)))
                                                    (let ((_expr8586_
                                                           _hd85158581_))
                                                      (if (gx#stx-null?
                                                           _tl85168583_)
                                                          (if '#t
                                                              (_lp8480_
                                                               _rest8503_
                                                               (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind8576_)
                               (gx#core-expand-expression _expr8586_))
                              (gx#stx-source _hd8504_))
                             _body8483_))
                      (_E85078556_))
                  (_E85078556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E85078556_)))))
                                      (_E85078556_))
                                  (_E85078556_))))
                          (_E85078556_)))))
               (let () (_E85068588_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest84848492_)
                                          (let ((_hd84898595_
                                                 (##car _rest84848492_))
                                                (_tl84908597_
                                                 (##cdr _rest84848492_)))
                                            (let ((_hd8600_ _hd84898595_))
                                              (let ((_rest8602_ _tl84908597_))
                                                (_K84888592_
                                                 _rest8602_
                                                 _hd8600_))))
                                          (_else84868500_)))))))))
                    _lp8480_)
                  _rbody8478_
                  '()))))
          (_expand-body8476_
           (gx#core-expand-block
            (cons '%#begin-module _body8473_)
            _expand-special8475_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx8316_
             _expanded?8317_
             _method8318_
             _current-phi8319_
             _expand18320_)
      (letrec ((_K8322_ (lambda (_rest8440_ _r8441_)
                          (let ((_e84428449_ _rest8440_))
                            (let ((_E84448453_ (lambda () _r8441_)))
                              (let ((_E84438469_
                                     (lambda ()
                                       (if (gx#stx-pair? _e84428449_)
                                           (let ((_e84458457_
                                                  (gx#syntax-e _e84428449_)))
                                             (let ((_hd84468460_
                                                    (##car _e84458457_))
                                                   (_tl84478462_
                                                    (##cdr _e84458457_)))
                                               (let ((_hd8465_ _hd84468460_))
                                                 (let ((_rest8467_
                                                        _tl84478462_))
                                                   (if '#t
                                                       (_step8323_
                                                        _hd8465_
                                                        _rest8467_
                                                        _r8441_)
                                                       (_E84448453_))))))
                                           (_E84448453_)))))
                                (let () (_E84438469_)))))))
               (_step8323_
                (lambda (_hd8354_ _rest8355_ _r8356_)
                  (let ((_e83578375_ _hd8354_))
                    (let ((_E83708379_
                           (lambda ()
                             (if (_expanded?8317_ (gx#stx-e _hd8354_))
                                 (_K8322_ _rest8355_
                                          (cons (gx#stx-e _hd8354_) _r8356_))
                                 (_expand18320_
                                  _hd8354_
                                  _K8322_
                                  _rest8355_
                                  _r8356_)))))
                      (let ((_E83668395_
                             (lambda ()
                               (if (gx#stx-pair? _e83578375_)
                                   (let ((_e83718383_
                                          (gx#syntax-e _e83578375_)))
                                     (let ((_hd83728386_ (##car _e83718383_))
                                           (_tl83738388_ (##cdr _e83718383_)))
                                       (let ((_macro8391_ _hd83728386_))
                                         (let ((_body8393_ _tl83738388_))
                                           (if (gx#core-bound-identifier?
                                                _macro8391_
                                                gx#syntax-binding?)
                                               (_K8322_ (cons (gx#core-apply-expander
                                                               (gx#syntax-local-e
                                                                _macro8391_)
                                                               _hd8354_
                                                               _method8318_)
                                                              _rest8355_)
                                                        _r8356_)
                                               (_E83708379_))))))
                                   (_E83708379_)))))
                        (let ((_E83598409_
                               (lambda ()
                                 (if (gx#stx-pair? _e83578375_)
                                     (let ((_e83678399_
                                            (gx#syntax-e _e83578375_)))
                                       (let ((_hd83688402_ (##car _e83678399_))
                                             (_tl83698404_
                                              (##cdr _e83678399_)))
                                         (if (eq? (gx#stx-e _hd83688402_)
                                                  'begin:)
                                             (let ((_body8407_ _tl83698404_))
                                               (if '#t
                                                   (_K8322_ (gx#stx-foldr
                                                             cons
                                                             _rest8355_
                                                             _body8407_)
                                                            _r8356_)
                                                   (_E83668395_)))
                                             (_E83668395_))))
                                     (_E83668395_)))))
                          (let ((_E83588436_
                                 (lambda ()
                                   (if (gx#stx-pair? _e83578375_)
                                       (let ((_e83608413_
                                              (gx#syntax-e _e83578375_)))
                                         (let ((_hd83618416_
                                                (##car _e83608413_))
                                               (_tl83628418_
                                                (##cdr _e83608413_)))
                                           (if (eq? (gx#stx-e _hd83618416_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl83628418_)
                                                   (let ((_e83638421_
                                                          (gx#syntax-e
                                                           _tl83628418_)))
                                                     (let ((_hd83648424_
                                                            (##car _e83638421_))
                                                           (_tl83658426_
                                                            (##cdr _e83638421_)))
                                                       (let ((_dphi8429_
                                                              _hd83648424_))
                                                         (let ((_body8431_
                                                                _tl83658426_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi8429_)
                                                               (let ((_rbody8434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K8322_ _body8431_ '()))
                               _current-phi8319_
                               (fx+ (gx#stx-e _dphi8429_)
                                    (_current-phi8319_)))))
                         (_K8322_ _rest8355_ (foldr cons _r8356_ _rbody8434_)))
                       (_E83598409_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E83598409_))
                                               (_E83598409_))))
                                       (_E83598409_)))))
                            (let () (_E83588436_))))))))))
        (let ((_e83248331_ _stx8316_))
          (let ((_E83268335_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e83248331_))))
            (let ((_E83258350_
                   (lambda ()
                     (if (gx#stx-pair? _e83248331_)
                         (let ((_e83278339_ (gx#syntax-e _e83248331_)))
                           (let ((_hd83288342_ (##car _e83278339_))
                                 (_tl83298344_ (##cdr _e83278339_)))
                             (let ((_body8347_ _tl83298344_))
                               (if '#t
                                   (if (_current-phi8319_)
                                       (_K8322_ _body8347_ '())
                                       (call-with-parameters
                                        (lambda () (_K8322_ _body8347_ '()))
                                        _current-phi8319_
                                        (gx#current-expander-phi)))
                                   (_E83268335_)))))
                         (_E83268335_)))))
              (let () (_E83258350_))))))))
  (define gx#core-expand-import%
    (let ((_opt-lambda78538306_
           (lambda (_stx7855_ _internal-expand?7856_)
             (let ((_import17859_
                    (lambda (_ctx8290_ _K8291_ _rest8292_ _r8293_)
                      (let ((_dphi8295_
                             (fx- (gx#current-import-expander-phi)
                                  (gx#current-expander-phi))))
                        (_K8291_ _rest8292_
                                 (cons (gx#make-import-set
                                        _ctx8290_
                                        _dphi8295_
                                        (map (lambda (_g82968298_)
                                               (gx#core-module-export->import
                                                _g82968298_
                                                '#f
                                                _dphi8295_))
                                             (gx#module-context-export
                                              _ctx8290_)))
                                       _r8293_))))))
               (let ((_import-spec?7860_
                      (lambda (_hd8247_)
                        (let ((_e82488258_ _hd8247_))
                          (let ((_E82508262_ (lambda () '#f)))
                            (let ((_E82498286_
                                   (lambda ()
                                     (if (gx#stx-pair? _e82488258_)
                                         (let ((_e82518266_
                                                (gx#syntax-e _e82488258_)))
                                           (let ((_hd82528269_
                                                  (##car _e82518266_))
                                                 (_tl82538271_
                                                  (##cdr _e82518266_)))
                                             (if (eq? (gx#stx-e _hd82528269_)
                                                      'spec:)
                                                 (if (gx#stx-pair?
                                                      _tl82538271_)
                                                     (let ((_e82548274_
                                                            (gx#syntax-e
                                                             _tl82538271_)))
                                                       (let ((_hd82558277_
                                                              (##car _e82548274_))
                                                             (_tl82568279_
                                                              (##cdr _e82548274_)))
                                                         (let ((_spath8282_
                                                                _hd82558277_))
                                                           (let ((_specs8284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl82568279_))
                     (if '#t '#t (_E82508262_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E82508262_))
                                                 (_E82508262_))))
                                         (_E82508262_)))))
                              (let () (_E82498286_))))))))
                 (let ((_import-submodule?7861_
                        (lambda (_hd8204_)
                          (let ((_e82058215_ _hd8204_))
                            (let ((_E82078219_ (lambda () '#f)))
                              (let ((_E82068243_
                                     (lambda ()
                                       (if (gx#stx-pair? _e82058215_)
                                           (let ((_e82088223_
                                                  (gx#syntax-e _e82058215_)))
                                             (let ((_hd82098226_
                                                    (##car _e82088223_))
                                                   (_tl82108228_
                                                    (##cdr _e82088223_)))
                                               (if (eq? (gx#stx-e _hd82098226_)
                                                        'in:)
                                                   (if (gx#stx-pair?
                                                        _tl82108228_)
                                                       (let ((_e82118231_
                                                              (gx#syntax-e
                                                               _tl82108228_)))
                                                         (let ((_hd82128234_
                                                                (##car _e82118231_))
                                                               (_tl82138236_
                                                                (##cdr _e82118231_)))
                                                           (let ((_top8239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd82128234_))
                     (let ((_sub8241_ _tl82138236_))
                       (if '#t '#t (_E82078219_))))))
               (_E82078219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82078219_))))
                                           (_E82078219_)))))
                                (let () (_E82068243_))))))))
                   (let ((_import-runtime?7862_
                          (lambda (_hd8161_)
                            (let ((_e81628172_ _hd8161_))
                              (let ((_E81648176_ (lambda () '#f)))
                                (let ((_E81638200_
                                       (lambda ()
                                         (if (gx#stx-pair? _e81628172_)
                                             (let ((_e81658180_
                                                    (gx#syntax-e _e81628172_)))
                                               (let ((_hd81668183_
                                                      (##car _e81658180_))
                                                     (_tl81678185_
                                                      (##cdr _e81658180_)))
                                                 (if (eq? (gx#stx-e
                                                           _hd81668183_)
                                                          'runtime:)
                                                     (if (gx#stx-pair?
                                                          _tl81678185_)
                                                         (let ((_e81688188_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81678185_)))
                   (let ((_hd81698191_ (##car _e81688188_))
                         (_tl81708193_ (##cdr _e81688188_)))
                     (let ((_top8196_ _hd81698191_))
                       (let ((_spath8198_ _tl81708193_))
                         (if '#t '#t (_E81648176_))))))
                 (_E81648176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E81648176_))))
                                             (_E81648176_)))))
                                  (let () (_E81638200_))))))))
                     (let ((_import-spec-source7866_
                            (lambda (_spath7932_)
                              (gx#core-import-nested-module
                               _spath7932_
                               _stx7855_))))
                       (let ((_import!7867_
                              (lambda (_rbody7880_)
                                (let ((_current-ctx7882_
                                       (gx#current-expander-context)))
                                  (let ((_deps7883_ (make-hash-table-eq)))
                                    (let ((_bind!7884_
                                           (lambda (_hd7930_)
                                             (begin
                                               (gx#core-bind-import!
                                                _hd7930_
                                                _current-ctx7882_)
                                               (if (if (fxpositive?
                                                        (gx#module-import-phi
                                                         _hd7930_))
                                                       (fxzero? (gx#module-export-phi
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#module-import-source _hd7930_)))
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (hash-put!
                                                    _deps7883_
                                                    (gx#module-export-context
                                                     (gx#module-import-source
                                                      _hd7930_))
                                                    '#t)
                                                   '#!void)))))
                                      (let ((_fold-e7885_
                                             (lambda (_in7927_ _r7928_)
                                               (if (gx#module-import? _in7927_)
                                                   (cons _in7927_ _r7928_)
                                                   (if (gx#import-set?
                                                        _in7927_)
                                                       (foldl cons
                                                              _r7928_
                                                              (gx#import-set-imports
                                                               _in7927_))
                                                       _r7928_)))))
                                        ((letrec ((_lp7887_
                                                   (lambda (_rest7889_
                                                            _body7890_)
                                                     (let ((_rest78917899_
                                                            _rest7889_))
                                                       (let ((_E78947903_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest78917899_))))
                 (let ((_else78937909_
                        (lambda ()
                          (begin
                            (if (gx#module-context? _current-ctx7882_)
                                (gx#module-context-import-set!
                                 _current-ctx7882_
                                 (foldl _fold-e7885_
                                        (gx#module-context-import
                                         _current-ctx7882_)
                                        _body7890_))
                                '#!void)
                            (hash-for-each
                             (lambda (_ctx7907_ _g12378_)
                               (gx#eval-module _ctx7907_))
                             _deps7883_)
                            _body7890_))))
                   (let ((_K78957915_
                          (lambda (_rest7912_ _hd7913_)
                            (begin
                              (if (gx#module-import? _hd7913_)
                                  (_bind!7884_ _hd7913_)
                                  (if (gx#import-set? _hd7913_)
                                      (for-each
                                       _bind!7884_
                                       (gx#import-set-imports _hd7913_))
                                      (if (gx#module-context? _hd7913_)
                                          '#!void
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Unexpected import"
                                           _stx7855_
                                           _hd7913_))))
                              (_lp7887_
                               _rest7912_
                               (cons _hd7913_ _body7890_))))))
                     (if (##pair? _rest78917899_)
                         (let ((_hd78967918_ (##car _rest78917899_))
                               (_tl78977920_ (##cdr _rest78917899_)))
                           (let ((_hd7923_ _hd78967918_))
                             (let ((_rest7925_ _tl78977920_))
                               (_K78957915_ _rest7925_ _hd7923_))))
                         (_else78937909_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _lp7887_)
                                         _rbody7880_
                                         '()))))))))
                         (let ((_expanded-import?7868_
                                (lambda (_e7872_)
                                  (let ((_$e7874_ (gx#import-set? _e7872_)))
                                    (if _$e7874_
                                        _$e7874_
                                        (let ((_$e7877_
                                               (gx#module-import? _e7872_)))
                                          (if _$e7877_
                                              _$e7877_
                                              (gx#module-context?
                                               _e7872_))))))))
                           (let ((_import-submodule7863_
                                  (lambda (_hd8128_ _K8129_ _rest8130_ _r8131_)
                                    (let ((_e81328139_ _hd8128_))
                                      (let ((_E81348143_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e81328139_))))
                                        (let ((_E81338157_
                                               (lambda ()
                                                 (if (gx#stx-pair? _e81328139_)
                                                     (let ((_e81358147_
                                                            (gx#syntax-e
                                                             _e81328139_)))
                                                       (let ((_hd81368150_
                                                              (##car _e81358147_))
                                                             (_tl81378152_
                                                              (##cdr _e81358147_)))
                                                         (let ((_spath8155_
                                                                _tl81378152_))
                                                           (if '#t
                                                               (_import17859_
                                                                (_import-spec-source7866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _spath8155_)
                        _K8129_
                        _rest8130_
                        _r8131_)
                       (_E81348143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E81348143_)))))
                                          (let () (_E81338157_))))))))
                             (let ((_import-runtime7864_
                                    (lambda (_hd8095_
                                             _K8096_
                                             _rest8097_
                                             _r8098_)
                                      (let ((_e80998106_ _hd8095_))
                                        (let ((_E81018110_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e80998106_))))
                                          (let ((_E81008124_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e80998106_)
                                                       (let ((_e81028114_
                                                              (gx#syntax-e
                                                               _e80998106_)))
                                                         (let ((_hd81038117_
                                                                (##car _e81028114_))
                                                               (_tl81048119_
                                                                (##cdr _e81028114_)))
                                                           (let ((_spath8122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl81048119_))
                     (if '#t
                         (_K8096_ _rest8097_
                                  (cons (_import-spec-source7866_ _spath8122_)
                                        _r8098_))
                         (_E81018110_)))))
               (_E81018110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E81008124_))))))))
                               (let ((_import-spec7865_
                                      (lambda (_hd7934_
                                               _K7935_
                                               _rest7936_
                                               _r7937_)
                                        (let ((_e79387955_ _hd7934_))
                                          (let ((_E79477959_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e79387955_))))
                                            (let ((_E79408069_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e79387955_)
                                                         (let ((_e79487963_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e79387955_)))
                   (let ((_hd79497966_ (##car _e79487963_))
                         (_tl79507968_ (##cdr _e79487963_)))
                     (if (gx#stx-pair? _tl79507968_)
                         (let ((_e79517971_ (gx#syntax-e _tl79507968_)))
                           (let ((_hd79527974_ (##car _e79517971_))
                                 (_tl79537976_ (##cdr _e79517971_)))
                             (let ((_path7979_ _hd79527974_))
                               (let ((_specs7981_ _tl79537976_))
                                 (if '#t
                                     (let ((_src-ctx7983_
                                            (_import-spec-source7866_
                                             _path7979_))
                                           (_exports7984_ (make-hash-table))
                                           (_specs7985_
                                            (gx#syntax->list _specs7981_)))
                                       (begin
                                         (for-each
                                          (lambda (_out7987_)
                                            (hash-put!
                                             _exports7984_
                                             (cons (gx#module-export-phi
                                                    _out7987_)
                                                   (gx#module-export-name
                                                    _out7987_))
                                             _out7987_))
                                          (gx#module-context-export
                                           _src-ctx7983_))
                                         (_K7935_ _rest7936_
                                                  (foldl (lambda (_spec7989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r7990_)
                   (let ((_e79918007_ _spec7989_))
                     (let ((_E79938011_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e79918007_))))
                       (let ((_E79928065_
                              (lambda ()
                                (if (gx#stx-pair? _e79918007_)
                                    (let ((_e79948015_
                                           (gx#syntax-e _e79918007_)))
                                      (let ((_hd79958018_ (##car _e79948015_))
                                            (_tl79968020_ (##cdr _e79948015_)))
                                        (let ((_phi8023_ _hd79958018_))
                                          (if (gx#stx-pair? _tl79968020_)
                                              (let ((_e79978025_
                                                     (gx#syntax-e
                                                      _tl79968020_)))
                                                (let ((_hd79988028_
                                                       (##car _e79978025_))
                                                      (_tl79998030_
                                                       (##cdr _e79978025_)))
                                                  (let ((_name8033_
                                                         _hd79988028_))
                                                    (if (gx#stx-pair?
                                                         _tl79998030_)
                                                        (let ((_e80008035_
                                                               (gx#syntax-e
                                                                _tl79998030_)))
                                                          (let ((_hd80018038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e80008035_))
                        (_tl80028040_ (##cdr _e80008035_)))
                    (let ((_src-phi8043_ _hd80018038_))
                      (if (gx#stx-pair? _tl80028040_)
                          (let ((_e80038045_ (gx#syntax-e _tl80028040_)))
                            (let ((_hd80048048_ (##car _e80038045_))
                                  (_tl80058050_ (##cdr _e80038045_)))
                              (let ((_src-name8053_ _hd80048048_))
                                (if (gx#stx-null? _tl80058050_)
                                    (if (if (gx#stx-fixnum? _src-phi8043_)
                                            (if (gx#identifier? _src-name8053_)
                                                (if (gx#stx-fixnum? _phi8023_)
                                                    (gx#identifier? _name8033_)
                                                    '#f)
                                                '#f)
                                            '#f)
                                        (let ((_src-phi8055_
                                               (gx#stx-e _src-phi8043_))
                                              (_src-name8056_
                                               (gx#core-identifier-key
                                                _src-name8053_))
                                              (_phi8057_ (gx#stx-e _phi8023_))
                                              (_name8058_
                                               (gx#core-identifier-key
                                                _name8033_)))
                                          (let ((_$e8060_
                                                 (hash-get
                                                  _exports7984_
                                                  (cons _src-phi8055_
                                                        _src-name8056_))))
                                            (if _$e8060_
                                                ((lambda (_out8063_)
                                                   (cons (gx#core-module-export->import
                                                          _out8063_
                                                          _name8058_
                                                          (fx- _phi8057_
                                                               _src-phi8055_))
                                                         _r7990_))
                                                 _$e8060_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; no matching export"
                                                 _stx7855_
                                                 _hd7934_))))
                                        (_E79938011_))
                                    (_E79938011_)))))
                          (_E79938011_)))))
                (_E79938011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E79938011_)))))
                                    (_E79938011_)))))
                         (let () (_E79928065_))))))
                 _r7937_
                 _specs7985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_E79477959_))))))
                         (_E79477959_))))
                 (_E79477959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_E79398091_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e79387955_)
                                                           (let ((_e79418073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e79387955_)))
                     (let ((_hd79428076_ (##car _e79418073_))
                           (_tl79438078_ (##cdr _e79418073_)))
                       (if (gx#stx-pair? _tl79438078_)
                           (let ((_e79448081_ (gx#syntax-e _tl79438078_)))
                             (let ((_hd79458084_ (##car _e79448081_))
                                   (_tl79468086_ (##cdr _e79448081_)))
                               (let ((_path8089_ _hd79458084_))
                                 (if (gx#stx-null? _tl79468086_)
                                     (if '#t
                                         (_K7935_ _rest7936_
                                                  (cons (_import-spec-source7866_
                                                         _path8089_)
                                                        _r7937_))
                                         (_E79408069_))
                                     (_E79408069_)))))
                           (_E79408069_))))
                   (_E79408069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E79398091_)))))))))
                                 (let ((_expand17858_
                                        (lambda (_hd8301_
                                                 _K8302_
                                                 _rest8303_
                                                 _r8304_)
                                          (if (gx#core-bound-module? _hd8301_)
                                              (_import17859_
                                               (gx#syntax-local-e _hd8301_)
                                               _K8302_
                                               _rest8303_
                                               _r8304_)
                                              (if (gx#core-library-module-path?
                                                   _hd8301_)
                                                  (_import17859_
                                                   (gx#import-module
                                                    (gx#core-resolve-library-module-path
                                                     _hd8301_))
                                                   _K8302_
                                                   _rest8303_
                                                   _r8304_)
                                                  (if (gx#stx-string? _hd8301_)
                                                      (_import17859_
                                                       (gx#import-module
                                                        (gx#core-resolve-module-path
                                                         _hd8301_
                                                         (gx#stx-source
                                                          _stx7855_)))
                                                       _K8302_
                                                       _rest8303_
                                                       _r8304_)
                                                      (if (gx#module-context?
                                                           (gx#stx-e _hd8301_))
                                                          (_K8302_ _rest8303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-e _hd8301_) _r8304_))
                  (if (_import-spec?7860_ _hd8301_)
                      (_import-spec7865_ _hd8301_ _K8302_ _rest8303_ _r8304_)
                      (if (_import-submodule?7861_ _hd8301_)
                          (_import-submodule7863_
                           _hd8301_
                           _K8302_
                           _rest8303_
                           _r8304_)
                          (if (_import-runtime?7862_ _hd8301_)
                              (_import-runtime7864_
                               _hd8301_
                               _K8302_
                               _rest8303_
                               _r8304_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal import"
                               _stx7855_
                               _hd8301_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let ((_rbody7870_
                                          (gx#core-expand-import/export
                                           _stx7855_
                                           _expanded-import?7868_
                                           'apply-import-expander
                                           gx#current-import-expander-phi
                                           _expand17858_)))
                                     (if _internal-expand?7856_
                                         (reverse _rbody7870_)
                                         (gx#core-quote-syntax
                                          (gx#core-cons
                                           '%#import
                                           (_import!7867_ _rbody7870_))
                                          (gx#stx-source
                                           _stx7855_))))))))))))))))))
      (lambda _g12380_
        (let ((_g12379_ (length _g12380_)))
          (cond ((fx= _g12379_ 1)
                 (apply (lambda (_stx8309_)
                          (let ((_internal-expand?8311_ '#f))
                            (_opt-lambda78538306_
                             _stx8309_
                             _internal-expand?8311_)))
                        _g12380_))
                ((fx= _g12379_ 2)
                 (apply (lambda (_stx8313_ _internal-expand?8314_)
                          (_opt-lambda78538306_
                           _stx8313_
                           _internal-expand?8314_))
                        _g12380_))
                (else (error "No clause matching arguments" _g12380_)))))))
  (define gx#core-import-nested-module
    (lambda (_spath7782_ _where7783_)
      (let ((_e77847791_ _spath7782_))
        (let ((_E77867795_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77847791_))))
          (let ((_E77857850_
                 (lambda ()
                   (if (gx#stx-pair? _e77847791_)
                       (let ((_e77877799_ (gx#syntax-e _e77847791_)))
                         (let ((_hd77887802_ (##car _e77877799_))
                               (_tl77897804_ (##cdr _e77877799_)))
                           (let ((_origin7807_ _hd77887802_))
                             (let ((_sub7809_ _tl77897804_))
                               (if '#t
                                   (let ((_origin-ctx7811_
                                          (if (gx#stx-false? _origin7807_)
                                              (gx#current-expander-context)
                                              (gx#import-module
                                               _origin7807_))))
                                     ((letrec ((_lp7813_
                                                (lambda (_rest7815_ _ctx7816_)
                                                  (let ((_e78177824_
                                                         _rest7815_))
                                                    (let ((_E78197828_
                                                           (lambda ()
                                                             _ctx7816_)))
                                                      (let ((_E78187846_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e78177824_)
                           (let ((_e78207832_ (gx#syntax-e _e78177824_)))
                             (let ((_hd78217835_ (##car _e78207832_))
                                   (_tl78227837_ (##cdr _e78207832_)))
                               (let ((_id7840_ _hd78217835_))
                                 (let ((_rest7842_ _tl78227837_))
                                   (if '#t
                                       (let ((_bind7844_
                                              (gx#resolve-identifier
                                               _id7840_
                                               '0
                                               _ctx7816_)))
                                         (begin
                                           (if (if (gx#syntax-binding?
                                                    _bind7844_)
                                                   (gx#module-context?
                                                    (gx#syntax-binding-e
                                                     _bind7844_))
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where7783_
                                                _spath7782_
                                                _id7840_))
                                           (_lp7813_
                                            _rest7842_
                                            (gx#syntax-binding-e _bind7844_))))
                                       (_E78197828_))))))
                           (_E78197828_)))))
                (let () (_E78187846_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7813_)
                                      _sub7809_
                                      _origin-ctx7811_))
                                   (_E77867795_))))))
                       (_E77867795_)))))
            (let () (_E77857850_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd7780_)
      (gx#core-expand-import%
       (cons 'import-internal% (cons _hd7780_ '()))
       '#t)))
  (define gx#core-expand-export%
    (let ((_opt-lambda73627770_
           (lambda (_stx7364_ _internal-expand?7365_)
             (let ((_make-export7367_
                    (let ((_opt-lambda77267741_
                           (lambda (_bind7728_ _phi7729_ _ctx7730_ _name7731_)
                             (let ((_key7733_ (gx#binding-key _bind7728_)))
                               (let ((_export-key7735_
                                      (if _name7731_
                                          (gx#core-identifier-key _name7731_)
                                          _key7733_)))
                                 (let ()
                                   (gx#make-module-export
                                    _ctx7730_
                                    _key7733_
                                    _phi7729_
                                    _export-key7735_
                                    (let ((_$e7738_
                                           (gx#extern-binding? _bind7728_)))
                                      (if _$e7738_
                                          _$e7738_
                                          (gx#import-binding?
                                           _bind7728_))))))))))
                      (lambda _g12382_
                        (let ((_g12381_ (length _g12382_)))
                          (cond ((fx= _g12381_ 1)
                                 (apply (lambda (_bind7744_)
                                          (let ((_phi7746_
                                                 (gx#current-export-expander-phi)))
                                            (let ((_ctx7748_
                                                   (gx#current-expander-context)))
                                              (let ((_name7750_ '#f))
                                                (_opt-lambda77267741_
                                                 _bind7744_
                                                 _phi7746_
                                                 _ctx7748_
                                                 _name7750_)))))
                                        _g12382_))
                                ((fx= _g12381_ 2)
                                 (apply (lambda (_bind7752_ _phi7753_)
                                          (let ((_ctx7755_
                                                 (gx#current-expander-context)))
                                            (let ((_name7757_ '#f))
                                              (_opt-lambda77267741_
                                               _bind7752_
                                               _phi7753_
                                               _ctx7755_
                                               _name7757_))))
                                        _g12382_))
                                ((fx= _g12381_ 3)
                                 (apply (lambda (_bind7759_
                                                 _phi7760_
                                                 _ctx7761_)
                                          (let ((_name7763_ '#f))
                                            (_opt-lambda77267741_
                                             _bind7759_
                                             _phi7760_
                                             _ctx7761_
                                             _name7763_)))
                                        _g12382_))
                                ((fx= _g12381_ 4)
                                 (apply (lambda (_bind7765_
                                                 _phi7766_
                                                 _ctx7767_
                                                 _name7768_)
                                          (_opt-lambda77267741_
                                           _bind7765_
                                           _phi7766_
                                           _ctx7767_
                                           _name7768_))
                                        _g12382_))
                                (else
                                 (error "No clause matching arguments"
                                        _g12382_))))))))
               (let ((_export-imports7369_
                      (lambda (_src7390_ _r7391_)
                        (let ((_current-ctx7393_
                               (gx#current-expander-context)))
                          (let ((_current-phi7394_
                                 (gx#current-export-expander-phi)))
                            (let ((_import->export7395_
                                   (lambda (_in7403_)
                                     (let ((_in74047412_ _in7403_))
                                       (let ((_E74067416_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _in74047412_))))
                                         (let ((_K74077423_
                                                (lambda (_phi7419_
                                                         _key7420_
                                                         _out7421_)
                                                  (if (fx= _phi7419_
                                                           _current-phi7394_)
                                                      (if (eq? _src7390_
                                                               (gx#module-export-context
                                                                _out7421_))
                                                          (gx#make-module-export
                                                           _current-ctx7393_
                                                           _key7420_
                                                           _phi7419_
                                                           _key7420_
                                                           '#t)
                                                          '#f)
                                                      '#f))))
                                           (if (direct-struct-instance?
                                                gx#module-import::t
                                                _in74047412_)
                                               (let ((_e74087426_
                                                      (##vector-ref
                                                       _in74047412_
                                                       '1)))
                                                 (let ((_out7429_ _e74087426_))
                                                   (let ((_e74097431_
                                                          (##vector-ref
                                                           _in74047412_
                                                           '2)))
                                                     (let ((_key7434_
                                                            _e74097431_))
                                                       (let ((_e74107436_
                                                              (##vector-ref
                                                               _in74047412_
                                                               '3)))
                                                         (let ((_phi7439_
                                                                _e74107436_))
                                                           (_K74077423_
                                                            _phi7439_
                                                            _key7434_
                                                            _out7429_)))))))
                                               (_E74067416_))))))))
                              (let ((_fold-e7396_
                                     (lambda (_in7398_ _r7399_)
                                       (let ((_out7401_
                                              (_import->export7395_ _in7398_)))
                                         (if _out7401_
                                             (cons _out7401_ _r7399_)
                                             _r7399_)))))
                                (cons (gx#make-export-set
                                       _src7390_
                                       _current-phi7394_
                                       (foldl _fold-e7396_
                                              '()
                                              (gx#module-context-import
                                               _current-ctx7393_)))
                                      _r7391_))))))))
                 (let ((_export!7370_
                        (lambda (_rbody7380_)
                          (let ((_current-ctx7382_
                                 (gx#current-expander-context)))
                            (let ((_fold-e7383_
                                   (lambda (_out7387_ _r7388_)
                                     (if (gx#module-export? _out7387_)
                                         (cons _out7387_ _r7388_)
                                         (if (gx#export-set? _out7387_)
                                             (foldl cons
                                                    _r7388_
                                                    (gx#export-set-exports
                                                     _out7387_))
                                             _r7388_)))))
                              (let ((_body7385_ (reverse _rbody7380_)))
                                (begin
                                  (gx#module-context-export-set!
                                   _current-ctx7382_
                                   (foldl _fold-e7383_
                                          (gx#module-context-export
                                           _current-ctx7382_)
                                          _body7385_))
                                  _body7385_)))))))
                   (let ((_expanded-export?7371_
                          (lambda (_e7375_)
                            (let ((_$e7377_ (gx#module-export? _e7375_)))
                              (if _$e7377_
                                  _$e7377_
                                  (gx#export-set? _e7375_))))))
                     (let ((_expand17368_
                            (lambda (_hd7441_ _K7442_ _rest7443_ _r7444_)
                              (let ((_e74457477_ _hd7441_))
                                (let ((_E74727481_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; illegal export"
                                          _stx7364_
                                          _hd7441_))))
                                  (let ((_E74627560_
                                         (lambda ()
                                           (if (gx#stx-pair? _e74457477_)
                                               (let ((_e74737485_
                                                      (gx#syntax-e
                                                       _e74457477_)))
                                                 (let ((_hd74747488_
                                                        (##car _e74737485_))
                                                       (_tl74757490_
                                                        (##cdr _e74737485_)))
                                                   (if (eq? (gx#stx-e
                                                             _hd74747488_)
                                                            'import:)
                                                       (let ((_in7493_
                                                              _tl74757490_))
                                                         (if (gx#stx-list?
                                                              _in7493_)
                                                             ((letrec ((_lp7495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_in-rest7497_ _r7498_)
                                  (let ((_e74997506_ _in-rest7497_))
                                    (let ((_E75017510_
                                           (lambda ()
                                             (_K7442_ _rest7443_ _r7498_))))
                                      (let ((_E75007556_
                                             (lambda ()
                                               (if (gx#stx-pair? _e74997506_)
                                                   (let ((_e75027514_
                                                          (gx#syntax-e
                                                           _e74997506_)))
                                                     (let ((_hd75037517_
                                                            (##car _e75027514_))
                                                           (_tl75047519_
                                                            (##cdr _e75027514_)))
                                                       (let ((_hd7522_
                                                              _hd75037517_))
                                                         (let ((_in-rest7524_
                                                                _tl75047519_))
                                                           (if '#t
                                                               (let ((_src7554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (gx#core-bound-module? _hd7522_)
                                  (gx#syntax-local-e _hd7522_)
                                  (if (gx#core-library-module-path? _hd7522_)
                                      (gx#import-module
                                       (gx#core-resolve-library-module-path
                                        _hd7522_))
                                      (if (gx#stx-string? _hd7522_)
                                          (gx#import-module
                                           (gx#core-resolve-module-path
                                            _hd7522_
                                            (gx#stx-source _stx7364_)))
                                          (let ((_e75257532_ _hd7522_))
                                            (let ((_E75277536_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; illegal re-export"
                                                      _stx7364_
                                                      _hd7522_))))
                                              (let ((_E75267550_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e75257532_)
                                                           (let ((_e75287540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e75257532_)))
                     (let ((_hd75297543_ (##car _e75287540_))
                           (_tl75307545_ (##cdr _e75287540_)))
                       (if (eq? (gx#stx-e _hd75297543_) 'in:)
                           (let ((_spath7548_ _tl75307545_))
                             (if '#t
                                 (gx#core-import-nested-module
                                  _spath7548_
                                  _stx7364_)
                                 (_E75277536_)))
                           (_E75277536_))))
                   (_E75277536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E75267550_))))))))))
                         (_lp7495_
                          _in-rest7524_
                          (_export-imports7369_ _src7554_ _r7498_)))
                       (_E75017510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E75017510_)))))
                                        (let () (_E75007556_))))))))
                        _lp7495_)
                      _in7493_
                      _r7444_)
                     (_E74727481_)))
               (_E74727481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E74727481_)))))
                                    (let ((_E74497599_
                                           (lambda ()
                                             (if (gx#stx-pair? _e74457477_)
                                                 (let ((_e74637564_
                                                        (gx#syntax-e
                                                         _e74457477_)))
                                                   (let ((_hd74647567_
                                                          (##car _e74637564_))
                                                         (_tl74657569_
                                                          (##cdr _e74637564_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd74647567_)
                                                              'rename:)
                                                         (if (gx#stx-pair?
                                                              _tl74657569_)
                                                             (let ((_e74667572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl74657569_)))
                       (let ((_hd74677575_ (##car _e74667572_))
                             (_tl74687577_ (##cdr _e74667572_)))
                         (let ((_id7580_ _hd74677575_))
                           (if (gx#stx-pair? _tl74687577_)
                               (let ((_e74697582_ (gx#syntax-e _tl74687577_)))
                                 (let ((_hd74707585_ (##car _e74697582_))
                                       (_tl74717587_ (##cdr _e74697582_)))
                                   (let ((_name7590_ _hd74707585_))
                                     (if (gx#stx-null? _tl74717587_)
                                         (if '#t
                                             (let ((_phi7592_
                                                    (gx#current-export-expander-phi)))
                                               (let ((_$e7594_
                                                      (gx#core-resolve-identifier
                                                       _id7580_
                                                       _phi7592_)))
                                                 (if _$e7594_
                                                     ((lambda (_bind7597_)
                                                        (_K7442_ _rest7443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_make-export7367_
                                _bind7597_
                                _phi7592_
                                (gx#current-expander-context)
                                _name7590_)
                               _r7444_)))
              _$e7594_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Reference to unbound identifier"
                                                      _stx7364_
                                                      _hd7441_
                                                      _id7580_))))
                                             (_E74627560_))
                                         (_E74627560_)))))
                               (_E74627560_)))))
                     (_E74627560_))
                 (_E74627560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E74627560_)))))
                                      (let ((_E74487648_
                                             (lambda ()
                                               (if (gx#stx-pair? _e74457477_)
                                                   (let ((_e74507603_
                                                          (gx#syntax-e
                                                           _e74457477_)))
                                                     (let ((_hd74517606_
                                                            (##car _e74507603_))
                                                           (_tl74527608_
                                                            (##cdr _e74507603_)))
                                                       (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd74517606_)
                        'spec:)
                   (if (gx#stx-pair? _tl74527608_)
                       (let ((_e74537611_ (gx#syntax-e _tl74527608_)))
                         (let ((_hd74547614_ (##car _e74537611_))
                               (_tl74557616_ (##cdr _e74537611_)))
                           (let ((_phi7619_ _hd74547614_))
                             (if (gx#stx-pair? _tl74557616_)
                                 (let ((_e74567621_
                                        (gx#syntax-e _tl74557616_)))
                                   (let ((_hd74577624_ (##car _e74567621_))
                                         (_tl74587626_ (##cdr _e74567621_)))
                                     (let ((_id7629_ _hd74577624_))
                                       (if (gx#stx-pair? _tl74587626_)
                                           (let ((_e74597631_
                                                  (gx#syntax-e _tl74587626_)))
                                             (let ((_hd74607634_
                                                    (##car _e74597631_))
                                                   (_tl74617636_
                                                    (##cdr _e74597631_)))
                                               (let ((_name7639_ _hd74607634_))
                                                 (if (gx#stx-null?
                                                      _tl74617636_)
                                                     (if (if (gx#stx-fixnum?
                                                              _phi7619_)
                                                             (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id7629_)
                         (gx#identifier? _name7639_)
                         '#f)
                     '#f)
                 (let ((_phi7641_ (gx#stx-e _phi7619_)))
                   (let ((_$e7643_
                          (gx#core-resolve-identifier _id7629_ _phi7641_)))
                     (if _$e7643_
                         ((lambda (_bind7646_)
                            (_K7442_ _rest7443_
                                     (cons (_make-export7367_
                                            _bind7646_
                                            _phi7641_
                                            (gx#current-expander-context)
                                            _name7639_)
                                           _r7444_)))
                          _$e7643_)
                         (gx#raise-syntax-error
                          '#f
                          '"Reference to unbound identifier"
                          _stx7364_
                          _hd7441_
                          _id7629_))))
                 (_E74497599_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E74497599_)))))
                                           (_E74497599_)))))
                                 (_E74497599_)))))
                       (_E74497599_))
                   (_E74497599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E74497599_)))))
                                        (let ((_E74477659_
                                               (lambda ()
                                                 (let ((_id7652_ _e74457477_))
                                                   (if (gx#identifier?
                                                        _id7652_)
                                                       (let ((_$e7654_
                                                              (gx#core-resolve-identifier
                                                               _id7652_
                                                               (gx#current-export-expander-phi))))
                                                         (if _$e7654_
                                                             ((lambda (_bind7657_)
                                                                (_K7442_ _rest7443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (_make-export7367_ _bind7657_)
                                       _r7444_)))
                      _$e7654_)
                     (gx#raise-syntax-error
                      '#f
                      '"Reference to unbound identifier"
                      _stx7364_
                      _hd7441_)))
               (_E74487648_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_E74467723_
                                                 (lambda ()
                                                   (if (eq? (gx#stx-e
                                                             _e74457477_)
                                                            '#t)
                                                       (if '#t
                                                           (let ((_current-ctx7663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#current-expander-context)))
                     (let ((_current-phi7665_
                            (gx#current-export-expander-phi)))
                       (let ((_phi-ctx7667_
                              (gx#core-context-shift
                               _current-ctx7663_
                               _current-phi7665_)))
                         (let ((_phi-bind7669_
                                (hash->list
                                 (gx#expander-context-table _phi-ctx7667_))))
                           (let ()
                             ((letrec ((_lp7672_
                                        (lambda (_bind-rest7674_ _set7675_)
                                          (let ((_bind-rest76767686_
                                                 _bind-rest7674_))
                                            (let ((_E76797690_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest76767686_))))
                                              (let ((_else76787694_
                                                     (lambda ()
                                                       (_K7442_ _rest7443_
                                                                (cons (gx#make-export-set
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               _current-phi7665_
                               _set7675_)
                              _r7444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K76807704_
                                                       (lambda (_bind-rest7697_
                                                                _bind7698_
                                                                _key7699_)
                                                         (if (let ((_$e7701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#import-binding? _bind7698_)))
                       (if _$e7701_
                           _$e7701_
                           (gx#private-feature-binding? _bind7698_)))
                     (_lp7672_ _bind-rest7697_ _set7675_)
                     (_lp7672_
                      _bind-rest7697_
                      (cons (_make-export7367_
                             _bind7698_
                             _current-phi7665_
                             _current-ctx7663_)
                            _set7675_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _bind-rest76767686_)
                                                      (let ((_hd76817707_
                                                             (##car _bind-rest76767686_))
                                                            (_tl76827709_
                                                             (##cdr _bind-rest76767686_)))
                                                        (if (##pair? _hd76817707_)
                                                            (let ((_hd76837712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##car _hd76817707_))
                          (_tl76847714_ (##cdr _hd76817707_)))
                      (let ((_key7717_ _hd76837712_))
                        (let ((_bind7719_ _tl76847714_))
                          (let ((_bind-rest7721_ _tl76827709_))
                            (_K76807704_
                             _bind-rest7721_
                             _bind7719_
                             _key7717_)))))
                    (_else76787694_)))
              (_else76787694_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp7672_)
                              _phi-bind7669_
                              '()))))))
                   (_E74477659_))
               (_E74477659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E74467723_))))))))))))
                       (let ((_rbody7373_
                              (gx#core-expand-import/export
                               _stx7364_
                               gx#module-export?
                               'apply-export-expander
                               gx#current-export-expander-phi
                               _expand17368_)))
                         (if _internal-expand?7365_
                             (reverse _rbody7373_)
                             (gx#core-quote-syntax
                              (gx#core-cons
                               '%#export
                               (_export!7370_ _rbody7373_))
                              (gx#stx-source _stx7364_))))))))))))
      (lambda _g12384_
        (let ((_g12383_ (length _g12384_)))
          (cond ((fx= _g12383_ 1)
                 (apply (lambda (_stx7773_)
                          (let ((_internal-expand?7775_ '#f))
                            (_opt-lambda73627770_
                             _stx7773_
                             _internal-expand?7775_)))
                        _g12384_))
                ((fx= _g12383_ 2)
                 (apply (lambda (_stx7777_ _internal-expand?7778_)
                          (_opt-lambda73627770_
                           _stx7777_
                           _internal-expand?7778_))
                        _g12384_))
                (else (error "No clause matching arguments" _g12384_)))))))
  (define gx#core-expand-export-source
    (lambda (_hd7361_)
      (gx#core-expand-export% (cons 'export-macro% (cons _hd7361_ '())) '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx7331_)
      (let ((_e73327339_ _stx7331_))
        (let ((_E73347343_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73327339_))))
          (let ((_E73337357_
                 (lambda ()
                   (if (gx#stx-pair? _e73327339_)
                       (let ((_e73357347_ (gx#syntax-e _e73327339_)))
                         (let ((_hd73367350_ (##car _e73357347_))
                               (_tl73377352_ (##cdr _e73357347_)))
                           (let ((_body7355_ _tl73377352_))
                             (if (gx#identifier-list? _body7355_)
                                 (begin
                                   (gx#stx-for-each
                                    gx#core-bind-feature!
                                    _body7355_)
                                   (gx#core-quote-syntax
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map
                                      gx#core-quote-syntax
                                      _body7355_))
                                    (gx#stx-source _stx7331_)))
                                 (_E73347343_)))))
                       (_E73347343_)))))
            (let () (_E73337357_)))))))
  (define gx#core-bind-feature!
    (let ((_opt-lambda72957302_
           (lambda (_id7297_ _private?7298_ _phi7299_ _ctx7300_)
             (gx#core-bind-syntax!
              _id7297_
              ((if _private?7298_
                   gx#make-private-feature-expander
                   gx#make-feature-expander)
               (gx#stx-e _id7297_))
              _private?7298_
              _phi7299_
              _ctx7300_))))
      (lambda _g12386_
        (let ((_g12385_ (length _g12386_)))
          (cond ((fx= _g12385_ 1)
                 (apply (lambda (_id7305_)
                          (let ((_private?7307_ '#f))
                            (let ((_phi7309_ (gx#current-expander-phi)))
                              (let ((_ctx7311_ (gx#current-expander-context)))
                                (_opt-lambda72957302_
                                 _id7305_
                                 _private?7307_
                                 _phi7309_
                                 _ctx7311_)))))
                        _g12386_))
                ((fx= _g12385_ 2)
                 (apply (lambda (_id7313_ _private?7314_)
                          (let ((_phi7316_ (gx#current-expander-phi)))
                            (let ((_ctx7318_ (gx#current-expander-context)))
                              (_opt-lambda72957302_
                               _id7313_
                               _private?7314_
                               _phi7316_
                               _ctx7318_))))
                        _g12386_))
                ((fx= _g12385_ 3)
                 (apply (lambda (_id7320_ _private?7321_ _phi7322_)
                          (let ((_ctx7324_ (gx#current-expander-context)))
                            (_opt-lambda72957302_
                             _id7320_
                             _private?7321_
                             _phi7322_
                             _ctx7324_)))
                        _g12386_))
                ((fx= _g12385_ 4)
                 (apply (lambda (_id7326_ _private?7327_ _phi7328_ _ctx7329_)
                          (_opt-lambda72957302_
                           _id7326_
                           _private?7327_
                           _phi7328_
                           _ctx7329_))
                        _g12386_))
                (else (error "No clause matching arguments" _g12386_))))))))
