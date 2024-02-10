(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707555989)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj278131 (make-object gxc#optimizer-info::t '4)))
               (gxc#optimizer-info:::init! __obj278131)
               __obj278131)))))
    (define gxc#optimize!
      (lambda (_ctx273630_)
        (let ((__tmp278135
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx273630_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp278137
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp278136
                        (##structure-ref
                         _ctx273630_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp278137 __tmp278136 '#t))
                 (let ((_code273633_
                        (let ((__tmp278138
                               (##structure-ref
                                _ctx273630_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp278138))))
                   (##structure-set!
                    _ctx273630_
                    _code273633_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp278134
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp278133
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp278135
           gxc#current-compile-mutators
           __tmp278134
           gxc#current-compile-local-type
           __tmp278133))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp278139
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp278139 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx273574_)
        (letrec* ((_deps273576_
                   (let* ((_imports273620_
                           (##structure-ref
                            _ctx273574_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e273622_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx273574_))))
                     (if _$e273622_
                         ((lambda (_g273624273626_)
                            (let ()
                              (declare (not safe))
                              (cons _g273624273626_ _imports273620_)))
                          _$e273622_)
                         _imports273620_))))
          (let _lp273578_ ((_rest273580_ _deps273576_))
            (let* ((_rest273581273589_ _rest273580_)
                   (_else273583273597_ (lambda () '#!void))
                   (_K273585273608_
                    (lambda (_rest273600_ _hd273601_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd273601_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp278153
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp278152
                                       (##structure-ref
                                        _hd273601_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp278153 __tmp278152 '#f))
                                '#!void
                                (begin
                                  (let ((_$e273603_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd273601_))))
                                    (if _$e273603_
                                        ((lambda (_pre273606_)
                                           (let ((__tmp278150
                                                  (let ((__tmp278151
                                                         (##structure-ref
                                                          _hd273601_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre273606_
                                                          __tmp278151))))
                                             (declare (not safe))
                                             (_lp273578_ __tmp278150)))
                                         _$e273603_)
                                        (let ((__tmp278149
                                               (##structure-ref
                                                _hd273601_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp273578_ __tmp278149))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd273601_))))
                            (let ()
                              (declare (not safe))
                              (_lp273578_ _rest273600_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd273601_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp278148
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp278147
                                           (##structure-ref
                                            _hd273601_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp278148 __tmp278147 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp278146
                                             (##structure-ref
                                              _hd273601_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp273578_ __tmp278146))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd273601_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp273578_ _rest273600_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd273601_
                                     'gx#module-import::t))
                                  (let ((__tmp278144
                                         (let ((__tmp278145
                                                (##direct-structure-ref
                                                 _hd273601_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp278145 _rest273600_))))
                                    (declare (not safe))
                                    (_lp273578_ __tmp278144))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd273601_
                                         'gx#module-export::t))
                                      (let ((__tmp278142
                                             (let ((__tmp278143
                                                    (##direct-structure-ref
                                                     _hd273601_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp278143
                                                     _rest273600_))))
                                        (declare (not safe))
                                        (_lp273578_ __tmp278142))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd273601_
                                             'gx#import-set::t))
                                          (let ((__tmp278140
                                                 (let ((__tmp278141
                                                        (##direct-structure-ref
                                                         _hd273601_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp278141
                                                         _rest273600_))))
                                            (declare (not safe))
                                            (_lp273578_ __tmp278140))
                                          (error '"Unexpected module import"
                                                 _hd273601_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest273581273589_))
                  (let ((_hd273586273611_
                         (let ()
                           (declare (not safe))
                           (##car _rest273581273589_)))
                        (_tl273587273613_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest273581273589_))))
                    (let* ((_hd273616_ _hd273586273611_)
                           (_rest273618_ _tl273587273613_))
                      (declare (not safe))
                      (_K273585273608_ _rest273618_ _hd273616_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx273554_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx273554_
                    'gx#module-context::t))
                 (let ((__tmp278154
                        (##structure-ref
                         _ctx273554_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp278154)))
            '#!void
            (let* ((_ht273556_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id273558_
                    (##structure-ref
                     _ctx273554_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod273560_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht273556_ _id273558_ '#f))))
              (let ((_$e273563_ _mod273560_))
                (if _$e273563_
                    _$e273563_
                    (let* ((_mod273566_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx273554_)))
                           (_val273571_
                            (let ((_$e273568_ _mod273566_))
                              (if _$e273568_ _$e273568_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht273556_ _id273558_ _val273571_))
                      _val273571_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx273552_)
        (if (##structure-ref _ctx273552_ '1 gx#expander-context::t '#f)
            (let ((__tmp278155
                   (##structure-ref
                    _ctx273552_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp278155))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id273529_)
        (letrec ((_catch-e273531_
                  (lambda (_exn273550_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id273529_))
                          (display-exception _exn273550_))
                        '#!void)
                    '#f))
                 (_import-e273532_
                  (lambda ()
                    (let* ((_str-id273535_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id273529_))
                             '".ssxi"))
                           (_artefact-path273543_
                            (let ((_odir273536273538_
                                   (gxc#current-compile-output-dir)))
                              (if _odir273536273538_
                                  (let ((_odir273541_ _odir273536273538_))
                                    (path-expand
                                     (string-append _str-id273535_ '".ss")
                                     _odir273541_))
                                  '#f)))
                           (_library-path273545_
                            (string->symbol
                             (string-append '":" _str-id273535_ '".ss")))
                           (_ssxi-path273547_
                            (if (and _artefact-path273543_
                                     (file-exists? _artefact-path273543_))
                                _artefact-path273543_
                                _library-path273545_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path273547_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path273547_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e273531_ _import-e273532_)))))
    (define gxc#optimize-source
      (lambda (_stx273520_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx273520_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx273520_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx273520_))
        (let* ((_stx273522_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx273520_)))
               (_stx273524_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx273522_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx273524_))
          (let ((_stx273527_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx273524_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx273527_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl273517_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp278156 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl273517_ __tmp278156))
           (let ()
             (declare (not safe))
             (table-set! _tbl273517_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl273517_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl273517_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl273517_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl273517_ '%#call gxc#generate-ssxi-call%))
           _tbl273517_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx273500_ . _args273502_)
        (let ((__tmp278158
               (lambda ()
                 (declare (not safe))
                 (if (null? _args273502_)
                     (gxc#compile-e__0 _stx273500_)
                     (let ((_arg1273507_ (car _args273502_))
                           (_rest273509_ (cdr _args273502_)))
                       (if (null? _rest273509_)
                           (gxc#compile-e__1 _stx273500_ _arg1273507_)
                           (let ((_arg2273512_ (car _rest273509_))
                                 (_rest273514_ (cdr _rest273509_)))
                             (if (null? _rest273514_)
                                 (gxc#compile-e__2
                                  _stx273500_
                                  _arg1273507_
                                  _arg2273512_)
                                 (apply gxc#compile-e
                                        _stx273500_
                                        _arg1273507_
                                        _arg2273512_
                                        _rest273514_))))))))
              (__tmp278157 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp278158
           gxc#current-compile-methods
           __tmp278157))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx273461_)
        (let* ((_g273463273473_
                (lambda (_g273464273470_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273464273470_))))
               (_g273462273497_
                (lambda (_g273464273476_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273464273476_))
                      (let ((_e273468273478_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273464273476_))))
                        (let ((_hd273467273481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273468273478_)))
                              (_tl273466273483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273468273478_))))
                          ((lambda (_L273486_)
                             (let ((__tmp278161
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx273461_))))
                                   (__tmp278159
                                    (let ((__tmp278160
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp278160 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp278161
                                gx#current-expander-phi
                                __tmp278159)))
                           _tl273466273483_)))
                      (let ()
                        (declare (not safe))
                        (_g273463273473_ _g273464273476_))))))
          (declare (not safe))
          (_g273462273497_ _stx273461_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx273401_)
        (let* ((_g273403273417_
                (lambda (_g273404273414_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273404273414_))))
               (_g273402273458_
                (lambda (_g273404273420_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273404273420_))
                      (let ((_e273409273422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273404273420_))))
                        (let ((_hd273408273425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273409273422_)))
                              (_tl273407273427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273409273422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273407273427_))
                              (let ((_e273412273430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273407273427_))))
                                (let ((_hd273411273433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273412273430_)))
                                      (_tl273410273435_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273412273430_))))
                                  ((lambda (_L273438_ _L273439_)
                                     (let* ((_ctx273452_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L273439_)))
                                            (_code273454_
                                             (##structure-ref
                                              _ctx273452_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp278162
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code273454_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp278162
                                          gx#current-expander-context
                                          _ctx273452_))))
                                   _tl273410273435_
                                   _hd273411273433_)))
                              (let ()
                                (declare (not safe))
                                (_g273403273417_ _g273404273420_)))))
                      (let ()
                        (declare (not safe))
                        (_g273403273417_ _g273404273420_))))))
          (declare (not safe))
          (_g273402273458_ _stx273401_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx273211_)
        (letrec ((_generate-e273213_
                  (lambda (_id273390_)
                    (let* ((_sym273392_
                            (if (let ((__tmp278163
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp278163))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id273390_))
                                '#f))
                           (_$e273394_
                            (if _sym273392_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym273392_))
                                '#f)))
                      (if _$e273394_
                          ((lambda (_type273397_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym273392_))
                             (let* ((_typedecl273399_
                                     (let ((__method278132
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type273397_
                                               'typedecl))))
                                       (if __method278132
                                           (__method278132 _type273397_)
                                           (error '"Missing method"
                                                  _type273397_
                                                  'typedecl))))
                                    (__tmp278164
                                     (let ((__tmp278165
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl273399_ '()))))
                                       (declare (not safe))
                                       (cons _sym273392_ __tmp278165))))
                               (declare (not safe))
                               (cons 'declare-type __tmp278164)))
                           _$e273394_)
                          '(begin))))))
          (let* ((___stx277830277831_ _stx273211_)
                 (_g273216273254_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx277830277831_)))))
            (let ((___kont277832277833_
                   (lambda (_L273372_)
                     (let ()
                       (declare (not safe))
                       (_generate-e273213_ _L273372_))))
                  (___kont277834277835_
                   (lambda (_L273307_)
                     (let ((_types273333_
                            (map _generate-e273213_
                                 (let ((__tmp278166
                                        (lambda (_g273325273328_
                                                 _g273326273330_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g273325273328_
                                                  _g273326273330_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp278166 '() _L273307_)))))
                       (declare (not safe))
                       (cons 'begin _types273333_)))))
              (let ((___match277885277886_
                     (lambda (_e273234273259_
                              _hd273233273262_
                              _tl273232273264_
                              _e273237273267_
                              _hd273236273270_
                              _tl273235273272_
                              ___splice277836277837_
                              _target273238273275_
                              _tl273240273277_)
                       (letrec ((_loop273241273280_
                                 (lambda (_hd273239273283_ _id273245273285_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd273239273283_))
                                       (let ((_e273242273288_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd273239273283_))))
                                         (let ((_lp-tl273244273293_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e273242273288_)))
                                               (_lp-hd273243273291_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e273242273288_))))
                                           (let ((__tmp278167
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd273243273291_
                                                          _id273245273285_))))
                                             (declare (not safe))
                                             (_loop273241273280_
                                              _lp-tl273244273293_
                                              __tmp278167))))
                                       (let ((_id273246273296_
                                              (reverse _id273245273285_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl273235273272_))
                                             (let ((_e273249273299_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl273235273272_))))
                                               (let ((_tl273247273304_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e273249273299_)))
                                                     (_hd273248273302_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e273249273299_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl273247273304_))
                                                     (___kont277834277835_
                                                      _id273246273296_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g273216273254_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g273216273254_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop273241273280_ _target273238273275_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx277830277831_))
                    (let ((_e273221273340_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx277830277831_))))
                      (let ((_tl273219273345_
                             (let ()
                               (declare (not safe))
                               (##cdr _e273221273340_)))
                            (_hd273220273343_
                             (let ()
                               (declare (not safe))
                               (##car _e273221273340_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl273219273345_))
                            (let ((_e273224273348_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl273219273345_))))
                              (let ((_tl273222273353_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e273224273348_)))
                                    (_hd273223273351_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e273224273348_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd273223273351_))
                                    (let ((_e273227273356_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd273223273351_))))
                                      (let ((_tl273225273361_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e273227273356_)))
                                            (_hd273226273359_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e273227273356_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl273225273361_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl273222273353_))
                                                (let ((_e273230273364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl273222273353_))))
                                                  (let ((_tl273228273369_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e273230273364_)))
                                                        (_hd273229273367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e273230273364_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273228273369_))
                                                        (___kont277832277833_
                                                         _hd273226273359_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd273223273351_))
                                                            (let ((___splice277836277837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd273223273351_ '0))))
                      (let ((_tl273240273277_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice277836277837_ '1)))
                            (_target273238273275_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice277836277837_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl273240273277_))
                            (___match277885277886_
                             _e273221273340_
                             _hd273220273343_
                             _tl273219273345_
                             _e273224273348_
                             _hd273223273351_
                             _tl273222273353_
                             ___splice277836277837_
                             _target273238273275_
                             _tl273240273277_)
                            (let () (declare (not safe)) (_g273216273254_)))))
                    (let () (declare (not safe)) (_g273216273254_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd273223273351_))
                                                    (let ((___splice277836277837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd273223273351_
                                                              '0))))
                                                      (let ((_tl273240273277_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice277836277837_ '1)))
                    (_target273238273275_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice277836277837_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl273240273277_))
                    (___match277885277886_
                     _e273221273340_
                     _hd273220273343_
                     _tl273219273345_
                     _e273224273348_
                     _hd273223273351_
                     _tl273222273353_
                     ___splice277836277837_
                     _target273238273275_
                     _tl273240273277_)
                    (let () (declare (not safe)) (_g273216273254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g273216273254_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd273223273351_))
                                                (let ((___splice277836277837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd273223273351_
                                                          '0))))
                                                  (let ((_tl273240273277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice277836277837_
                                                            '1)))
                                                        (_target273238273275_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice277836277837_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273240273277_))
                                                        (___match277885277886_
                                                         _e273221273340_
                                                         _hd273220273343_
                                                         _tl273219273345_
                                                         _e273224273348_
                                                         _hd273223273351_
                                                         _tl273222273353_
                                                         ___splice277836277837_
                                                         _target273238273275_
                                                         _tl273240273277_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g273216273254_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g273216273254_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd273223273351_))
                                        (let ((___splice277836277837_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd273223273351_
                                                  '0))))
                                          (let ((_tl273240273277_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice277836277837_
                                                    '1)))
                                                (_target273238273275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice277836277837_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl273240273277_))
                                                (___match277885277886_
                                                 _e273221273340_
                                                 _hd273220273343_
                                                 _tl273219273345_
                                                 _e273224273348_
                                                 _hd273223273351_
                                                 _tl273222273353_
                                                 ___splice277836277837_
                                                 _target273238273275_
                                                 _tl273240273277_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g273216273254_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g273216273254_))))))
                            (let () (declare (not safe)) (_g273216273254_)))))
                    (let () (declare (not safe)) (_g273216273254_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx272765_)
        (let* ((___stx277888277889_ _stx272765_)
               (_g272769272871_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx277888277889_)))))
          (let ((___kont277890277891_
                 (lambda (_L273161_ _L273162_ _L273163_ _L273164_ _L273165_)
                   (let ((__tmp278168
                          (let ((__tmp278175
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L273164_)))
                                (__tmp278169
                                 (let ((__tmp278174
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L273163_)))
                                       (__tmp278170
                                        (let ((__tmp278173
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L273162_)))
                                              (__tmp278171
                                               (let ((__tmp278172
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L273161_))))
                                                 (declare (not safe))
                                                 (cons __tmp278172 '()))))
                                          (declare (not safe))
                                          (cons __tmp278173 __tmp278171))))
                                   (declare (not safe))
                                   (cons __tmp278174 __tmp278170))))
                            (declare (not safe))
                            (cons __tmp278175 __tmp278169))))
                     (declare (not safe))
                     (cons 'declare-method __tmp278168))))
                (___kont277892277893_
                 (lambda (_L272987_ _L272988_ _L272989_ _L272990_)
                   (let ((__tmp278176
                          (let ((__tmp278182
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L272989_)))
                                (__tmp278177
                                 (let ((__tmp278181
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L272988_)))
                                       (__tmp278178
                                        (let ((__tmp278180
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L272987_)))
                                              (__tmp278179
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp278180 __tmp278179))))
                                   (declare (not safe))
                                   (cons __tmp278181 __tmp278178))))
                            (declare (not safe))
                            (cons __tmp278182 __tmp278177))))
                     (declare (not safe))
                     (cons 'declare-method __tmp278176))))
                (___kont277894277895_ (lambda () '(begin))))
            (let ((___match278023278024_
                   (lambda (_e272778273033_
                            _hd272777273036_
                            _tl272776273038_
                            _e272781273041_
                            _hd272780273044_
                            _tl272779273046_
                            _e272784273049_
                            _hd272783273052_
                            _tl272782273054_
                            _e272787273057_
                            _hd272786273060_
                            _tl272785273062_
                            _e272790273065_
                            _hd272789273068_
                            _tl272788273070_
                            _e272793273073_
                            _hd272792273076_
                            _tl272791273078_
                            _e272796273081_
                            _hd272795273084_
                            _tl272794273086_
                            _e272799273089_
                            _hd272798273092_
                            _tl272797273094_
                            _e272802273097_
                            _hd272801273100_
                            _tl272800273102_
                            _e272805273105_
                            _hd272804273108_
                            _tl272803273110_
                            _e272808273113_
                            _hd272807273116_
                            _tl272806273118_
                            _e272811273121_
                            _hd272810273124_
                            _tl272809273126_
                            _e272814273129_
                            _hd272813273132_
                            _tl272812273134_
                            _e272817273137_
                            _hd272816273140_
                            _tl272815273142_
                            _e272820273145_
                            _hd272819273148_
                            _tl272818273150_
                            _e272823273153_
                            _hd272822273156_
                            _tl272821273158_)
                     (let ((_L273161_ _hd272822273156_)
                           (_L273162_ _hd272813273132_)
                           (_L273163_ _hd272804273108_)
                           (_L273164_ _hd272795273084_)
                           (_L273165_ _hd272786273060_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L273165_
                              'bind-method!))
                           (___kont277890277891_
                            _L273161_
                            _L273162_
                            _L273163_
                            _L273164_
                            _L273165_)
                           (___kont277894277895_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx277888277889_))
                  (let ((_e272778273033_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx277888277889_))))
                    (let ((_tl272776273038_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272778273033_)))
                          (_hd272777273036_
                           (let ()
                             (declare (not safe))
                             (##car _e272778273033_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272776273038_))
                          (let ((_e272781273041_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272776273038_))))
                            (let ((_tl272779273046_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272781273041_)))
                                  (_hd272780273044_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272781273041_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd272780273044_))
                                  (let ((_e272784273049_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd272780273044_))))
                                    (let ((_tl272782273054_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e272784273049_)))
                                          (_hd272783273052_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e272784273049_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd272783273052_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd272783273052_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl272782273054_))
                                                  (let ((_e272787273057_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl272782273054_))))
                                                    (let ((_tl272785273062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e272787273057_)))
                                                          (_hd272786273060_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e272787273057_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl272785273062_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl272779273046_))
                      (let ((_e272790273065_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl272779273046_))))
                        (let ((_tl272788273070_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e272790273065_)))
                              (_hd272789273068_
                               (let ()
                                 (declare (not safe))
                                 (##car _e272790273065_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd272789273068_))
                              (let ((_e272793273073_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd272789273068_))))
                                (let ((_tl272791273078_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272793273073_)))
                                      (_hd272792273076_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272793273073_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd272792273076_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd272792273076_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl272791273078_))
                                              (let ((_e272796273081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl272791273078_))))
                                                (let ((_tl272794273086_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e272796273081_)))
                                                      (_hd272795273084_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e272796273081_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl272794273086_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl272788273070_))
                                                          (let ((_e272799273089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl272788273070_))))
                    (let ((_tl272797273094_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272799273089_)))
                          (_hd272798273092_
                           (let ()
                             (declare (not safe))
                             (##car _e272799273089_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd272798273092_))
                          (let ((_e272802273097_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd272798273092_))))
                            (let ((_tl272800273102_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272802273097_)))
                                  (_hd272801273100_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272802273097_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd272801273100_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd272801273100_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl272800273102_))
                                          (let ((_e272805273105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl272800273102_))))
                                            (let ((_tl272803273110_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e272805273105_)))
                                                  (_hd272804273108_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e272805273105_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl272803273110_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl272797273094_))
                                                      (let ((_e272808273113_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl272797273094_))))
                (let ((_tl272806273118_
                       (let () (declare (not safe)) (##cdr _e272808273113_)))
                      (_hd272807273116_
                       (let () (declare (not safe)) (##car _e272808273113_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd272807273116_))
                      (let ((_e272811273121_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd272807273116_))))
                        (let ((_tl272809273126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e272811273121_)))
                              (_hd272810273124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e272811273121_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd272810273124_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd272810273124_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl272809273126_))
                                      (let ((_e272814273129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl272809273126_))))
                                        (let ((_tl272812273134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e272814273129_)))
                                              (_hd272813273132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e272814273129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl272812273134_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl272806273118_))
                                                  (let ((_e272817273137_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl272806273118_))))
                                                    (let ((_tl272815273142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e272817273137_)))
                                                          (_hd272816273140_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e272817273137_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd272816273140_))
                                                          (let ((_e272820273145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd272816273140_))))
                    (let ((_tl272818273150_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272820273145_)))
                          (_hd272819273148_
                           (let ()
                             (declare (not safe))
                             (##car _e272820273145_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd272819273148_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd272819273148_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl272818273150_))
                                  (let ((_e272823273153_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl272818273150_))))
                                    (let ((_tl272821273158_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e272823273153_)))
                                          (_hd272822273156_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e272823273153_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl272821273158_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl272815273142_))
                                              (___match278023278024_
                                               _e272778273033_
                                               _hd272777273036_
                                               _tl272776273038_
                                               _e272781273041_
                                               _hd272780273044_
                                               _tl272779273046_
                                               _e272784273049_
                                               _hd272783273052_
                                               _tl272782273054_
                                               _e272787273057_
                                               _hd272786273060_
                                               _tl272785273062_
                                               _e272790273065_
                                               _hd272789273068_
                                               _tl272788273070_
                                               _e272793273073_
                                               _hd272792273076_
                                               _tl272791273078_
                                               _e272796273081_
                                               _hd272795273084_
                                               _tl272794273086_
                                               _e272799273089_
                                               _hd272798273092_
                                               _tl272797273094_
                                               _e272802273097_
                                               _hd272801273100_
                                               _tl272800273102_
                                               _e272805273105_
                                               _hd272804273108_
                                               _tl272803273110_
                                               _e272808273113_
                                               _hd272807273116_
                                               _tl272806273118_
                                               _e272811273121_
                                               _hd272810273124_
                                               _tl272809273126_
                                               _e272814273129_
                                               _hd272813273132_
                                               _tl272812273134_
                                               _e272817273137_
                                               _hd272816273140_
                                               _tl272815273142_
                                               _e272820273145_
                                               _hd272819273148_
                                               _tl272818273150_
                                               _e272823273153_
                                               _hd272822273156_
                                               _tl272821273158_)
                                              (___kont277894277895_))
                                          (___kont277894277895_))))
                                  (___kont277894277895_))
                              (___kont277894277895_))
                          (___kont277894277895_))))
                  (___kont277894277895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl272806273118_))
                                                      (if (let ((__tmp278183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp278183 'bind-method!))
                  (let ((_L272987_ _hd272813273132_)
                        (_L272988_ _hd272804273108_)
                        (_L272989_ _hd272795273084_)
                        (_L272990_ _hd272786273060_))
                    (___kont277892277893_
                     _L272987_
                     _L272988_
                     _L272989_
                     _L272990_))
                  (___kont277894277895_))
              (___kont277894277895_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont277894277895_))))
                                      (___kont277894277895_))
                                  (___kont277894277895_))
                              (___kont277894277895_))))
                      (___kont277894277895_))))
              (___kont277894277895_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont277894277895_))))
                                          (___kont277894277895_))
                                      (___kont277894277895_))
                                  (___kont277894277895_))))
                          (___kont277894277895_))))
                  (___kont277894277895_))
              (___kont277894277895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont277894277895_))
                                          (___kont277894277895_))
                                      (___kont277894277895_))))
                              (___kont277894277895_))))
                      (___kont277894277895_))
                  (___kont277894277895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont277894277895_))
                                              (___kont277894277895_))
                                          (___kont277894277895_))))
                                  (___kont277894277895_))))
                          (___kont277894277895_))))
                  (___kont277894277895_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self272741_)
        (let* ((_self272742272748_ _self272741_)
               (_E272744272752_
                (lambda () (error '"No clause matching" _self272742272748_)))
               (_K272745272757_
                (lambda (_alias-id272755_)
                  (let ((__tmp278184
                         (let ()
                           (declare (not safe))
                           (cons _alias-id272755_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp278184)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272742272748_ 'gxc#!alias::t))
              (let* ((_e272746272760_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272742272748_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id272763_ _e272746272760_))
                (declare (not safe))
                (_K272745272757_ _alias-id272763_))
              (let () (declare (not safe)) (_E272744272752_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self272539_)
        (let* ((_self272540272554_ _self272539_)
               (_E272542272558_
                (lambda () (error '"No clause matching" _self272540272554_)))
               (_K272543272571_
                (lambda (_methods272561_
                         _final?272562_
                         _struct?272563_
                         _constructor272564_
                         _fields272565_
                         _slots272566_
                         _precendence-list272567_
                         _super272568_
                         _id272569_)
                  (let ((__tmp278185
                         (let ((__tmp278186
                                (let ((__tmp278187
                                       (let ((__tmp278188
                                              (let ((__tmp278189
                                                     (let ((__tmp278190
                                                            (let ((__tmp278191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278192
                                  (let ((__tmp278193
                                         (let ((__tmp278194
                                                (if _methods272561_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods272561_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp278194 '()))))
                                    (declare (not safe))
                                    (cons _final?272562_ __tmp278193))))
                             (declare (not safe))
                             (cons _struct?272563_ __tmp278192))))
                      (declare (not safe))
                      (cons _constructor272564_ __tmp278191))))
               (declare (not safe))
               (cons _fields272565_ __tmp278190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots272566_
                                                      __tmp278189))))
                                         (declare (not safe))
                                         (cons _precendence-list272567_
                                               __tmp278188))))
                                  (declare (not safe))
                                  (cons _super272568_ __tmp278187))))
                           (declare (not safe))
                           (cons _id272569_ __tmp278186))))
                    (declare (not safe))
                    (cons '@class __tmp278185)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272540272554_ 'gxc#!class::t))
              (let* ((_e272544272574_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id272577_ _e272544272574_)
                     (_e272545272579_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super272582_ _e272545272579_)
                     (_e272546272584_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list272587_ _e272546272584_)
                     (_e272547272589_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots272592_ _e272547272589_)
                     (_e272548272594_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields272597_ _e272548272594_)
                     (_e272549272599_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor272602_ _e272549272599_)
                     (_e272550272604_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?272607_ _e272550272604_)
                     (_e272551272609_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?272612_ _e272551272609_)
                     (_e272552272614_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272540272554_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods272617_ _e272552272614_))
                (declare (not safe))
                (_K272543272571_
                 _methods272617_
                 _final?272612_
                 _struct?272607_
                 _constructor272602_
                 _fields272597_
                 _slots272592_
                 _precendence-list272587_
                 _super272582_
                 _id272577_))
              (let () (declare (not safe)) (_E272542272558_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self272393_)
        (let* ((_self272394272400_ _self272393_)
               (_E272396272404_
                (lambda () (error '"No clause matching" _self272394272400_)))
               (_K272397272409_
                (lambda (_klass-id272407_)
                  (let ((__tmp278195
                         (let ()
                           (declare (not safe))
                           (cons _klass-id272407_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp278195)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272394272400_
                 'gxc#!predicate::t))
              (let* ((_e272398272412_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272394272400_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272415_ _e272398272412_))
                (declare (not safe))
                (_K272397272409_ _klass-id272415_))
              (let () (declare (not safe)) (_E272396272404_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self272247_)
        (let* ((_self272248272254_ _self272247_)
               (_E272250272258_
                (lambda () (error '"No clause matching" _self272248272254_)))
               (_K272251272263_
                (lambda (_klass-id272261_)
                  (let ((__tmp278196
                         (let ()
                           (declare (not safe))
                           (cons _klass-id272261_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp278196)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272248272254_
                 'gxc#!constructor::t))
              (let* ((_e272252272266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272248272254_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272269_ _e272252272266_))
                (declare (not safe))
                (_K272251272263_ _klass-id272269_))
              (let () (declare (not safe)) (_E272250272258_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self272087_)
        (let* ((_self272088272096_ _self272087_)
               (_E272090272100_
                (lambda () (error '"No clause matching" _self272088272096_)))
               (_K272091272107_
                (lambda (_checked?272103_ _slot272104_ _klass-id272105_)
                  (let ((__tmp278197
                         (let ((__tmp278198
                                (let ((__tmp278199
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?272103_ '()))))
                                  (declare (not safe))
                                  (cons _slot272104_ __tmp278199))))
                           (declare (not safe))
                           (cons _klass-id272105_ __tmp278198))))
                    (declare (not safe))
                    (cons '@accessor __tmp278197)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272088272096_
                 'gxc#!accessor::t))
              (let* ((_e272092272110_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272088272096_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272113_ _e272092272110_)
                     (_e272093272115_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272088272096_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot272118_ _e272093272115_)
                     (_e272094272120_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272088272096_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?272123_ _e272094272120_))
                (declare (not safe))
                (_K272091272107_
                 _checked?272123_
                 _slot272118_
                 _klass-id272113_))
              (let () (declare (not safe)) (_E272090272100_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self271927_)
        (let* ((_self271928271936_ _self271927_)
               (_E271930271940_
                (lambda () (error '"No clause matching" _self271928271936_)))
               (_K271931271947_
                (lambda (_checked?271943_ _slot271944_ _klass-id271945_)
                  (let ((__tmp278200
                         (let ((__tmp278201
                                (let ((__tmp278202
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?271943_ '()))))
                                  (declare (not safe))
                                  (cons _slot271944_ __tmp278202))))
                           (declare (not safe))
                           (cons _klass-id271945_ __tmp278201))))
                    (declare (not safe))
                    (cons '@mutator __tmp278200)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self271928271936_ 'gxc#!mutator::t))
              (let* ((_e271932271950_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271928271936_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id271953_ _e271932271950_)
                     (_e271933271955_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271928271936_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot271958_ _e271933271955_)
                     (_e271934271960_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271928271936_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?271963_ _e271934271960_))
                (declare (not safe))
                (_K271931271947_
                 _checked?271963_
                 _slot271958_
                 _klass-id271953_))
              (let () (declare (not safe)) (_E271930271940_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self271753_)
        (let* ((_self271754271764_ _self271753_)
               (_E271756271768_
                (lambda () (error '"No clause matching" _self271754271764_)))
               (_K271757271779_
                (lambda (_typedecl271771_
                         _inline271772_
                         _dispatch271773_
                         _arity271774_)
                  (if _inline271772_
                      (let ((_$e271776_ _typedecl271771_))
                        (if _$e271776_
                            _$e271776_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp278203
                             (let ((__tmp278204
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch271773_ '()))))
                               (declare (not safe))
                               (cons _arity271774_ __tmp278204))))
                        (declare (not safe))
                        (cons '@lambda __tmp278203))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self271754271764_ 'gxc#!lambda::t))
              (let* ((_e271758271782_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271754271764_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271759271785_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271754271764_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity271788_ _e271759271785_)
                     (_e271760271790_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271754271764_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch271793_ _e271760271790_)
                     (_e271761271795_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271754271764_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline271798_ _e271761271795_)
                     (_e271762271800_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271754271764_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl271803_ _e271762271800_))
                (declare (not safe))
                (_K271757271779_
                 _typedecl271803_
                 _inline271798_
                 _dispatch271793_
                 _arity271788_))
              (let () (declare (not safe)) (_E271756271768_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self271564_)
        (letrec ((_clause-e271566_
                  (lambda (_clause271596_)
                    (let* ((_clause271597271605_ _clause271596_)
                           (_E271599271609_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause271597271605_)))
                           (_K271600271615_
                            (lambda (_dispatch271612_ _arity271613_)
                              (let ((__tmp278205
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch271612_ '()))))
                                (declare (not safe))
                                (cons _arity271613_ __tmp278205)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause271597271605_
                             'gxc#!lambda::t))
                          (let* ((_e271601271618_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271597271605_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e271602271621_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271597271605_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity271624_ _e271602271621_)
                                 (_e271603271626_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271597271605_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch271629_ _e271603271626_))
                            (declare (not safe))
                            (_K271600271615_ _dispatch271629_ _arity271624_))
                          (let () (declare (not safe)) (_E271599271609_)))))))
          (let* ((_self271567271574_ _self271564_)
                 (_E271569271578_
                  (lambda () (error '"No clause matching" _self271567271574_)))
                 (_K271570271585_
                  (lambda (_clauses271581_)
                    (let ((_clauses271583_
                           (map _clause-e271566_ _clauses271581_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses271583_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self271567271574_
                   'gxc#!case-lambda::t))
                (let* ((_e271571271588_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self271567271574_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e271572271591_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self271567271574_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses271594_ _e271572271591_))
                  (declare (not safe))
                  (_K271570271585_ _clauses271594_))
                (let () (declare (not safe)) (_E271569271578_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self271407_)
        (let* ((_self271408271416_ _self271407_)
               (_E271410271420_
                (lambda () (error '"No clause matching" _self271408271416_)))
               (_K271411271426_
                (lambda (_dispatch271423_ _table271424_)
                  (let ((__tmp278206
                         (let ((__tmp278207
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch271423_ '()))))
                           (declare (not safe))
                           (cons _table271424_ __tmp278207))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp278206)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self271408271416_
                 'gxc#!kw-lambda::t))
              (let* ((_e271412271429_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271408271416_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271413271432_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271408271416_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table271435_ _e271413271432_)
                     (_e271414271437_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271408271416_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch271440_ _e271414271437_))
                (declare (not safe))
                (_K271411271426_ _dispatch271440_ _table271435_))
              (let () (declare (not safe)) (_E271410271420_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self271250_)
        (let* ((_self271251271259_ _self271250_)
               (_E271253271263_
                (lambda () (error '"No clause matching" _self271251271259_)))
               (_K271254271269_
                (lambda (_main271266_ _keys271267_)
                  (let ((__tmp278208
                         (let ((__tmp278209
                                (let ()
                                  (declare (not safe))
                                  (cons _main271266_ '()))))
                           (declare (not safe))
                           (cons _keys271267_ __tmp278209))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp278208)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self271251271259_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e271255271272_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271251271259_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271256271275_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271251271259_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys271278_ _e271256271275_)
                     (_e271257271280_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271251271259_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main271283_ _e271257271280_))
                (declare (not safe))
                (_K271254271269_ _main271283_ _keys271278_))
              (let () (declare (not safe)) (_E271253271263_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
