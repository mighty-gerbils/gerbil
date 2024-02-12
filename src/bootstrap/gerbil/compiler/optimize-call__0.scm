(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707773933)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl277353_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp282212 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl277353_ __tmp282212))
           (let ()
             (declare (not safe))
             (table-set! _tbl277353_ '%#call gxc#optimize-call%))
           _tbl277353_))))
    (define gxc#apply-optimize-call
      (lambda (_stx277336_ . _args277338_)
        (let ((__tmp282214
               (lambda ()
                 (declare (not safe))
                 (if (null? _args277338_)
                     (gxc#compile-e__0 _stx277336_)
                     (let ((_arg1277343_ (car _args277338_))
                           (_rest277345_ (cdr _args277338_)))
                       (if (null? _rest277345_)
                           (gxc#compile-e__1 _stx277336_ _arg1277343_)
                           (let ((_arg2277348_ (car _rest277345_))
                                 (_rest277350_ (cdr _rest277345_)))
                             (if (null? _rest277350_)
                                 (gxc#compile-e__2
                                  _stx277336_
                                  _arg1277343_
                                  _arg2277348_)
                                 (apply gxc#compile-e
                                        _stx277336_
                                        _arg1277343_
                                        _arg2277348_
                                        _rest277350_))))))))
              (__tmp282213 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp282214
           gxc#current-compile-methods
           __tmp282213))))
    (define gxc#optimize-call%
      (lambda (_stx277191_)
        (let* ((___stx281962281963_ _stx277191_)
               (_g277194277214_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281962281963_)))))
          (let ((___kont281964281965_
                 (lambda (_L277258_ _L277259_)
                   (let* ((_rator-id277277_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L277259_)))
                          (_rator-type277279_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id277277_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type277279_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp282215
                                  (##structure-ref
                                   _rator-type277279_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id277277_
                              '" => "
                              _rator-type277279_
                              '" "
                              __tmp282215))
                           (let ((_optimized277282_
                                  (let ((__method282210
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type277279_
                                            'optimize-call))))
                                    (if __method282210
                                        (__method282210
                                         _rator-type277279_
                                         _stx277191_
                                         _L277258_)
                                        (error '"Missing method"
                                               _rator-type277279_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type277279_))
                                 _optimized277282_
                                 (let* ((___stx281944281945_ _optimized277282_)
                                        (_g277285277295_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx281944281945_)))))
                                   (let ((___kont281946281947_
                                          (lambda (_L277315_)
                                            (let ((__tmp282216
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L277315_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp282216
                                               _stx277191_))))
                                         (___kont281948281949_
                                          (lambda () _optimized277282_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx281944281945_))
                                         (let ((_e277290277307_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx281944281945_))))
                                           (let ((_tl277288277312_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e277290277307_)))
                                                 (_hd277289277310_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e277290277307_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd277289277310_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd277289277310_))
                                                     (___kont281946281947_
                                                      _tl277288277312_)
                                                     (___kont281948281949_))
                                                 (___kont281948281949_))))
                                         (___kont281948281949_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type277279_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx277191_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx277191_
                                _rator-type277279_)))))))
                (___kont281966281967_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx277191_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx281962281963_))
                (let ((_e277200277226_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx281962281963_))))
                  (let ((_tl277198277231_
                         (let () (declare (not safe)) (##cdr _e277200277226_)))
                        (_hd277199277229_
                         (let ()
                           (declare (not safe))
                           (##car _e277200277226_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl277198277231_))
                        (let ((_e277203277234_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl277198277231_))))
                          (let ((_tl277201277239_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e277203277234_)))
                                (_hd277202277237_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e277203277234_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd277202277237_))
                                (let ((_e277206277242_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd277202277237_))))
                                  (let ((_tl277204277247_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e277206277242_)))
                                        (_hd277205277245_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e277206277242_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd277205277245_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd277205277245_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl277204277247_))
                                                (let ((_e277209277250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl277204277247_))))
                                                  (let ((_tl277207277255_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e277209277250_)))
                                                        (_hd277208277253_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e277209277250_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl277207277255_))
                                                        (___kont281964281965_
                                                         _tl277201277239_
                                                         _hd277208277253_)
                                                        (___kont281966281967_))))
                                                (___kont281966281967_))
                                            (___kont281966281967_))
                                        (___kont281966281967_))))
                                (___kont281966281967_))))
                        (___kont281966281967_))))
                (___kont281966281967_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self277145_ _stx277146_ _args277147_)
        (let* ((_g277149277159_
                (lambda (_g277150277156_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g277150277156_))))
               (_g277148277188_
                (lambda (_g277150277162_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g277150277162_))
                      (let ((_e277154277164_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g277150277162_))))
                        (let ((_hd277153277167_
                               (let ()
                                 (declare (not safe))
                                 (##car _e277154277164_)))
                              (_tl277152277169_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e277154277164_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl277152277169_))
                              ((lambda (_L277172_)
                                 (let* ((_klass277183_
                                         (let ((__tmp282217
                                                (##structure-ref
                                                 _self277145_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx277146_
                                            __tmp282217)))
                                        (_object277185_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L277172_))))
                                   (if (##structure-ref
                                        _klass277183_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282233
                                              (let ((__tmp282234
                                                     (let ((__tmp282236
                                                            (let ((__tmp282237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282238
                                  (##structure-ref
                                   _klass277183_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282238 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282237)))
                   (__tmp282235
                    (let () (declare (not safe)) (cons _object277185_ '()))))
               (declare (not safe))
               (cons __tmp282236 __tmp282235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp282234))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282233
                                          _stx277146_))
                                       (if (##structure-ref
                                            _klass277183_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282227
                                                  (let ((__tmp282228
                                                         (let ((__tmp282230
                                                                (let ((__tmp282231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282232
                                      (##structure-ref
                                       _klass277183_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282232 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282231)))
                       (__tmp282229
                        (let ()
                          (declare (not safe))
                          (cons _object277185_ '()))))
                   (declare (not safe))
                   (cons __tmp282230 __tmp282229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp282228))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282227
                                              _stx277146_))
                                           (let ((__tmp282218
                                                  (let ((__tmp282219
                                                         (let ((__tmp282225
                                                                (let ((__tmp282226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282226)))
                       (__tmp282220
                        (let ((__tmp282222
                               (let ((__tmp282223
                                      (let ((__tmp282224
                                             (##structure-ref
                                              _self277145_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp282224 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282223)))
                              (__tmp282221
                               (let ()
                                 (declare (not safe))
                                 (cons _object277185_ '()))))
                          (declare (not safe))
                          (cons __tmp282222 __tmp282221))))
                   (declare (not safe))
                   (cons __tmp282225 __tmp282220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp282219))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282218
                                              _stx277146_))))))
                               _hd277153277167_)
                              (let ()
                                (declare (not safe))
                                (_g277149277159_ _g277150277162_)))))
                      (let ()
                        (declare (not safe))
                        (_g277149277159_ _g277150277162_))))))
          (declare (not safe))
          (_g277148277188_ _args277147_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t281923)
        (let ((__id281924
               (let ((__tmp281925
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281923 'id))))
                 (if __tmp281925 __tmp281925 (error '"Unknown slot" 'id)))))
          (lambda (_self277145_ _stx277146_ _args277147_)
            (let* ((_g277149277159_
                    (lambda (_g277150277156_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g277150277156_))))
                   (_g277148277188_
                    (lambda (_g277150277162_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g277150277162_))
                          (let ((_e277154277164_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g277150277162_))))
                            (let ((_hd277153277167_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e277154277164_)))
                                  (_tl277152277169_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e277154277164_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl277152277169_))
                                  ((lambda (_L277172_)
                                     (let* ((_klass277183_
                                             (let ((__tmp282239
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self277145_
                                                       __id281924
                                                       __t281923
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx277146_
                                                __tmp282239)))
                                            (_object277185_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L277172_))))
                                       (if (##structure-ref
                                            _klass277183_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282255
                                                  (let ((__tmp282256
                                                         (let ((__tmp282258
                                                                (let ((__tmp282259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282260
                                      (##structure-ref
                                       _klass277183_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282260 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282259)))
                       (__tmp282257
                        (let ()
                          (declare (not safe))
                          (cons _object277185_ '()))))
                   (declare (not safe))
                   (cons __tmp282258 __tmp282257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp282256))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282255
                                              _stx277146_))
                                           (if (##structure-ref
                                                _klass277183_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282249
                                                      (let ((__tmp282250
                                                             (let ((__tmp282252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282253
                                   (let ((__tmp282254
                                          (##structure-ref
                                           _klass277183_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282254 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp282253)))
                           (__tmp282251
                            (let ()
                              (declare (not safe))
                              (cons _object277185_ '()))))
                       (declare (not safe))
                       (cons __tmp282252 __tmp282251))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp282250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282249
                                                  _stx277146_))
                                               (let ((__tmp282240
                                                      (let ((__tmp282241
                                                             (let ((__tmp282247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282248
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282248)))
                           (__tmp282242
                            (let ((__tmp282244
                                   (let ((__tmp282245
                                          (let ((__tmp282246
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self277145_
                                                    __id281924
                                                    __t281923
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp282246 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp282245)))
                                  (__tmp282243
                                   (let ()
                                     (declare (not safe))
                                     (cons _object277185_ '()))))
                              (declare (not safe))
                              (cons __tmp282244 __tmp282243))))
                       (declare (not safe))
                       (cons __tmp282247 __tmp282242))))
                (declare (not safe))
                (cons '%#call __tmp282241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282240
                                                  _stx277146_))))))
                                   _hd277153277167_)
                                  (let ()
                                    (declare (not safe))
                                    (_g277149277159_ _g277150277162_)))))
                          (let ()
                            (declare (not safe))
                            (_g277149277159_ _g277150277162_))))))
              (declare (not safe))
              (_g277148277188_ _args277147_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#!constructor::optimize-call
      (lambda (_self276876_ _stx276877_ _args276878_)
        (let* ((_klass276880_
                (let ((__tmp282261
                       (##structure-ref _self276876_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx276877_ __tmp282261)))
               (_fields276882_
                (length (##structure-ref _klass276880_ '5 gxc#!class::t '#f)))
               (_args276884_ (map gxc#compile-e _args276878_))
               (_inline-make-object276886_
                (let ((__tmp282262
                       (let ((__tmp282268
                              (let ((__tmp282269
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282269)))
                             (__tmp282263
                              (let ((__tmp282265
                                     (let ((__tmp282266
                                            (let ((__tmp282267
                                                   (##structure-ref
                                                    _self276876_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282267 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282266)))
                                    (__tmp282264
                                     (make-list _fields276882_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp282265 __tmp282264))))
                         (declare (not safe))
                         (cons __tmp282268 __tmp282263))))
                  (declare (not safe))
                  (cons '%#call __tmp282262))))
          (let ((_$e276889_
                 (##structure-ref _klass276880_ '6 gxc#!class::t '#f)))
            (if _$e276889_
                ((lambda (_ctor276892_)
                   (let ((_$obj276894_
                          (let ((__tmp282331 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp282331)))
                         (_ctor-impl276895_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass276880_
                             _ctor276892_))))
                     (let ((__tmp282332
                            (let ((__tmp282333
                                   (let ((__tmp282398
                                          (let ((__tmp282399
                                                 (let ((__tmp282401
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276894_
                                                                '())))
                                                       (__tmp282400
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object276886_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp282401
                                                         __tmp282400))))
                                            (declare (not safe))
                                            (cons __tmp282399 '())))
                                         (__tmp282334
                                          (let ((__tmp282335
                                                 (let ((__tmp282336
                                                        (let ((__tmp282340
                                                               (if _ctor-impl276895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282392
                                  (let ((__tmp282396
                                         (let ((__tmp282397
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl276895_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282397)))
                                        (__tmp282393
                                         (let ((__tmp282394
                                                (let ((__tmp282395
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276894_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282395))))
                                           (declare (not safe))
                                           (cons __tmp282394 _args276884_))))
                                    (declare (not safe))
                                    (cons __tmp282396 __tmp282393))))
                             (declare (not safe))
                             (cons '%#call __tmp282392))
                           (let* ((_$ctor276897_
                                   (let ((__tmp282341 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp282341)))
                                  (__tmp282342
                                   (let ((__tmp282377
                                          (let ((__tmp282378
                                                 (let ((__tmp282391
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor276897_
                                                                '())))
                                                       (__tmp282379
                                                        (let ((__tmp282380
                                                               (let ((__tmp282381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282389
                                     (let ((__tmp282390
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282390)))
                                    (__tmp282382
                                     (let ((__tmp282386
                                            (let ((__tmp282387
                                                   (let ((__tmp282388
                                                          (##structure-ref
                                                           _self276876_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp282388 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282387)))
                                           (__tmp282383
                                            (let ((__tmp282384
                                                   (let ((__tmp282385
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor276892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp282385))))
                                              (declare (not safe))
                                              (cons __tmp282384 '()))))
                                       (declare (not safe))
                                       (cons __tmp282386 __tmp282383))))
                                (declare (not safe))
                                (cons __tmp282389 __tmp282382))))
                         (declare (not safe))
                         (cons '%#call __tmp282381))))
                  (declare (not safe))
                  (cons __tmp282380 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282391
                                                         __tmp282379))))
                                            (declare (not safe))
                                            (cons __tmp282378 '())))
                                         (__tmp282343
                                          (let ((__tmp282344
                                                 (let ((__tmp282345
                                                        (let ((__tmp282375
                                                               (let ((__tmp282376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor276897_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282376)))
                      (__tmp282346
                       (let ((__tmp282368
                              (let ((__tmp282369
                                     (let ((__tmp282373
                                            (let ((__tmp282374
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor276897_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282374)))
                                           (__tmp282370
                                            (let ((__tmp282371
                                                   (let ((__tmp282372
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282372))))
                                              (declare (not safe))
                                              (cons __tmp282371
                                                    _args276884_))))
                                       (declare (not safe))
                                       (cons __tmp282373 __tmp282370))))
                                (declare (not safe))
                                (cons '%#call __tmp282369)))
                             (__tmp282347
                              (let ((__tmp282348
                                     (let ((__tmp282349
                                            (let ((__tmp282366
                                                   (let ((__tmp282367
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282367)))
                                                  (__tmp282350
                                                   (let ((__tmp282364
                                                          (let ((__tmp282365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp282365)))
                 (__tmp282351
                  (let ((__tmp282362
                         (let ((__tmp282363
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282363)))
                        (__tmp282352
                         (let ((__tmp282359
                                (let ((__tmp282360
                                       (let ((__tmp282361
                                              (##structure-ref
                                               _self276876_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282361 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282360)))
                               (__tmp282353
                                (let ((__tmp282357
                                       (let ((__tmp282358
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282358)))
                                      (__tmp282354
                                       (let ((__tmp282355
                                              (let ((__tmp282356
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor276892_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp282356))))
                                         (declare (not safe))
                                         (cons __tmp282355 '()))))
                                  (declare (not safe))
                                  (cons __tmp282357 __tmp282354))))
                           (declare (not safe))
                           (cons __tmp282359 __tmp282353))))
                    (declare (not safe))
                    (cons __tmp282362 __tmp282352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282364
                                                           __tmp282351))))
                                              (declare (not safe))
                                              (cons __tmp282366 __tmp282350))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282349))))
                                (declare (not safe))
                                (cons __tmp282348 '()))))
                         (declare (not safe))
                         (cons __tmp282368 __tmp282347))))
                  (declare (not safe))
                  (cons __tmp282375 __tmp282346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp282345))))
                                            (declare (not safe))
                                            (cons __tmp282344 '()))))
                                     (declare (not safe))
                                     (cons __tmp282377 __tmp282343))))
                             (declare (not safe))
                             (cons '%#let-values __tmp282342))))
                      (__tmp282337
                       (let ((__tmp282338
                              (let ((__tmp282339
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276894_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282339))))
                         (declare (not safe))
                         (cons __tmp282338 '()))))
                  (declare (not safe))
                  (cons __tmp282340 __tmp282337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp282336))))
                                            (declare (not safe))
                                            (cons __tmp282335 '()))))
                                     (declare (not safe))
                                     (cons __tmp282398 __tmp282334))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282333))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282332 _stx276877_))))
                 _$e276889_)
                (if (##structure-ref _klass276880_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args276884_) _fields276882_)
                        (let ((__tmp282323
                               (let ((__tmp282324
                                      (let ((__tmp282329
                                             (let ((__tmp282330
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282330)))
                                            (__tmp282325
                                             (let ((__tmp282326
                                                    (let ((__tmp282327
                                                           (let ((__tmp282328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self276876_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp282328 '()))))
              (declare (not safe))
              (cons '%#ref __tmp282327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282326
                                                     _args276884_))))
                                        (declare (not safe))
                                        (cons __tmp282329 __tmp282325))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282324))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282323 _stx276877_))
                        (let ((__tmp282322
                               (##structure-ref
                                _self276876_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp282321
                               (length (##structure-ref
                                        _klass276880_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx276877_
                           __tmp282322
                           __tmp282321)))
                    (let ((_$obj276899_
                           (let ((__tmp282270 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp282270))))
                      (let _lp276901_ ((_rest276903_ _args276884_)
                                       (_initializers276904_ '()))
                        (let* ((___stx282000282001_ _rest276903_)
                               (_g276908276929_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx282000282001_)))))
                          (let ((___kont282002282003_
                                 (lambda (_L276983_ _L276984_ _L276985_)
                                   (let* ((_slot277015_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L276985_))))
                                          (_off277017_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass276880_
                                              _slot277015_))))
                                     (if _off277017_
                                         (let ((__tmp282272
                                                (let ((__tmp282273
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off277017_
                                                               _L276984_))))
                                                  (declare (not safe))
                                                  (cons __tmp282273
                                                        _initializers276904_))))
                                           (declare (not safe))
                                           (_lp276901_ _L276983_ __tmp282272))
                                         (let ((__tmp282271
                                                (##structure-ref
                                                 _self276876_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx276877_
                                            __tmp282271
                                            _slot277015_))))))
                                (___kont282004282005_
                                 (lambda ()
                                   (let ((__tmp282274
                                          (let ((__tmp282275
                                                 (let ((__tmp282298
                                                        (let ((__tmp282299
                                                               (let ((__tmp282301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276899_ '())))
                             (__tmp282300
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276886_ '()))))
                         (declare (not safe))
                         (cons __tmp282301 __tmp282300))))
                  (declare (not safe))
                  (cons __tmp282299 '())))
               (__tmp282276
                (let ((__tmp282277
                       (let ((__tmp282278
                              (let ((__tmp282295
                                     (let ((__tmp282296
                                            (let ((__tmp282297
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276899_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282297))))
                                       (declare (not safe))
                                       (cons __tmp282296 '())))
                                    (__tmp282279
                                     (let ((__tmp282280
                                            (lambda (_i276943_ _r276944_)
                                              (let ((__tmp282281
                                                     (let ((__tmp282282
                                                            (let ((__tmp282292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282293
                                  (let ((__tmp282294
                                         (##structure-ref
                                          _self276876_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp282294 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282293)))
                          (__tmp282283
                           (let ((__tmp282289
                                  (let ((__tmp282290
                                         (let ((__tmp282291 (car _i276943_)))
                                           (declare (not safe))
                                           (cons __tmp282291 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282290)))
                                 (__tmp282284
                                  (let ((__tmp282287
                                         (let ((__tmp282288
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276899_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282288)))
                                        (__tmp282285
                                         (let ((__tmp282286 (cdr _i276943_)))
                                           (declare (not safe))
                                           (cons __tmp282286 '()))))
                                    (declare (not safe))
                                    (cons __tmp282287 __tmp282285))))
                             (declare (not safe))
                             (cons __tmp282289 __tmp282284))))
                      (declare (not safe))
                      (cons __tmp282292 __tmp282283))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp282282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282281
                                                      _r276944_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp282280
                                               '()
                                               _initializers276904_))))
                                (declare (not safe))
                                (foldr1 cons __tmp282295 __tmp282279))))
                         (declare (not safe))
                         (cons '%#begin __tmp282278))))
                  (declare (not safe))
                  (cons __tmp282277 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282298
                                                         __tmp282276))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282275))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282274
                                      _stx276877_))))
                                (___kont282006282007_
                                 (lambda ()
                                   (let ((__tmp282302
                                          (let ((__tmp282303
                                                 (let ((__tmp282317
                                                        (let ((__tmp282318
                                                               (let ((__tmp282320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276899_ '())))
                             (__tmp282319
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276886_ '()))))
                         (declare (not safe))
                         (cons __tmp282320 __tmp282319))))
                  (declare (not safe))
                  (cons __tmp282318 '())))
               (__tmp282304
                (let ((__tmp282305
                       (let ((__tmp282306
                              (let ((__tmp282310
                                     (let ((__tmp282311
                                            (let ((__tmp282315
                                                   (let ((__tmp282316
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282316)))
                                                  (__tmp282312
                                                   (let ((__tmp282313
                                                          (let ((__tmp282314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276899_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282313
                                                           _args276884_))))
                                              (declare (not safe))
                                              (cons __tmp282315 __tmp282312))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282311)))
                                    (__tmp282307
                                     (let ((__tmp282308
                                            (let ((__tmp282309
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276899_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282309))))
                                       (declare (not safe))
                                       (cons __tmp282308 '()))))
                                (declare (not safe))
                                (cons __tmp282310 __tmp282307))))
                         (declare (not safe))
                         (cons '%#begin __tmp282306))))
                  (declare (not safe))
                  (cons __tmp282305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282317
                                                         __tmp282304))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282303))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282302
                                      _stx276877_)))))
                            (let* ((_g276906276946_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx282000282001_))
                                          (___kont282004282005_)
                                          (___kont282006282007_))))
                                   (___match282037282038_
                                    (lambda (_e276915276951_
                                             _hd276914276954_
                                             _tl276913276956_
                                             _e276918276959_
                                             _hd276917276962_
                                             _tl276916276964_
                                             _e276921276967_
                                             _hd276920276970_
                                             _tl276919276972_
                                             _e276924276975_
                                             _hd276923276978_
                                             _tl276922276980_)
                                      (let ((_L276983_ _tl276922276980_)
                                            (_L276984_ _hd276923276978_)
                                            (_L276985_ _hd276920276970_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L276985_))
                                            (___kont282002282003_
                                             _L276983_
                                             _L276984_
                                             _L276985_)
                                            (___kont282006282007_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx282000282001_))
                                  (let ((_e276915276951_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx282000282001_))))
                                    (let ((_tl276913276956_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276915276951_)))
                                          (_hd276914276954_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276915276951_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd276914276954_))
                                          (let ((_e276918276959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd276914276954_))))
                                            (let ((_tl276916276964_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276918276959_)))
                                                  (_hd276917276962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276918276959_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd276917276962_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd276917276962_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276916276964_))
                                                          (let ((_e276921276967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276916276964_))))
                    (let ((_tl276919276972_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276921276967_)))
                          (_hd276920276970_
                           (let ()
                             (declare (not safe))
                             (##car _e276921276967_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276919276972_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276913276956_))
                              (let ((_e276924276975_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276913276956_))))
                                (let ((_tl276922276980_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276924276975_)))
                                      (_hd276923276978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276924276975_))))
                                  (___match282037282038_
                                   _e276915276951_
                                   _hd276914276954_
                                   _tl276913276956_
                                   _e276918276959_
                                   _hd276917276962_
                                   _tl276916276964_
                                   _e276921276967_
                                   _hd276920276970_
                                   _tl276919276972_
                                   _e276924276975_
                                   _hd276923276978_
                                   _tl276922276980_)))
                              (___kont282006282007_))
                          (___kont282006282007_))))
                  (___kont282006282007_))
              (___kont282006282007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont282006282007_))))
                                          (___kont282006282007_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276906276946_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t281926)
        (let ((__id281927
               (let ((__tmp281928
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281926 'id))))
                 (if __tmp281928 __tmp281928 (error '"Unknown slot" 'id)))))
          (lambda (_self276876_ _stx276877_ _args276878_)
            (let* ((_klass276880_
                    (let ((__tmp282402
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self276876_
                              __id281927
                              __t281926
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx276877_ __tmp282402)))
                   (_fields276882_
                    (length (##structure-ref
                             _klass276880_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args276884_ (map gxc#compile-e _args276878_))
                   (_inline-make-object276886_
                    (let ((__tmp282403
                           (let ((__tmp282409
                                  (let ((__tmp282410
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282410)))
                                 (__tmp282404
                                  (let ((__tmp282406
                                         (let ((__tmp282407
                                                (let ((__tmp282408
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276876_
                                                          __id281927
                                                          __t281926
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282408 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282407)))
                                        (__tmp282405
                                         (make-list
                                          _fields276882_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp282406 __tmp282405))))
                             (declare (not safe))
                             (cons __tmp282409 __tmp282404))))
                      (declare (not safe))
                      (cons '%#call __tmp282403))))
              (let ((_$e276889_
                     (##structure-ref _klass276880_ '6 gxc#!class::t '#f)))
                (if _$e276889_
                    ((lambda (_ctor276892_)
                       (let ((_$obj276894_
                              (let ((__tmp282472 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp282472)))
                             (_ctor-impl276895_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass276880_
                                 _ctor276892_))))
                         (let ((__tmp282473
                                (let ((__tmp282474
                                       (let ((__tmp282539
                                              (let ((__tmp282540
                                                     (let ((__tmp282542
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj276894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282541
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object276886_ '()))))
               (declare (not safe))
               (cons __tmp282542 __tmp282541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282540 '())))
                                             (__tmp282475
                                              (let ((__tmp282476
                                                     (let ((__tmp282477
                                                            (let ((__tmp282481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl276895_
                               (let ((__tmp282533
                                      (let ((__tmp282537
                                             (let ((__tmp282538
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl276895_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282538)))
                                            (__tmp282534
                                             (let ((__tmp282535
                                                    (let ((__tmp282536
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj276894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282535
                                                     _args276884_))))
                                        (declare (not safe))
                                        (cons __tmp282537 __tmp282534))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282533))
                               (let* ((_$ctor276897_
                                       (let ((__tmp282482
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp282482)))
                                      (__tmp282483
                                       (let ((__tmp282518
                                              (let ((__tmp282519
                                                     (let ((__tmp282532
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor276897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282520
                    (let ((__tmp282521
                           (let ((__tmp282522
                                  (let ((__tmp282530
                                         (let ((__tmp282531
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282531)))
                                        (__tmp282523
                                         (let ((__tmp282527
                                                (let ((__tmp282528
                                                       (let ((__tmp282529
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self276876_
                         __id281927
                         __t281926
                         '#f))))
                 (declare (not safe))
                 (cons __tmp282529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282528)))
                                               (__tmp282524
                                                (let ((__tmp282525
                                                       (let ((__tmp282526
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor276892_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp282526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282525 '()))))
                                           (declare (not safe))
                                           (cons __tmp282527 __tmp282524))))
                                    (declare (not safe))
                                    (cons __tmp282530 __tmp282523))))
                             (declare (not safe))
                             (cons '%#call __tmp282522))))
                      (declare (not safe))
                      (cons __tmp282521 '()))))
               (declare (not safe))
               (cons __tmp282532 __tmp282520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282519 '())))
                                             (__tmp282484
                                              (let ((__tmp282485
                                                     (let ((__tmp282486
                                                            (let ((__tmp282516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282517
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor276897_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282517)))
                          (__tmp282487
                           (let ((__tmp282509
                                  (let ((__tmp282510
                                         (let ((__tmp282514
                                                (let ((__tmp282515
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor276897_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282515)))
                                               (__tmp282511
                                                (let ((__tmp282512
                                                       (let ((__tmp282513
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276894_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282512
                                                        _args276884_))))
                                           (declare (not safe))
                                           (cons __tmp282514 __tmp282511))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282510)))
                                 (__tmp282488
                                  (let ((__tmp282489
                                         (let ((__tmp282490
                                                (let ((__tmp282507
                                                       (let ((__tmp282508
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282508)))
              (__tmp282491
               (let ((__tmp282505
                      (let ((__tmp282506
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp282506)))
                     (__tmp282492
                      (let ((__tmp282503
                             (let ((__tmp282504
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282504)))
                            (__tmp282493
                             (let ((__tmp282500
                                    (let ((__tmp282501
                                           (let ((__tmp282502
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276876_
                                                     __id281927
                                                     __t281926
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282502 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282501)))
                                   (__tmp282494
                                    (let ((__tmp282498
                                           (let ((__tmp282499
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282499)))
                                          (__tmp282495
                                           (let ((__tmp282496
                                                  (let ((__tmp282497
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor276892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp282497))))
                                             (declare (not safe))
                                             (cons __tmp282496 '()))))
                                      (declare (not safe))
                                      (cons __tmp282498 __tmp282495))))
                               (declare (not safe))
                               (cons __tmp282500 __tmp282494))))
                        (declare (not safe))
                        (cons __tmp282503 __tmp282493))))
                 (declare (not safe))
                 (cons __tmp282505 __tmp282492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282507
                                                        __tmp282491))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282490))))
                                    (declare (not safe))
                                    (cons __tmp282489 '()))))
                             (declare (not safe))
                             (cons __tmp282509 __tmp282488))))
                      (declare (not safe))
                      (cons __tmp282516 __tmp282487))))
               (declare (not safe))
               (cons '%#if __tmp282486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282485 '()))))
                                         (declare (not safe))
                                         (cons __tmp282518 __tmp282484))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp282483))))
                          (__tmp282478
                           (let ((__tmp282479
                                  (let ((__tmp282480
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj276894_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282480))))
                             (declare (not safe))
                             (cons __tmp282479 '()))))
                      (declare (not safe))
                      (cons __tmp282481 __tmp282478))))
               (declare (not safe))
               (cons '%#begin __tmp282477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282476 '()))))
                                         (declare (not safe))
                                         (cons __tmp282539 __tmp282475))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282474))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282473 _stx276877_))))
                     _$e276889_)
                    (if (##structure-ref _klass276880_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args276884_) _fields276882_)
                            (let ((__tmp282464
                                   (let ((__tmp282465
                                          (let ((__tmp282470
                                                 (let ((__tmp282471
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282471)))
                                                (__tmp282466
                                                 (let ((__tmp282467
                                                        (let ((__tmp282468
                                                               (let ((__tmp282469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self276876_
                                 __id281927
                                 __t281926
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp282469 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282467
                                                         _args276884_))))
                                            (declare (not safe))
                                            (cons __tmp282470 __tmp282466))))
                                     (declare (not safe))
                                     (cons '%#call __tmp282465))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp282464 _stx276877_))
                            (let ((__tmp282463
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self276876_
                                      __id281927
                                      __t281926
                                      '#f)))
                                  (__tmp282462
                                   (length (##structure-ref
                                            _klass276880_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx276877_
                               __tmp282463
                               __tmp282462)))
                        (let ((_$obj276899_
                               (let ((__tmp282411 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp282411))))
                          (let _lp276901_ ((_rest276903_ _args276884_)
                                           (_initializers276904_ '()))
                            (let* ((___stx282042282043_ _rest276903_)
                                   (_g276908276929_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx282042282043_)))))
                              (let ((___kont282044282045_
                                     (lambda (_L276983_ _L276984_ _L276985_)
                                       (let* ((_slot277015_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L276985_))))
                                              (_off277017_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass276880_
                                                  _slot277015_))))
                                         (if _off277017_
                                             (let ((__tmp282413
                                                    (let ((__tmp282414
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off277017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L276984_))))
              (declare (not safe))
              (cons __tmp282414 _initializers276904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp276901_
                                                _L276983_
                                                __tmp282413))
                                             (let ((__tmp282412
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276876_
                                                       __id281927
                                                       __t281926
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx276877_
                                                __tmp282412
                                                _slot277015_))))))
                                    (___kont282046282047_
                                     (lambda ()
                                       (let ((__tmp282415
                                              (let ((__tmp282416
                                                     (let ((__tmp282439
                                                            (let ((__tmp282440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282442
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276899_ '())))
                                 (__tmp282441
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276886_ '()))))
                             (declare (not safe))
                             (cons __tmp282442 __tmp282441))))
                      (declare (not safe))
                      (cons __tmp282440 '())))
                   (__tmp282417
                    (let ((__tmp282418
                           (let ((__tmp282419
                                  (let ((__tmp282436
                                         (let ((__tmp282437
                                                (let ((__tmp282438
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276899_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282438))))
                                           (declare (not safe))
                                           (cons __tmp282437 '())))
                                        (__tmp282420
                                         (let ((__tmp282421
                                                (lambda (_i276943_ _r276944_)
                                                  (let ((__tmp282422
                                                         (let ((__tmp282423
                                                                (let ((__tmp282433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282434
                                      (let ((__tmp282435
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self276876_
                                                __id281927
                                                __t281926
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp282435 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282434)))
                              (__tmp282424
                               (let ((__tmp282430
                                      (let ((__tmp282431
                                             (let ((__tmp282432
                                                    (car _i276943_)))
                                               (declare (not safe))
                                               (cons __tmp282432 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282431)))
                                     (__tmp282425
                                      (let ((__tmp282428
                                             (let ((__tmp282429
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276899_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282429)))
                                            (__tmp282426
                                             (let ((__tmp282427
                                                    (cdr _i276943_)))
                                               (declare (not safe))
                                               (cons __tmp282427 '()))))
                                        (declare (not safe))
                                        (cons __tmp282428 __tmp282426))))
                                 (declare (not safe))
                                 (cons __tmp282430 __tmp282425))))
                          (declare (not safe))
                          (cons __tmp282433 __tmp282424))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp282423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282422
                                                          _r276944_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp282421
                                                   '()
                                                   _initializers276904_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp282436 __tmp282420))))
                             (declare (not safe))
                             (cons '%#begin __tmp282419))))
                      (declare (not safe))
                      (cons __tmp282418 '()))))
               (declare (not safe))
               (cons __tmp282439 __tmp282417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282416))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282415
                                          _stx276877_))))
                                    (___kont282048282049_
                                     (lambda ()
                                       (let ((__tmp282443
                                              (let ((__tmp282444
                                                     (let ((__tmp282458
                                                            (let ((__tmp282459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282461
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276899_ '())))
                                 (__tmp282460
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276886_ '()))))
                             (declare (not safe))
                             (cons __tmp282461 __tmp282460))))
                      (declare (not safe))
                      (cons __tmp282459 '())))
                   (__tmp282445
                    (let ((__tmp282446
                           (let ((__tmp282447
                                  (let ((__tmp282451
                                         (let ((__tmp282452
                                                (let ((__tmp282456
                                                       (let ((__tmp282457
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282457)))
              (__tmp282453
               (let ((__tmp282454
                      (let ((__tmp282455
                             (let ()
                               (declare (not safe))
                               (cons _$obj276899_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282455))))
                 (declare (not safe))
                 (cons __tmp282454 _args276884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282456
                                                        __tmp282453))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282452)))
                                        (__tmp282448
                                         (let ((__tmp282449
                                                (let ((__tmp282450
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276899_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282450))))
                                           (declare (not safe))
                                           (cons __tmp282449 '()))))
                                    (declare (not safe))
                                    (cons __tmp282451 __tmp282448))))
                             (declare (not safe))
                             (cons '%#begin __tmp282447))))
                      (declare (not safe))
                      (cons __tmp282446 '()))))
               (declare (not safe))
               (cons __tmp282458 __tmp282445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282444))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282443
                                          _stx276877_)))))
                                (let* ((_g276906276946_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx282042282043_))
                                              (___kont282046282047_)
                                              (___kont282048282049_))))
                                       (___match282079282080_
                                        (lambda (_e276915276951_
                                                 _hd276914276954_
                                                 _tl276913276956_
                                                 _e276918276959_
                                                 _hd276917276962_
                                                 _tl276916276964_
                                                 _e276921276967_
                                                 _hd276920276970_
                                                 _tl276919276972_
                                                 _e276924276975_
                                                 _hd276923276978_
                                                 _tl276922276980_)
                                          (let ((_L276983_ _tl276922276980_)
                                                (_L276984_ _hd276923276978_)
                                                (_L276985_ _hd276920276970_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L276985_))
                                                (___kont282044282045_
                                                 _L276983_
                                                 _L276984_
                                                 _L276985_)
                                                (___kont282048282049_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx282042282043_))
                                      (let ((_e276915276951_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx282042282043_))))
                                        (let ((_tl276913276956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276915276951_)))
                                              (_hd276914276954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276915276951_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd276914276954_))
                                              (let ((_e276918276959_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd276914276954_))))
                                                (let ((_tl276916276964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276918276959_)))
                                                      (_hd276917276962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276918276959_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd276917276962_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd276917276962_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276916276964_))
                      (let ((_e276921276967_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276916276964_))))
                        (let ((_tl276919276972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276921276967_)))
                              (_hd276920276970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276921276967_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276919276972_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276913276956_))
                                  (let ((_e276924276975_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276913276956_))))
                                    (let ((_tl276922276980_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276924276975_)))
                                          (_hd276923276978_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276924276975_))))
                                      (___match282079282080_
                                       _e276915276951_
                                       _hd276914276954_
                                       _tl276913276956_
                                       _e276918276959_
                                       _hd276917276962_
                                       _tl276916276964_
                                       _e276921276967_
                                       _hd276920276970_
                                       _tl276919276972_
                                       _e276924276975_
                                       _hd276923276978_
                                       _tl276922276980_)))
                                  (___kont282048282049_))
                              (___kont282048282049_))))
                      (___kont282048282049_))
                  (___kont282048282049_))
              (___kont282048282049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont282048282049_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g276906276946_))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self276699_ _stx276700_ _args276701_)
        (let* ((_g276703276713_
                (lambda (_g276704276710_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276704276710_))))
               (_g276702276751_
                (lambda (_g276704276716_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276704276716_))
                      (let ((_e276708276718_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276704276716_))))
                        (let ((_hd276707276721_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276708276718_)))
                              (_tl276706276723_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276708276718_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276706276723_))
                              ((lambda (_L276726_)
                                 (let* ((_klass276737_
                                         (let ((__tmp282543
                                                (##structure-ref
                                                 _self276699_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276700_
                                            __tmp282543)))
                                        (_field276739_
                                         (let ((__tmp282544
                                                (##structure-ref
                                                 _self276699_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass276737_
                                            __tmp282544)))
                                        (_object276741_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276726_))))
                                   (if (##structure-ref
                                        _klass276737_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282621
                                              (let ((__tmp282630
                                                     (if (##structure-ref
                                                          _self276699_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp282622
                                                     (let ((__tmp282627
                                                            (let ((__tmp282628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282629
                                  (##structure-ref
                                   _self276699_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282629 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282628)))
                   (__tmp282623
                    (let ((__tmp282625
                           (let ((__tmp282626
                                  (let ()
                                    (declare (not safe))
                                    (cons _field276739_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282626)))
                          (__tmp282624
                           (let ()
                             (declare (not safe))
                             (cons _object276741_ '()))))
                      (declare (not safe))
                      (cons __tmp282625 __tmp282624))))
               (declare (not safe))
               (cons __tmp282627 __tmp282623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282630
                                                      __tmp282622))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282621
                                          _stx276700_))
                                       (if (##structure-ref
                                            _klass276737_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282611
                                                  (let ((__tmp282620
                                                         (if (##structure-ref
                                                              _self276699_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp282612
                                                         (let ((__tmp282617
                                                                (let ((__tmp282618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282619
                                      (##structure-ref
                                       _self276699_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282619 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282618)))
                       (__tmp282613
                        (let ((__tmp282615
                               (let ((__tmp282616
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276739_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282616)))
                              (__tmp282614
                               (let ()
                                 (declare (not safe))
                                 (cons _object276741_ '()))))
                          (declare (not safe))
                          (cons __tmp282615 __tmp282614))))
                   (declare (not safe))
                   (cons __tmp282617 __tmp282613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282620
                                                          __tmp282612))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282611
                                              _stx276700_))
                                           (let ((_$e276744_
                                                  (let ((__tmp282545
                                                         (##structure-ref
                                                          _self276699_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass276737_
                                                     __tmp282545))))
                                             (if _$e276744_
                                                 ((lambda (_klass276747_)
                                                    (let ((__tmp282601
                                                           (let ((__tmp282610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self276699_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp282602
                          (let ((__tmp282607
                                 (let ((__tmp282608
                                        (let ((__tmp282609
                                               (##structure-ref
                                                _self276699_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282609 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp282608)))
                                (__tmp282603
                                 (let ((__tmp282605
                                        (let ((__tmp282606
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field276739_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp282606)))
                                       (__tmp282604
                                        (let ()
                                          (declare (not safe))
                                          (cons _object276741_ '()))))
                                   (declare (not safe))
                                   (cons __tmp282605 __tmp282604))))
                            (declare (not safe))
                            (cons __tmp282607 __tmp282603))))
                     (declare (not safe))
                     (cons __tmp282610 __tmp282602))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp282601 _stx276700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e276744_)
                                                 (if (##structure-ref
                                                      _self276699_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp282555
                                                            (let* ((_$obj276749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282556 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp282556)))
                           (__tmp282557
                            (let ((__tmp282597
                                   (let ((__tmp282598
                                          (let ((__tmp282600
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj276749_ '())))
                                                (__tmp282599
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object276741_ '()))))
                                            (declare (not safe))
                                            (cons __tmp282600 __tmp282599))))
                                     (declare (not safe))
                                     (cons __tmp282598 '())))
                                  (__tmp282558
                                   (let ((__tmp282559
                                          (let ((__tmp282560
                                                 (let ((__tmp282589
                                                        (let ((__tmp282590
                                                               (let ((__tmp282594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282595
                                     (let ((__tmp282596
                                            (##structure-ref
                                             _klass276737_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp282596 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp282595)))
                             (__tmp282591
                              (let ((__tmp282592
                                     (let ((__tmp282593
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj276749_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282593))))
                                (declare (not safe))
                                (cons __tmp282592 '()))))
                         (declare (not safe))
                         (cons __tmp282594 __tmp282591))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp282590)))
               (__tmp282561
                (let ((__tmp282578
                       (let ((__tmp282579
                              (let ((__tmp282586
                                     (let ((__tmp282587
                                            (let ((__tmp282588
                                                   (##structure-ref
                                                    _self276699_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282588 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282587)))
                                    (__tmp282580
                                     (let ((__tmp282584
                                            (let ((__tmp282585
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276739_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282585)))
                                           (__tmp282581
                                            (let ((__tmp282582
                                                   (let ((__tmp282583
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282583))))
                                              (declare (not safe))
                                              (cons __tmp282582 '()))))
                                       (declare (not safe))
                                       (cons __tmp282584 __tmp282581))))
                                (declare (not safe))
                                (cons __tmp282586 __tmp282580))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp282579)))
                      (__tmp282562
                       (let ((__tmp282563
                              (let ((__tmp282564
                                     (let ((__tmp282576
                                            (let ((__tmp282577
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282577)))
                                           (__tmp282565
                                            (let ((__tmp282573
                                                   (let ((__tmp282574
                                                          (let ((__tmp282575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self276699_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp282575 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282574)))
                                                  (__tmp282566
                                                   (let ((__tmp282571
                                                          (let ((__tmp282572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276749_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282572)))
                 (__tmp282567
                  (let ((__tmp282568
                         (let ((__tmp282569
                                (let ((__tmp282570
                                       (##structure-ref
                                        _self276699_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp282570 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282569))))
                    (declare (not safe))
                    (cons __tmp282568 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282571
                                                           __tmp282567))))
                                              (declare (not safe))
                                              (cons __tmp282573 __tmp282566))))
                                       (declare (not safe))
                                       (cons __tmp282576 __tmp282565))))
                                (declare (not safe))
                                (cons '%#call __tmp282564))))
                         (declare (not safe))
                         (cons __tmp282563 '()))))
                  (declare (not safe))
                  (cons __tmp282578 __tmp282562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282589
                                                         __tmp282561))))
                                            (declare (not safe))
                                            (cons '%#if __tmp282560))))
                                     (declare (not safe))
                                     (cons __tmp282559 '()))))
                              (declare (not safe))
                              (cons __tmp282597 __tmp282558))))
                      (declare (not safe))
                      (cons '%#let-values __tmp282557))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282555 _stx276700_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp282546
                                                            (let ((__tmp282547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282553
                                  (let ((__tmp282554
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282554)))
                                 (__tmp282548
                                  (let ((__tmp282549
                                         (let ((__tmp282550
                                                (let ((__tmp282551
                                                       (let ((__tmp282552
                                                              (##structure-ref
                                                               _self276699_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp282552
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp282551))))
                                           (declare (not safe))
                                           (cons __tmp282550 '()))))
                                    (declare (not safe))
                                    (cons _object276741_ __tmp282549))))
                             (declare (not safe))
                             (cons __tmp282553 __tmp282548))))
                      (declare (not safe))
                      (cons '%#call __tmp282547))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282546 _stx276700_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd276707276721_)
                              (let ()
                                (declare (not safe))
                                (_g276703276713_ _g276704276716_)))))
                      (let ()
                        (declare (not safe))
                        (_g276703276713_ _g276704276716_))))))
          (declare (not safe))
          (_g276702276751_ _args276701_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t281929)
        (let ((__checked?281930
               (let ((__tmp281933
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281929 'checked?))))
                 (if __tmp281933
                     __tmp281933
                     (error '"Unknown slot" 'checked?))))
              (__id281931
               (let ((__tmp281934
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281929 'id))))
                 (if __tmp281934 __tmp281934 (error '"Unknown slot" 'id))))
              (__slot281932
               (let ((__tmp281935
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281929 'slot))))
                 (if __tmp281935 __tmp281935 (error '"Unknown slot" 'slot)))))
          (lambda (_self276699_ _stx276700_ _args276701_)
            (let* ((_g276703276713_
                    (lambda (_g276704276710_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276704276710_))))
                   (_g276702276751_
                    (lambda (_g276704276716_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276704276716_))
                          (let ((_e276708276718_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276704276716_))))
                            (let ((_hd276707276721_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276708276718_)))
                                  (_tl276706276723_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276708276718_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276706276723_))
                                  ((lambda (_L276726_)
                                     (let* ((_klass276737_
                                             (let ((__tmp282631
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276699_
                                                       __id281931
                                                       __t281929
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276700_
                                                __tmp282631)))
                                            (_field276739_
                                             (let ((__tmp282632
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276699_
                                                       __slot281932
                                                       __t281929
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass276737_
                                                __tmp282632)))
                                            (_object276741_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276726_))))
                                       (if (##structure-ref
                                            _klass276737_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282709
                                                  (let ((__tmp282718
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276699_
                        __checked?281930
                        __t281929
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp282710
                 (let ((__tmp282715
                        (let ((__tmp282716
                               (let ((__tmp282717
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self276699_
                                         __id281931
                                         __t281929
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp282717 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282716)))
                       (__tmp282711
                        (let ((__tmp282713
                               (let ((__tmp282714
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276739_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282714)))
                              (__tmp282712
                               (let ()
                                 (declare (not safe))
                                 (cons _object276741_ '()))))
                          (declare (not safe))
                          (cons __tmp282713 __tmp282712))))
                   (declare (not safe))
                   (cons __tmp282715 __tmp282711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282718
                                                          __tmp282710))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282709
                                              _stx276700_))
                                           (if (##structure-ref
                                                _klass276737_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282699
                                                      (let ((__tmp282708
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276699_
                            __checked?281930
                            __t281929
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp282700
                     (let ((__tmp282705
                            (let ((__tmp282706
                                   (let ((__tmp282707
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276699_
                                             __id281931
                                             __t281929
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp282707 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282706)))
                           (__tmp282701
                            (let ((__tmp282703
                                   (let ((__tmp282704
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276739_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282704)))
                                  (__tmp282702
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276741_ '()))))
                              (declare (not safe))
                              (cons __tmp282703 __tmp282702))))
                       (declare (not safe))
                       (cons __tmp282705 __tmp282701))))
                (declare (not safe))
                (cons __tmp282708 __tmp282700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282699
                                                  _stx276700_))
                                               (let ((_$e276744_
                                                      (let ((__tmp282633
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276699_
                        __slot281932
                        __t281929
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass276737_ __tmp282633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e276744_
                                                     ((lambda (_klass276747_)
                                                        (let ((__tmp282689
                                                               (let ((__tmp282698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276699_
                                     __checked?281930
                                     __t281929
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp282690
                              (let ((__tmp282695
                                     (let ((__tmp282696
                                            (let ((__tmp282697
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276699_
                                                      __id281931
                                                      __t281929
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282697 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282696)))
                                    (__tmp282691
                                     (let ((__tmp282693
                                            (let ((__tmp282694
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276739_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282694)))
                                           (__tmp282692
                                            (let ()
                                              (declare (not safe))
                                              (cons _object276741_ '()))))
                                       (declare (not safe))
                                       (cons __tmp282693 __tmp282692))))
                                (declare (not safe))
                                (cons __tmp282695 __tmp282691))))
                         (declare (not safe))
                         (cons __tmp282698 __tmp282690))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp282689 _stx276700_)))
              _$e276744_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self276699_
                                                            __checked?281930
                                                            __t281929
                                                            '#f))
                                                         (let ((__tmp282643
                                                                (let* ((_$obj276749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp282644 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp282644)))
                               (__tmp282645
                                (let ((__tmp282685
                                       (let ((__tmp282686
                                              (let ((__tmp282688
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj276749_
                                                             '())))
                                                    (__tmp282687
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object276741_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp282688
                                                      __tmp282687))))
                                         (declare (not safe))
                                         (cons __tmp282686 '())))
                                      (__tmp282646
                                       (let ((__tmp282647
                                              (let ((__tmp282648
                                                     (let ((__tmp282677
                                                            (let ((__tmp282678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282682
                                  (let ((__tmp282683
                                         (let ((__tmp282684
                                                (##structure-ref
                                                 _klass276737_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp282684 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282683)))
                                 (__tmp282679
                                  (let ((__tmp282680
                                         (let ((__tmp282681
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276749_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282681))))
                                    (declare (not safe))
                                    (cons __tmp282680 '()))))
                             (declare (not safe))
                             (cons __tmp282682 __tmp282679))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp282678)))
                   (__tmp282649
                    (let ((__tmp282666
                           (let ((__tmp282667
                                  (let ((__tmp282674
                                         (let ((__tmp282675
                                                (let ((__tmp282676
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276699_
                                                          __id281931
                                                          __t281929
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282676 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282675)))
                                        (__tmp282668
                                         (let ((__tmp282672
                                                (let ((__tmp282673
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276739_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282673)))
                                               (__tmp282669
                                                (let ((__tmp282670
                                                       (let ((__tmp282671
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276749_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282670 '()))))
                                           (declare (not safe))
                                           (cons __tmp282672 __tmp282669))))
                                    (declare (not safe))
                                    (cons __tmp282674 __tmp282668))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp282667)))
                          (__tmp282650
                           (let ((__tmp282651
                                  (let ((__tmp282652
                                         (let ((__tmp282664
                                                (let ((__tmp282665
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282665)))
                                               (__tmp282653
                                                (let ((__tmp282661
                                                       (let ((__tmp282662
                                                              (let ((__tmp282663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276699_
                                __id281931
                                __t281929
                                '#f))))
                        (declare (not safe))
                        (cons __tmp282663 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282662)))
              (__tmp282654
               (let ((__tmp282659
                      (let ((__tmp282660
                             (let ()
                               (declare (not safe))
                               (cons _$obj276749_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282660)))
                     (__tmp282655
                      (let ((__tmp282656
                             (let ((__tmp282657
                                    (let ((__tmp282658
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self276699_
                                              __slot281932
                                              __t281929
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp282658 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282657))))
                        (declare (not safe))
                        (cons __tmp282656 '()))))
                 (declare (not safe))
                 (cons __tmp282659 __tmp282655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282661
                                                        __tmp282654))))
                                           (declare (not safe))
                                           (cons __tmp282664 __tmp282653))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282652))))
                             (declare (not safe))
                             (cons __tmp282651 '()))))
                      (declare (not safe))
                      (cons __tmp282666 __tmp282650))))
               (declare (not safe))
               (cons __tmp282677 __tmp282649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp282648))))
                                         (declare (not safe))
                                         (cons __tmp282647 '()))))
                                  (declare (not safe))
                                  (cons __tmp282685 __tmp282646))))
                          (declare (not safe))
                          (cons '%#let-values __tmp282645))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282643 _stx276700_))
                 (let ((__tmp282634
                        (let ((__tmp282635
                               (let ((__tmp282641
                                      (let ((__tmp282642
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp282642)))
                                     (__tmp282636
                                      (let ((__tmp282637
                                             (let ((__tmp282638
                                                    (let ((__tmp282639
                                                           (let ((__tmp282640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self276699_
                             __slot281932
                             __t281929
                             '#f))))
                     (declare (not safe))
                     (cons __tmp282640 '()))))
              (declare (not safe))
              (cons '%#quote __tmp282639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282638 '()))))
                                        (declare (not safe))
                                        (cons _object276741_ __tmp282637))))
                                 (declare (not safe))
                                 (cons __tmp282641 __tmp282636))))
                          (declare (not safe))
                          (cons '%#call __tmp282635))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282634 _stx276700_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd276707276721_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276703276713_ _g276704276716_)))))
                          (let ()
                            (declare (not safe))
                            (_g276703276713_ _g276704276716_))))))
              (declare (not safe))
              (_g276702276751_ _args276701_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self276504_ _stx276505_ _args276506_)
        (let* ((_g276508276522_
                (lambda (_g276509276519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276509276519_))))
               (_g276507276574_
                (lambda (_g276509276525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276509276525_))
                      (let ((_e276514276527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276509276525_))))
                        (let ((_hd276513276530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276514276527_)))
                              (_tl276512276532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276514276527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276512276532_))
                              (let ((_e276517276535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276512276532_))))
                                (let ((_hd276516276538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276517276535_)))
                                      (_tl276515276540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276517276535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl276515276540_))
                                      ((lambda (_L276543_ _L276544_)
                                         (let* ((_klass276558_
                                                 (let ((__tmp282719
                                                        (##structure-ref
                                                         _self276504_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx276505_
                                                    __tmp282719)))
                                                (_field276560_
                                                 (let ((__tmp282720
                                                        (##structure-ref
                                                         _self276504_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass276558_
                                                    __tmp282720)))
                                                (_object276562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276544_)))
                                                (_value276564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276543_))))
                                           (if (##structure-ref
                                                _klass276558_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282802
                                                      (let ((__tmp282812
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self276504_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp282803
                     (let ((__tmp282809
                            (let ((__tmp282810
                                   (let ((__tmp282811
                                          (##structure-ref
                                           _self276504_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282811 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282810)))
                           (__tmp282804
                            (let ((__tmp282807
                                   (let ((__tmp282808
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276560_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282808)))
                                  (__tmp282805
                                   (let ((__tmp282806
                                          (let ()
                                            (declare (not safe))
                                            (cons _value276564_ '()))))
                                     (declare (not safe))
                                     (cons _object276562_ __tmp282806))))
                              (declare (not safe))
                              (cons __tmp282807 __tmp282805))))
                       (declare (not safe))
                       (cons __tmp282809 __tmp282804))))
                (declare (not safe))
                (cons __tmp282812 __tmp282803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282802
                                                  _stx276505_))
                                               (if (##structure-ref
                                                    _klass276558_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282791
                                                          (let ((__tmp282801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self276504_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282792
                         (let ((__tmp282798
                                (let ((__tmp282799
                                       (let ((__tmp282800
                                              (##structure-ref
                                               _self276504_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282800 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282799)))
                               (__tmp282793
                                (let ((__tmp282796
                                       (let ((__tmp282797
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276560_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282797)))
                                      (__tmp282794
                                       (let ((__tmp282795
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276564_ '()))))
                                         (declare (not safe))
                                         (cons _object276562_ __tmp282795))))
                                  (declare (not safe))
                                  (cons __tmp282796 __tmp282794))))
                           (declare (not safe))
                           (cons __tmp282798 __tmp282793))))
                    (declare (not safe))
                    (cons __tmp282801 __tmp282792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282791
                                                      _stx276505_))
                                                   (let ((_$e276567_
                                                          (let ((__tmp282721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self276504_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass276558_ __tmp282721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e276567_
                                                         ((lambda (_klass276570_)
                                                            (let ((__tmp282780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282790
                                  (if (##structure-ref
                                       _self276504_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp282781
                                  (let ((__tmp282787
                                         (let ((__tmp282788
                                                (let ((__tmp282789
                                                       (##structure-ref
                                                        _self276504_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp282789 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282788)))
                                        (__tmp282782
                                         (let ((__tmp282785
                                                (let ((__tmp282786
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276560_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282786)))
                                               (__tmp282783
                                                (let ((__tmp282784
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value276564_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object276562_
                                                        __tmp282784))))
                                           (declare (not safe))
                                           (cons __tmp282785 __tmp282783))))
                                    (declare (not safe))
                                    (cons __tmp282787 __tmp282782))))
                             (declare (not safe))
                             (cons __tmp282790 __tmp282781))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp282780 _stx276505_)))
                  _$e276567_)
                 (if (##structure-ref _self276504_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp282732
                            (let* ((_$obj276572_
                                    (let ((__tmp282733 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp282733)))
                                   (__tmp282734
                                    (let ((__tmp282776
                                           (let ((__tmp282777
                                                  (let ((__tmp282779
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj276572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp282778
                 (let () (declare (not safe)) (cons _object276562_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282779
                                                          __tmp282778))))
                                             (declare (not safe))
                                             (cons __tmp282777 '())))
                                          (__tmp282735
                                           (let ((__tmp282736
                                                  (let ((__tmp282737
                                                         (let ((__tmp282768
                                                                (let ((__tmp282769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282773
                                      (let ((__tmp282774
                                             (let ((__tmp282775
                                                    (##structure-ref
                                                     _klass276558_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp282775 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282774)))
                                     (__tmp282770
                                      (let ((__tmp282771
                                             (let ((__tmp282772
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276572_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282772))))
                                        (declare (not safe))
                                        (cons __tmp282771 '()))))
                                 (declare (not safe))
                                 (cons __tmp282773 __tmp282770))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp282769)))
                       (__tmp282738
                        (let ((__tmp282756
                               (let ((__tmp282757
                                      (let ((__tmp282765
                                             (let ((__tmp282766
                                                    (let ((__tmp282767
                                                           (##structure-ref
                                                            _self276504_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp282767 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282766)))
                                            (__tmp282758
                                             (let ((__tmp282763
                                                    (let ((__tmp282764
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282764)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282759
                                                    (let ((__tmp282761
                                                           (let ((__tmp282762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj276572_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282762)))
                  (__tmp282760
                   (let () (declare (not safe)) (cons _value276564_ '()))))
              (declare (not safe))
              (cons __tmp282761 __tmp282760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282763
                                                     __tmp282759))))
                                        (declare (not safe))
                                        (cons __tmp282765 __tmp282758))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp282757)))
                              (__tmp282739
                               (let ((__tmp282740
                                      (let ((__tmp282741
                                             (let ((__tmp282754
                                                    (let ((__tmp282755
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282755)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282742
                                                    (let ((__tmp282751
                                                           (let ((__tmp282752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp282753
                                 (##structure-ref
                                  _self276504_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp282753 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282752)))
                  (__tmp282743
                   (let ((__tmp282749
                          (let ((__tmp282750
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj276572_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp282750)))
                         (__tmp282744
                          (let ((__tmp282746
                                 (let ((__tmp282747
                                        (let ((__tmp282748
                                               (##structure-ref
                                                _self276504_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282748 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp282747)))
                                (__tmp282745
                                 (let ()
                                   (declare (not safe))
                                   (cons _value276564_ '()))))
                            (declare (not safe))
                            (cons __tmp282746 __tmp282745))))
                     (declare (not safe))
                     (cons __tmp282749 __tmp282744))))
              (declare (not safe))
              (cons __tmp282751 __tmp282743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282754
                                                     __tmp282742))))
                                        (declare (not safe))
                                        (cons '%#call __tmp282741))))
                                 (declare (not safe))
                                 (cons __tmp282740 '()))))
                          (declare (not safe))
                          (cons __tmp282756 __tmp282739))))
                   (declare (not safe))
                   (cons __tmp282768 __tmp282738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp282737))))
                                             (declare (not safe))
                                             (cons __tmp282736 '()))))
                                      (declare (not safe))
                                      (cons __tmp282776 __tmp282735))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282734))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282732 _stx276505_))
                     (let ((__tmp282722
                            (let ((__tmp282723
                                   (let ((__tmp282730
                                          (let ((__tmp282731
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp282731)))
                                         (__tmp282724
                                          (let ((__tmp282725
                                                 (let ((__tmp282727
                                                        (let ((__tmp282728
                                                               (let ((__tmp282729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self276504_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp282729 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282728)))
               (__tmp282726
                (let () (declare (not safe)) (cons _value276564_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282727
                                                         __tmp282726))))
                                            (declare (not safe))
                                            (cons _object276562_
                                                  __tmp282725))))
                                     (declare (not safe))
                                     (cons __tmp282730 __tmp282724))))
                              (declare (not safe))
                              (cons '%#call __tmp282723))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282722 _stx276505_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd276516276538_
                                       _hd276513276530_)
                                      (let ()
                                        (declare (not safe))
                                        (_g276508276522_ _g276509276525_)))))
                              (let ()
                                (declare (not safe))
                                (_g276508276522_ _g276509276525_)))))
                      (let ()
                        (declare (not safe))
                        (_g276508276522_ _g276509276525_))))))
          (declare (not safe))
          (_g276507276574_ _args276506_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t281936)
        (let ((__checked?281937
               (let ((__tmp281940
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281936 'checked?))))
                 (if __tmp281940
                     __tmp281940
                     (error '"Unknown slot" 'checked?))))
              (__id281938
               (let ((__tmp281941
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281936 'id))))
                 (if __tmp281941 __tmp281941 (error '"Unknown slot" 'id))))
              (__slot281939
               (let ((__tmp281942
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281936 'slot))))
                 (if __tmp281942 __tmp281942 (error '"Unknown slot" 'slot)))))
          (lambda (_self276504_ _stx276505_ _args276506_)
            (let* ((_g276508276522_
                    (lambda (_g276509276519_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276509276519_))))
                   (_g276507276574_
                    (lambda (_g276509276525_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276509276525_))
                          (let ((_e276514276527_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276509276525_))))
                            (let ((_hd276513276530_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276514276527_)))
                                  (_tl276512276532_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276514276527_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276512276532_))
                                  (let ((_e276517276535_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276512276532_))))
                                    (let ((_hd276516276538_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276517276535_)))
                                          (_tl276515276540_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276517276535_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276515276540_))
                                          ((lambda (_L276543_ _L276544_)
                                             (let* ((_klass276558_
                                                     (let ((__tmp282813
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276504_
                                                               __id281938
                                                               __t281936
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx276505_
                                                        __tmp282813)))
                                                    (_field276560_
                                                     (let ((__tmp282814
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276504_
                                                               __slot281939
                                                               __t281936
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass276558_
                                                        __tmp282814)))
                                                    (_object276562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276544_)))
                                                    (_value276564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276543_))))
                                               (if (##structure-ref
                                                    _klass276558_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282896
                                                          (let ((__tmp282906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276504_
                                __checked?281937
                                __t281936
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282897
                         (let ((__tmp282903
                                (let ((__tmp282904
                                       (let ((__tmp282905
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self276504_
                                                 __id281938
                                                 __t281936
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp282905 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282904)))
                               (__tmp282898
                                (let ((__tmp282901
                                       (let ((__tmp282902
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276560_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282902)))
                                      (__tmp282899
                                       (let ((__tmp282900
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276564_ '()))))
                                         (declare (not safe))
                                         (cons _object276562_ __tmp282900))))
                                  (declare (not safe))
                                  (cons __tmp282901 __tmp282899))))
                           (declare (not safe))
                           (cons __tmp282903 __tmp282898))))
                    (declare (not safe))
                    (cons __tmp282906 __tmp282897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282896
                                                      _stx276505_))
                                                   (if (##structure-ref
                                                        _klass276558_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp282885
                                                              (let ((__tmp282895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self276504_
                                    __checked?281937
                                    __t281936
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp282886
                             (let ((__tmp282892
                                    (let ((__tmp282893
                                           (let ((__tmp282894
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276504_
                                                     __id281938
                                                     __t281936
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282894 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282893)))
                                   (__tmp282887
                                    (let ((__tmp282890
                                           (let ((__tmp282891
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field276560_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282891)))
                                          (__tmp282888
                                           (let ((__tmp282889
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value276564_ '()))))
                                             (declare (not safe))
                                             (cons _object276562_
                                                   __tmp282889))))
                                      (declare (not safe))
                                      (cons __tmp282890 __tmp282888))))
                               (declare (not safe))
                               (cons __tmp282892 __tmp282887))))
                        (declare (not safe))
                        (cons __tmp282895 __tmp282886))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp282885 _stx276505_))
               (let ((_$e276567_
                      (let ((__tmp282815
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276504_
                                __slot281939
                                __t281936
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass276558_
                         __tmp282815))))
                 (if _$e276567_
                     ((lambda (_klass276570_)
                        (let ((__tmp282874
                               (let ((__tmp282884
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276504_
                                             __checked?281937
                                             __t281936
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp282875
                                      (let ((__tmp282881
                                             (let ((__tmp282882
                                                    (let ((__tmp282883
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self276504_
                                                              __id281938
                                                              __t281936
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp282883 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282882)))
                                            (__tmp282876
                                             (let ((__tmp282879
                                                    (let ((__tmp282880
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282880)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282877
                                                    (let ((__tmp282878
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value276564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object276562_ __tmp282878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282879
                                                     __tmp282877))))
                                        (declare (not safe))
                                        (cons __tmp282881 __tmp282876))))
                                 (declare (not safe))
                                 (cons __tmp282884 __tmp282875))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282874 _stx276505_)))
                      _$e276567_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276504_
                            __checked?281937
                            __t281936
                            '#f))
                         (let ((__tmp282826
                                (let* ((_$obj276572_
                                        (let ((__tmp282827 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp282827)))
                                       (__tmp282828
                                        (let ((__tmp282870
                                               (let ((__tmp282871
                                                      (let ((__tmp282873
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj276572_ '())))
                    (__tmp282872
                     (let () (declare (not safe)) (cons _object276562_ '()))))
                (declare (not safe))
                (cons __tmp282873 __tmp282872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282871 '())))
                                              (__tmp282829
                                               (let ((__tmp282830
                                                      (let ((__tmp282831
                                                             (let ((__tmp282862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282863
                                   (let ((__tmp282867
                                          (let ((__tmp282868
                                                 (let ((__tmp282869
                                                        (##structure-ref
                                                         _klass276558_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp282869 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp282868)))
                                         (__tmp282864
                                          (let ((__tmp282865
                                                 (let ((__tmp282866
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276572_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282866))))
                                            (declare (not safe))
                                            (cons __tmp282865 '()))))
                                     (declare (not safe))
                                     (cons __tmp282867 __tmp282864))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp282863)))
                           (__tmp282832
                            (let ((__tmp282850
                                   (let ((__tmp282851
                                          (let ((__tmp282859
                                                 (let ((__tmp282860
                                                        (let ((__tmp282861
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self276504_
                          __id281938
                          __t281936
                          '#f))))
                  (declare (not safe))
                  (cons __tmp282861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282860)))
                                                (__tmp282852
                                                 (let ((__tmp282857
                                                        (let ((__tmp282858
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field276560_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282858)))
               (__tmp282853
                (let ((__tmp282855
                       (let ((__tmp282856
                              (let ()
                                (declare (not safe))
                                (cons _$obj276572_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282856)))
                      (__tmp282854
                       (let () (declare (not safe)) (cons _value276564_ '()))))
                  (declare (not safe))
                  (cons __tmp282855 __tmp282854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282857
                                                         __tmp282853))))
                                            (declare (not safe))
                                            (cons __tmp282859 __tmp282852))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp282851)))
                                  (__tmp282833
                                   (let ((__tmp282834
                                          (let ((__tmp282835
                                                 (let ((__tmp282848
                                                        (let ((__tmp282849
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282849)))
               (__tmp282836
                (let ((__tmp282845
                       (let ((__tmp282846
                              (let ((__tmp282847
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self276504_
                                        __id281938
                                        __t281936
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp282847 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282846)))
                      (__tmp282837
                       (let ((__tmp282843
                              (let ((__tmp282844
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276572_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282844)))
                             (__tmp282838
                              (let ((__tmp282840
                                     (let ((__tmp282841
                                            (let ((__tmp282842
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276504_
                                                      __slot281939
                                                      __t281936
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282842 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282841)))
                                    (__tmp282839
                                     (let ()
                                       (declare (not safe))
                                       (cons _value276564_ '()))))
                                (declare (not safe))
                                (cons __tmp282840 __tmp282839))))
                         (declare (not safe))
                         (cons __tmp282843 __tmp282838))))
                  (declare (not safe))
                  (cons __tmp282845 __tmp282837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282848
                                                         __tmp282836))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282835))))
                                     (declare (not safe))
                                     (cons __tmp282834 '()))))
                              (declare (not safe))
                              (cons __tmp282850 __tmp282833))))
                       (declare (not safe))
                       (cons __tmp282862 __tmp282832))))
                (declare (not safe))
                (cons '%#if __tmp282831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282830 '()))))
                                          (declare (not safe))
                                          (cons __tmp282870 __tmp282829))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282828))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282826 _stx276505_))
                         (let ((__tmp282816
                                (let ((__tmp282817
                                       (let ((__tmp282824
                                              (let ((__tmp282825
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp282825)))
                                             (__tmp282818
                                              (let ((__tmp282819
                                                     (let ((__tmp282821
                                                            (let ((__tmp282822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282823
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276504_
                                     __slot281939
                                     __t281936
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp282823 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282822)))
                   (__tmp282820
                    (let () (declare (not safe)) (cons _value276564_ '()))))
               (declare (not safe))
               (cons __tmp282821 __tmp282820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object276562_
                                                      __tmp282819))))
                                         (declare (not safe))
                                         (cons __tmp282824 __tmp282818))))
                                  (declare (not safe))
                                  (cons '%#call __tmp282817))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp282816
                            _stx276505_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd276516276538_
                                           _hd276513276530_)
                                          (let ()
                                            (declare (not safe))
                                            (_g276508276522_
                                             _g276509276525_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276508276522_ _g276509276525_)))))
                          (let ()
                            (declare (not safe))
                            (_g276508276522_ _g276509276525_))))))
              (declare (not safe))
              (_g276507276574_ _args276506_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self276338_ _stx276339_ _args276340_)
        (let* ((_self276341276350_ _self276338_)
               (_E276343276354_
                (lambda () (error '"No clause matching" _self276341276350_)))
               (_K276344276361_
                (lambda (_inline276357_ _dispatch276358_ _arity276359_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self276338_ _args276340_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx276339_
                         _arity276359_)))
                  (if _inline276357_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp282912
                               (let ((__tmp282913
                                      (_inline276357_ _stx276339_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp282913
                                  _stx276339_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp282912)))
                      (if _dispatch276358_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch276358_))
                            (let ((__tmp282907
                                   (let ((__tmp282908
                                          (let ((__tmp282909
                                                 (let ((__tmp282910
                                                        (let ((__tmp282911
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch276358_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282910
                                                         _args276340_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282909))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282908
                                      _stx276339_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp282907)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx276339_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276341276350_ 'gxc#!lambda::t))
              (let* ((_e276345276364_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276341276350_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276346276367_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276341276350_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276370_ _e276346276367_)
                     (_e276347276372_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276341276350_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch276375_ _e276347276372_)
                     (_e276348276377_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276341276350_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline276380_ _e276348276377_))
                (declare (not safe))
                (_K276344276361_
                 _inline276380_
                 _dispatch276375_
                 _arity276370_))
              (let () (declare (not safe)) (_E276343276354_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self276177_ _stx276178_ _args276179_)
        (let* ((_self276180276187_ _self276177_)
               (_E276182276191_
                (lambda () (error '"No clause matching" _self276180276187_)))
               (_K276183276205_
                (lambda (_clauses276194_)
                  (let ((_$e276200_
                         (let ((__tmp282914
                                (lambda (_g276195276197_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g276195276197_
                                     _args276179_)))))
                           (declare (not safe))
                           (find __tmp282914 _clauses276194_))))
                    (if _$e276200_
                        ((lambda (_clause276203_)
                           (let ((__method282211
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause276203_
                                     'optimize-call))))
                             (if __method282211
                                 (__method282211
                                  _clause276203_
                                  _stx276178_
                                  _args276179_)
                                 (error '"Missing method"
                                        _clause276203_
                                        'optimize-call))))
                         _$e276200_)
                        (let ((__tmp282915
                               (map gxc#!lambda-arity _clauses276194_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx276178_
                           __tmp282915)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self276180276187_
                 'gxc#!case-lambda::t))
              (let* ((_e276184276208_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276180276187_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276185276211_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276180276187_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses276214_ _e276185276211_))
                (declare (not safe))
                (_K276183276205_ _clauses276214_))
              (let () (declare (not safe)) (_E276182276191_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self275991_ _args275992_)
        (let* ((_self275993276000_ _self275991_)
               (_E275995276004_
                (lambda () (error '"No clause matching" _self275993276000_)))
               (_K275996276044_
                (lambda (_arity276007_)
                  (let* ((_arity276008276017_ _arity276007_)
                         (_E276011276021_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity276008276017_))))
                    (let ((_K276015276041_
                           (lambda ()
                             (fx= (length _args275992_) _arity276007_)))
                          (_K276012276027_
                           (lambda (_arity276025_)
                             (fx>= (length _args275992_) _arity276025_))))
                      (let ((_try-match276010276037_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity276008276017_))
                                   (let ((_tl276014276032_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity276008276017_)))
                                         (_hd276013276030_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity276008276017_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl276014276032_))
                                         (let ((_arity276035_
                                                _hd276013276030_))
                                           (declare (not safe))
                                           (_K276012276027_ _arity276035_))
                                         (let ()
                                           (declare (not safe))
                                           (_E276011276021_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E276011276021_))))))
                        (if (fixnum? _arity276008276017_)
                            (let () (declare (not safe)) (_K276015276041_))
                            (let ()
                              (declare (not safe))
                              (_try-match276010276037_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275993276000_ 'gxc#!lambda::t))
              (let* ((_e275997276047_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275993276000_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275998276050_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275993276000_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276053_ _e275998276050_))
                (declare (not safe))
                (_K275996276044_ _arity276053_))
              (let () (declare (not safe)) (_E275995276004_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self275876_ _stx275877_ _args275878_)
        (let* ((_self275879275887_ _self275876_)
               (_E275881275891_
                (lambda () (error '"No clause matching" _self275879275887_)))
               (_K275882275975_
                (lambda (_dispatch275894_ _table275895_)
                  (let* ((_g275896275905_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch275894_)))
                         (_else275898275913_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch275894_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx275877_))))
                         (_K275900275959_
                          (lambda (_main275916_ _keys275917_)
                            (let ((_g282916_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx275877_
                                      _args275878_))))
                              (begin
                                (let ((_g282917_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g282916_)
                                             (##vector-length _g282916_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g282917_ 2)))
                                      (error "Context expects 2 values"
                                             _g282917_)))
                                (let ((_pargs275919_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282916_ 0)))
                                      (_kwargs275920_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282916_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main275916_))
                                    (if _table275895_
                                        (let ((_xargs275927_
                                               (map (lambda (_key275922_)
                                                      (let ((_$e275924_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key275922_ _kwargs275920_))))
                (if _$e275924_ (values _$e275924_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys275917_)))
                                          (for-each
                                           (lambda (_kw275929_)
                                             (if (memq (car _kw275929_)
                                                       _keys275917_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx275877_
                                                    _keys275917_
                                                    _kw275929_))))
                                           _kwargs275920_)
                                          (let ((__tmp282969
                                                 (let ((__tmp282970
                                                        (let ((__tmp282971
                                                               (let ((__tmp282976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282977
                                     (let ()
                                       (declare (not safe))
                                       (cons _main275916_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282977)))
                             (__tmp282972
                              (let ((__tmp282974
                                     (let ((__tmp282975
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282975)))
                                    (__tmp282973
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs275919_
                                               _xargs275927_))))
                                (declare (not safe))
                                (cons __tmp282974 __tmp282973))))
                         (declare (not safe))
                         (cons __tmp282976 __tmp282972))))
                  (declare (not safe))
                  (cons '%#call __tmp282971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282970
                                                    _stx275877_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp282969)))
                                        (let* ((_kwt275931_
                                                (let ((__tmp282918
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp282918)))
                                               (_kwvars275934_
                                                (map (lambda (_g282919_)
                                                       (let ((__tmp282920
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp282920)))
                                                     _kwargs275920_))
                                               (_kwbind275939_
                                                (map (lambda (_kw275936_
                                                              _kwvar275937_)
                                                       (let ((__tmp282923
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar275937_ '())))
                     (__tmp282921
                      (let ((__tmp282922 (cdr _kw275936_)))
                        (declare (not safe))
                        (cons __tmp282922 '()))))
                 (declare (not safe))
                 (cons __tmp282923 __tmp282921)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275920_
                                                     _kwvars275934_))
                                               (_kwset275944_
                                                (map (lambda (_kw275941_
                                                              _kwvar275942_)
                                                       (let ((__tmp282924
                                                              (let ((__tmp282925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp282933
                                    (let ((__tmp282934
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt275931_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282934)))
                                   (__tmp282926
                                    (let ((__tmp282930
                                           (let ((__tmp282931
                                                  (let ((__tmp282932
                                                         (car _kw275941_)))
                                                    (declare (not safe))
                                                    (cons __tmp282932 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282931)))
                                          (__tmp282927
                                           (let ((__tmp282928
                                                  (let ((__tmp282929
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar275942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp282929))))
                                             (declare (not safe))
                                             (cons __tmp282928 '()))))
                                      (declare (not safe))
                                      (cons __tmp282930 __tmp282927))))
                               (declare (not safe))
                               (cons __tmp282933 __tmp282926))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp282925))))
                 (declare (not safe))
                 (cons '%#call __tmp282924)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275920_
                                                     _kwvars275934_))
                                               (_xkwargs275949_
                                                (map (lambda (_kw275946_
                                                              _kwvar275947_)
                                                       (let ((__tmp282937
                                                              (car _kw275946_))
                                                             (__tmp282935
                                                              (let ((__tmp282936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar275947_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282936))))
                 (declare (not safe))
                 (cons __tmp282937 __tmp282935)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275920_
                                                     _kwvars275934_))
                                               (_xargs275956_
                                                (map (lambda (_key275951_)
                                                       (let ((_$e275953_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key275951_ _xkwargs275949_))))
                 (if _$e275953_ (values _$e275953_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys275917_)))
                                          (let ((__tmp282938
                                                 (let ((__tmp282939
                                                        (let ((__tmp282940
                                                               (let ((__tmp282941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282942
                                     (let ((__tmp282943
                                            (let ((__tmp282957
                                                   (let ((__tmp282958
                                                          (let ((__tmp282968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt275931_ '())))
                        (__tmp282959
                         (let ((__tmp282960
                                (let ((__tmp282961
                                       (let ((__tmp282962
                                              (let ((__tmp282963
                                                     (let ((__tmp282964
                                                            (let ((__tmp282965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282966
                                  (let ((__tmp282967 (length _kwargs275920_)))
                                    (declare (not safe))
                                    (cons __tmp282967 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282966))))
                      (declare (not safe))
                      (cons __tmp282965 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp282964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp282963))))
                                         (declare (not safe))
                                         (cons '%#call __tmp282962))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp282961
                                   _stx275877_))))
                           (declare (not safe))
                           (cons __tmp282960 '()))))
                    (declare (not safe))
                    (cons __tmp282968 __tmp282959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282958 '())))
                                                  (__tmp282944
                                                   (let ((__tmp282945
                                                          (let ((__tmp282946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp282947
                                (let ((__tmp282948
                                       (let ((__tmp282949
                                              (let ((__tmp282950
                                                     (let ((__tmp282955
                                                            (let ((__tmp282956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main275916_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282956)))
                   (__tmp282951
                    (let ((__tmp282953
                           (let ((__tmp282954
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt275931_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282954)))
                          (__tmp282952
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs275919_ _xargs275956_))))
                      (declare (not safe))
                      (cons __tmp282953 __tmp282952))))
               (declare (not safe))
               (cons __tmp282955 __tmp282951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp282950))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282949
                                          _stx275877_))))
                                  (declare (not safe))
                                  (cons __tmp282948 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp282947 _kwset275944_))))
                    (declare (not safe))
                    (cons '%#begin __tmp282946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282945 '()))))
                                              (declare (not safe))
                                              (cons __tmp282957 __tmp282944))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp282943))))
                                (declare (not safe))
                                (cons __tmp282942 '()))))
                         (declare (not safe))
                         (cons _kwbind275939_ __tmp282941))))
                  (declare (not safe))
                  (cons '%#let-values __tmp282940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282939
                                                    _stx275877_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp282938)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g275896275905_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e275901275962_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275896275905_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e275902275965_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275896275905_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys275968_ _e275902275965_)
                               (_e275903275970_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275896275905_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main275973_ _e275903275970_))
                          (declare (not safe))
                          (_K275900275959_ _main275973_ _keys275968_))
                        (let () (declare (not safe)) (_else275898275913_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275879275887_
                 'gxc#!kw-lambda::t))
              (let* ((_e275883275978_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275879275887_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275884275981_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275879275887_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table275984_ _e275884275981_)
                     (_e275885275986_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275879275887_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch275989_ _e275885275986_))
                (declare (not safe))
                (_K275882275975_ _dispatch275989_ _table275984_))
              (let () (declare (not safe)) (_E275881275891_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx275489_ _args275490_)
        (let _lp275492_ ((_rest275494_ _args275490_)
                         (_pargs275495_ '())
                         (_kwargs275496_ '()))
          (let* ((___stx282093282094_ _rest275494_)
                 (_g275502275554_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx282093282094_)))))
            (let ((___kont282095282096_
                   (lambda (_L275733_ _L275734_)
                     (let ((__tmp282978
                            (let ()
                              (declare (not safe))
                              (cons _L275734_ _pargs275495_))))
                       (declare (not safe))
                       (_lp275492_ _L275733_ __tmp282978 _kwargs275496_))))
                  (___kont282097282098_
                   (lambda (_L275679_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L275679_ _pargs275495_))
                             (reverse _kwargs275496_))))
                  (___kont282099282100_
                   (lambda (_L275626_ _L275627_ _L275628_)
                     (let ((_kw275645_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L275628_))))
                       (if (assq _kw275645_ _kwargs275496_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx275489_
                              _kw275645_))
                           (let ((__tmp282979
                                  (let ((__tmp282980
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw275645_ _L275627_))))
                                    (declare (not safe))
                                    (cons __tmp282980 _kwargs275496_))))
                             (declare (not safe))
                             (_lp275492_
                              _L275626_
                              _pargs275495_
                              __tmp282979))))))
                  (___kont282101282102_
                   (lambda (_L275574_ _L275575_)
                     (let ((__tmp282981
                            (let ()
                              (declare (not safe))
                              (cons _L275575_ _pargs275495_))))
                       (declare (not safe))
                       (_lp275492_ _L275574_ __tmp282981 _kwargs275496_))))
                  (___kont282103282104_
                   (lambda ()
                     (values (reverse _pargs275495_)
                             (reverse _kwargs275496_)))))
              (let* ((_g275501275561_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx282093282094_))
                            (___kont282103282104_)
                            (let () (declare (not safe)) (_g275502275554_)))))
                     (___match282200282201_
                      (lambda (_e275535275594_
                               _hd275534275597_
                               _tl275533275599_
                               _e275538275602_
                               _hd275537275605_
                               _tl275536275607_
                               _e275541275610_
                               _hd275540275613_
                               _tl275539275615_
                               _e275544275618_
                               _hd275543275621_
                               _tl275542275623_)
                        (let ((_L275626_ _tl275542275623_)
                              (_L275627_ _hd275543275621_)
                              (_L275628_ _hd275540275613_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L275628_))
                              (___kont282099282100_
                               _L275626_
                               _L275627_
                               _L275628_)
                              (___kont282101282102_
                               _tl275533275599_
                               _hd275534275597_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx282093282094_))
                    (let ((_e275508275698_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx282093282094_))))
                      (let ((_tl275506275703_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275508275698_)))
                            (_hd275507275701_
                             (let ()
                               (declare (not safe))
                               (##car _e275508275698_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd275507275701_))
                            (let ((_e275511275706_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd275507275701_))))
                              (let ((_tl275509275711_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e275511275706_)))
                                    (_hd275510275709_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e275511275706_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd275510275709_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd275510275709_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl275509275711_))
                                            (let ((_e275514275714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl275509275711_))))
                                              (let ((_tl275512275719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e275514275714_)))
                                                    (_hd275513275717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e275514275714_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd275513275717_))
                                                    (let ((_e275515275722_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd275513275717_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e275515275722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl275512275719_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl275506275703_))
                          (let ((_e275518275725_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl275506275703_))))
                            (let ((_tl275516275730_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e275518275725_)))
                                  (_hd275517275728_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e275518275725_))))
                              (___kont282095282096_
                               _tl275516275730_
                               _hd275517275728_)))
                          (___kont282101282102_
                           _tl275506275703_
                           _hd275507275701_))
                      (___kont282101282102_ _tl275506275703_ _hd275507275701_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e275515275722_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275512275719_))
                          (___kont282097282098_ _tl275506275703_)
                          (___kont282101282102_
                           _tl275506275703_
                           _hd275507275701_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275512275719_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl275506275703_))
                              (let ((_e275544275618_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl275506275703_))))
                                (let ((_tl275542275623_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e275544275618_)))
                                      (_hd275543275621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e275544275618_))))
                                  (___match282200282201_
                                   _e275508275698_
                                   _hd275507275701_
                                   _tl275506275703_
                                   _e275511275706_
                                   _hd275510275709_
                                   _tl275509275711_
                                   _e275514275714_
                                   _hd275513275717_
                                   _tl275512275719_
                                   _e275544275618_
                                   _hd275543275621_
                                   _tl275542275623_)))
                              (___kont282101282102_
                               _tl275506275703_
                               _hd275507275701_))
                          (___kont282101282102_
                           _tl275506275703_
                           _hd275507275701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl275512275719_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl275506275703_))
                                                            (let ((_e275544275618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl275506275703_))))
                      (let ((_tl275542275623_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275544275618_)))
                            (_hd275543275621_
                             (let ()
                               (declare (not safe))
                               (##car _e275544275618_))))
                        (___match282200282201_
                         _e275508275698_
                         _hd275507275701_
                         _tl275506275703_
                         _e275511275706_
                         _hd275510275709_
                         _tl275509275711_
                         _e275514275714_
                         _hd275513275717_
                         _tl275512275719_
                         _e275544275618_
                         _hd275543275621_
                         _tl275542275623_)))
                    (___kont282101282102_ _tl275506275703_ _hd275507275701_))
                (___kont282101282102_ _tl275506275703_ _hd275507275701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont282101282102_
                                             _tl275506275703_
                                             _hd275507275701_))
                                        (___kont282101282102_
                                         _tl275506275703_
                                         _hd275507275701_))
                                    (___kont282101282102_
                                     _tl275506275703_
                                     _hd275507275701_))))
                            (___kont282101282102_
                             _tl275506275703_
                             _hd275507275701_))))
                    (let () (declare (not safe)) (_g275501275561_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self275485_ _stx275486_ _args275487_)
        (let () (declare (not safe)) (gxc#xform-call% _stx275486_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
