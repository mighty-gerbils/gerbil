(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707573218)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj287134
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj287134)
               __obj287134)))))
    (define gxc#optimize!
      (lambda (_ctx282359_)
        (let ((__tmp287138
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282359_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp287140
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp287139
                        (##structure-ref
                         _ctx282359_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp287140 __tmp287139 '#t))
                 (let ((_code282362_
                        (let ((__tmp287141
                               (##structure-ref
                                _ctx282359_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp287141))))
                   (##structure-set!
                    _ctx282359_
                    _code282362_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp287137
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp287136
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp287138
           gxc#current-compile-mutators
           __tmp287137
           gxc#current-compile-local-type
           __tmp287136))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp287142
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp287142 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282303_)
        (letrec* ((_deps282305_
                   (let* ((_imports282349_
                           (##structure-ref
                            _ctx282303_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e282351_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282303_))))
                     (if _$e282351_
                         ((lambda (_g282353282355_)
                            (let ()
                              (declare (not safe))
                              (cons _g282353282355_ _imports282349_)))
                          _$e282351_)
                         _imports282349_))))
          (let _lp282307_ ((_rest282309_ _deps282305_))
            (let* ((_rest282310282318_ _rest282309_)
                   (_else282312282326_ (lambda () '#!void))
                   (_K282314282337_
                    (lambda (_rest282329_ _hd282330_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd282330_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp287156
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp287155
                                       (##structure-ref
                                        _hd282330_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp287156 __tmp287155 '#f))
                                '#!void
                                (begin
                                  (let ((_$e282332_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282330_))))
                                    (if _$e282332_
                                        ((lambda (_pre282335_)
                                           (let ((__tmp287153
                                                  (let ((__tmp287154
                                                         (##structure-ref
                                                          _hd282330_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre282335_
                                                          __tmp287154))))
                                             (declare (not safe))
                                             (_lp282307_ __tmp287153)))
                                         _$e282332_)
                                        (let ((__tmp287152
                                               (##structure-ref
                                                _hd282330_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp282307_ __tmp287152))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282330_))))
                            (let ()
                              (declare (not safe))
                              (_lp282307_ _rest282329_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd282330_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp287151
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp287150
                                           (##structure-ref
                                            _hd282330_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp287151 __tmp287150 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp287149
                                             (##structure-ref
                                              _hd282330_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp282307_ __tmp287149))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282330_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282307_ _rest282329_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282330_
                                     'gx#module-import::t))
                                  (let ((__tmp287147
                                         (let ((__tmp287148
                                                (##direct-structure-ref
                                                 _hd282330_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287148 _rest282329_))))
                                    (declare (not safe))
                                    (_lp282307_ __tmp287147))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282330_
                                         'gx#module-export::t))
                                      (let ((__tmp287145
                                             (let ((__tmp287146
                                                    (##direct-structure-ref
                                                     _hd282330_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287146
                                                     _rest282329_))))
                                        (declare (not safe))
                                        (_lp282307_ __tmp287145))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282330_
                                             'gx#import-set::t))
                                          (let ((__tmp287143
                                                 (let ((__tmp287144
                                                        (##direct-structure-ref
                                                         _hd282330_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287144
                                                         _rest282329_))))
                                            (declare (not safe))
                                            (_lp282307_ __tmp287143))
                                          (error '"Unexpected module import"
                                                 _hd282330_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282310282318_))
                  (let ((_hd282315282340_
                         (let ()
                           (declare (not safe))
                           (##car _rest282310282318_)))
                        (_tl282316282342_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282310282318_))))
                    (let* ((_hd282345_ _hd282315282340_)
                           (_rest282347_ _tl282316282342_))
                      (declare (not safe))
                      (_K282314282337_ _rest282347_ _hd282345_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx282283_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx282283_
                    'gx#module-context::t))
                 (let ((__tmp287157
                        (##structure-ref
                         _ctx282283_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp287157)))
            '#!void
            (let* ((_ht282285_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id282287_
                    (##structure-ref
                     _ctx282283_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod282289_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht282285_ _id282287_ '#f))))
              (let ((_$e282292_ _mod282289_))
                (if _$e282292_
                    _$e282292_
                    (let* ((_mod282295_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx282283_)))
                           (_val282300_
                            (let ((_$e282297_ _mod282295_))
                              (if _$e282297_ _$e282297_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht282285_ _id282287_ _val282300_))
                      _val282300_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx282281_)
        (if (##structure-ref _ctx282281_ '1 gx#expander-context::t '#f)
            (let ((__tmp287158
                   (##structure-ref
                    _ctx282281_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp287158))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id282258_)
        (letrec ((_catch-e282260_
                  (lambda (_exn282279_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id282258_))
                          (display-exception _exn282279_))
                        '#!void)
                    '#f))
                 (_import-e282261_
                  (lambda ()
                    (let* ((_str-id282264_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id282258_))
                             '".ssxi"))
                           (_artefact-path282272_
                            (let ((_odir282265282267_
                                   (gxc#current-compile-output-dir)))
                              (if _odir282265282267_
                                  (let ((_odir282270_ _odir282265282267_))
                                    (path-expand
                                     (string-append _str-id282264_ '".ss")
                                     _odir282270_))
                                  '#f)))
                           (_library-path282274_
                            (string->symbol
                             (string-append '":" _str-id282264_ '".ss")))
                           (_ssxi-path282276_
                            (if (and _artefact-path282272_
                                     (file-exists? _artefact-path282272_))
                                _artefact-path282272_
                                _library-path282274_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path282276_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path282276_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e282260_ _import-e282261_)))))
    (define gxc#optimize-source
      (lambda (_stx282249_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx282249_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx282249_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx282249_))
        (let* ((_stx282251_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx282249_)))
               (_stx282253_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx282251_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx282253_))
          (let ((_stx282256_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx282253_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx282256_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl282246_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp287159 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl282246_ __tmp287159))
           (let ()
             (declare (not safe))
             (table-set! _tbl282246_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282246_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282246_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282246_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282246_ '%#call gxc#generate-ssxi-call%))
           _tbl282246_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx282229_ . _args282231_)
        (let ((__tmp287161
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282231_)
                     (gxc#compile-e__0 _stx282229_)
                     (let ((_arg1282236_ (car _args282231_))
                           (_rest282238_ (cdr _args282231_)))
                       (if (null? _rest282238_)
                           (gxc#compile-e__1 _stx282229_ _arg1282236_)
                           (let ((_arg2282241_ (car _rest282238_))
                                 (_rest282243_ (cdr _rest282238_)))
                             (if (null? _rest282243_)
                                 (gxc#compile-e__2
                                  _stx282229_
                                  _arg1282236_
                                  _arg2282241_)
                                 (apply gxc#compile-e
                                        _stx282229_
                                        _arg1282236_
                                        _arg2282241_
                                        _rest282243_))))))))
              (__tmp287160 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp287161
           gxc#current-compile-methods
           __tmp287160))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx282190_)
        (let* ((_g282192282202_
                (lambda (_g282193282199_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282193282199_))))
               (_g282191282226_
                (lambda (_g282193282205_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282193282205_))
                      (let ((_e282197282207_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282193282205_))))
                        (let ((_hd282196282210_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282197282207_)))
                              (_tl282195282212_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282197282207_))))
                          ((lambda (_L282215_)
                             (let ((__tmp287164
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx282190_))))
                                   (__tmp287162
                                    (let ((__tmp287163
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp287163 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp287164
                                gx#current-expander-phi
                                __tmp287162)))
                           _tl282195282212_)))
                      (let ()
                        (declare (not safe))
                        (_g282192282202_ _g282193282205_))))))
          (declare (not safe))
          (_g282191282226_ _stx282190_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx282130_)
        (let* ((_g282132282146_
                (lambda (_g282133282143_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282133282143_))))
               (_g282131282187_
                (lambda (_g282133282149_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282133282149_))
                      (let ((_e282138282151_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282133282149_))))
                        (let ((_hd282137282154_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282138282151_)))
                              (_tl282136282156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282138282151_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282136282156_))
                              (let ((_e282141282159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282136282156_))))
                                (let ((_hd282140282162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282141282159_)))
                                      (_tl282139282164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282141282159_))))
                                  ((lambda (_L282167_ _L282168_)
                                     (let* ((_ctx282181_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L282168_)))
                                            (_code282183_
                                             (##structure-ref
                                              _ctx282181_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp287165
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code282183_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp287165
                                          gx#current-expander-context
                                          _ctx282181_))))
                                   _tl282139282164_
                                   _hd282140282162_)))
                              (let ()
                                (declare (not safe))
                                (_g282132282146_ _g282133282149_)))))
                      (let ()
                        (declare (not safe))
                        (_g282132282146_ _g282133282149_))))))
          (declare (not safe))
          (_g282131282187_ _stx282130_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx281940_)
        (letrec ((_generate-e281942_
                  (lambda (_id282119_)
                    (let* ((_sym282121_
                            (if (let ((__tmp287166
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp287166))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id282119_))
                                '#f))
                           (_$e282123_
                            (if _sym282121_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym282121_))
                                '#f)))
                      (if _$e282123_
                          ((lambda (_type282126_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym282121_))
                             (let* ((_typedecl282128_
                                     (let ((__method287135
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type282126_
                                               'typedecl))))
                                       (if __method287135
                                           (__method287135 _type282126_)
                                           (error '"Missing method"
                                                  _type282126_
                                                  'typedecl))))
                                    (__tmp287167
                                     (let ((__tmp287168
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl282128_ '()))))
                                       (declare (not safe))
                                       (cons _sym282121_ __tmp287168))))
                               (declare (not safe))
                               (cons 'declare-type __tmp287167)))
                           _$e282123_)
                          '(begin))))))
          (let* ((___stx286833286834_ _stx281940_)
                 (_g281945281983_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx286833286834_)))))
            (let ((___kont286835286836_
                   (lambda (_L282101_)
                     (let ()
                       (declare (not safe))
                       (_generate-e281942_ _L282101_))))
                  (___kont286837286838_
                   (lambda (_L282036_)
                     (let ((_types282062_
                            (map _generate-e281942_
                                 (let ((__tmp287169
                                        (lambda (_g282054282057_
                                                 _g282055282059_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g282054282057_
                                                  _g282055282059_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp287169 '() _L282036_)))))
                       (declare (not safe))
                       (cons 'begin _types282062_)))))
              (let ((___match286888286889_
                     (lambda (_e281963281988_
                              _hd281962281991_
                              _tl281961281993_
                              _e281966281996_
                              _hd281965281999_
                              _tl281964282001_
                              ___splice286839286840_
                              _target281967282004_
                              _tl281969282006_)
                       (letrec ((_loop281970282009_
                                 (lambda (_hd281968282012_ _id281974282014_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd281968282012_))
                                       (let ((_e281971282017_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd281968282012_))))
                                         (let ((_lp-tl281973282022_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e281971282017_)))
                                               (_lp-hd281972282020_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e281971282017_))))
                                           (let ((__tmp287170
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd281972282020_
                                                          _id281974282014_))))
                                             (declare (not safe))
                                             (_loop281970282009_
                                              _lp-tl281973282022_
                                              __tmp287170))))
                                       (let ((_id281975282025_
                                              (reverse _id281974282014_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl281964282001_))
                                             (let ((_e281978282028_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl281964282001_))))
                                               (let ((_tl281976282033_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e281978282028_)))
                                                     (_hd281977282031_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e281978282028_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl281976282033_))
                                                     (___kont286837286838_
                                                      _id281975282025_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g281945281983_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g281945281983_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop281970282009_ _target281967282004_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286833286834_))
                    (let ((_e281950282069_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286833286834_))))
                      (let ((_tl281948282074_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281950282069_)))
                            (_hd281949282072_
                             (let ()
                               (declare (not safe))
                               (##car _e281950282069_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281948282074_))
                            (let ((_e281953282077_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl281948282074_))))
                              (let ((_tl281951282082_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281953282077_)))
                                    (_hd281952282080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281953282077_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd281952282080_))
                                    (let ((_e281956282085_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd281952282080_))))
                                      (let ((_tl281954282090_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e281956282085_)))
                                            (_hd281955282088_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e281956282085_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl281954282090_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl281951282082_))
                                                (let ((_e281959282093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl281951282082_))))
                                                  (let ((_tl281957282098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e281959282093_)))
                                                        (_hd281958282096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e281959282093_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281957282098_))
                                                        (___kont286835286836_
                                                         _hd281955282088_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd281952282080_))
                                                            (let ((___splice286839286840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd281952282080_ '0))))
                      (let ((_tl281969282006_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286839286840_ '1)))
                            (_target281967282004_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286839286840_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl281969282006_))
                            (___match286888286889_
                             _e281950282069_
                             _hd281949282072_
                             _tl281948282074_
                             _e281953282077_
                             _hd281952282080_
                             _tl281951282082_
                             ___splice286839286840_
                             _target281967282004_
                             _tl281969282006_)
                            (let () (declare (not safe)) (_g281945281983_)))))
                    (let () (declare (not safe)) (_g281945281983_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd281952282080_))
                                                    (let ((___splice286839286840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd281952282080_
                                                              '0))))
                                                      (let ((_tl281969282006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice286839286840_ '1)))
                    (_target281967282004_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice286839286840_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl281969282006_))
                    (___match286888286889_
                     _e281950282069_
                     _hd281949282072_
                     _tl281948282074_
                     _e281953282077_
                     _hd281952282080_
                     _tl281951282082_
                     ___splice286839286840_
                     _target281967282004_
                     _tl281969282006_)
                    (let () (declare (not safe)) (_g281945281983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g281945281983_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd281952282080_))
                                                (let ((___splice286839286840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd281952282080_
                                                          '0))))
                                                  (let ((_tl281969282006_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286839286840_
                                                            '1)))
                                                        (_target281967282004_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286839286840_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281969282006_))
                                                        (___match286888286889_
                                                         _e281950282069_
                                                         _hd281949282072_
                                                         _tl281948282074_
                                                         _e281953282077_
                                                         _hd281952282080_
                                                         _tl281951282082_
                                                         ___splice286839286840_
                                                         _target281967282004_
                                                         _tl281969282006_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g281945281983_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281945281983_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd281952282080_))
                                        (let ((___splice286839286840_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd281952282080_
                                                  '0))))
                                          (let ((_tl281969282006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286839286840_
                                                    '1)))
                                                (_target281967282004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286839286840_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl281969282006_))
                                                (___match286888286889_
                                                 _e281950282069_
                                                 _hd281949282072_
                                                 _tl281948282074_
                                                 _e281953282077_
                                                 _hd281952282080_
                                                 _tl281951282082_
                                                 ___splice286839286840_
                                                 _target281967282004_
                                                 _tl281969282006_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281945281983_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g281945281983_))))))
                            (let () (declare (not safe)) (_g281945281983_)))))
                    (let () (declare (not safe)) (_g281945281983_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281494_)
        (let* ((___stx286891286892_ _stx281494_)
               (_g281498281600_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx286891286892_)))))
          (let ((___kont286893286894_
                 (lambda (_L281890_ _L281891_ _L281892_ _L281893_ _L281894_)
                   (let ((__tmp287171
                          (let ((__tmp287178
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281893_)))
                                (__tmp287172
                                 (let ((__tmp287177
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281892_)))
                                       (__tmp287173
                                        (let ((__tmp287176
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281891_)))
                                              (__tmp287174
                                               (let ((__tmp287175
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L281890_))))
                                                 (declare (not safe))
                                                 (cons __tmp287175 '()))))
                                          (declare (not safe))
                                          (cons __tmp287176 __tmp287174))))
                                   (declare (not safe))
                                   (cons __tmp287177 __tmp287173))))
                            (declare (not safe))
                            (cons __tmp287178 __tmp287172))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287171))))
                (___kont286895286896_
                 (lambda (_L281716_ _L281717_ _L281718_ _L281719_)
                   (let ((__tmp287179
                          (let ((__tmp287185
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281718_)))
                                (__tmp287180
                                 (let ((__tmp287184
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281717_)))
                                       (__tmp287181
                                        (let ((__tmp287183
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281716_)))
                                              (__tmp287182
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp287183 __tmp287182))))
                                   (declare (not safe))
                                   (cons __tmp287184 __tmp287181))))
                            (declare (not safe))
                            (cons __tmp287185 __tmp287180))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287179))))
                (___kont286897286898_ (lambda () '(begin))))
            (let ((___match287026287027_
                   (lambda (_e281507281762_
                            _hd281506281765_
                            _tl281505281767_
                            _e281510281770_
                            _hd281509281773_
                            _tl281508281775_
                            _e281513281778_
                            _hd281512281781_
                            _tl281511281783_
                            _e281516281786_
                            _hd281515281789_
                            _tl281514281791_
                            _e281519281794_
                            _hd281518281797_
                            _tl281517281799_
                            _e281522281802_
                            _hd281521281805_
                            _tl281520281807_
                            _e281525281810_
                            _hd281524281813_
                            _tl281523281815_
                            _e281528281818_
                            _hd281527281821_
                            _tl281526281823_
                            _e281531281826_
                            _hd281530281829_
                            _tl281529281831_
                            _e281534281834_
                            _hd281533281837_
                            _tl281532281839_
                            _e281537281842_
                            _hd281536281845_
                            _tl281535281847_
                            _e281540281850_
                            _hd281539281853_
                            _tl281538281855_
                            _e281543281858_
                            _hd281542281861_
                            _tl281541281863_
                            _e281546281866_
                            _hd281545281869_
                            _tl281544281871_
                            _e281549281874_
                            _hd281548281877_
                            _tl281547281879_
                            _e281552281882_
                            _hd281551281885_
                            _tl281550281887_)
                     (let ((_L281890_ _hd281551281885_)
                           (_L281891_ _hd281542281861_)
                           (_L281892_ _hd281533281837_)
                           (_L281893_ _hd281524281813_)
                           (_L281894_ _hd281515281789_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L281894_
                              'bind-method!))
                           (___kont286893286894_
                            _L281890_
                            _L281891_
                            _L281892_
                            _L281893_
                            _L281894_)
                           (___kont286897286898_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx286891286892_))
                  (let ((_e281507281762_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx286891286892_))))
                    (let ((_tl281505281767_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281507281762_)))
                          (_hd281506281765_
                           (let ()
                             (declare (not safe))
                             (##car _e281507281762_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281505281767_))
                          (let ((_e281510281770_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281505281767_))))
                            (let ((_tl281508281775_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281510281770_)))
                                  (_hd281509281773_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281510281770_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281509281773_))
                                  (let ((_e281513281778_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281509281773_))))
                                    (let ((_tl281511281783_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281513281778_)))
                                          (_hd281512281781_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281513281778_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281512281781_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281512281781_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281511281783_))
                                                  (let ((_e281516281786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281511281783_))))
                                                    (let ((_tl281514281791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281516281786_)))
                                                          (_hd281515281789_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281516281786_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281514281791_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281508281775_))
                      (let ((_e281519281794_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281508281775_))))
                        (let ((_tl281517281799_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281519281794_)))
                              (_hd281518281797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281519281794_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281518281797_))
                              (let ((_e281522281802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281518281797_))))
                                (let ((_tl281520281807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281522281802_)))
                                      (_hd281521281805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281522281802_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281521281805_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281521281805_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281520281807_))
                                              (let ((_e281525281810_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281520281807_))))
                                                (let ((_tl281523281815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281525281810_)))
                                                      (_hd281524281813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281525281810_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281523281815_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281517281799_))
                                                          (let ((_e281528281818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281517281799_))))
                    (let ((_tl281526281823_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281528281818_)))
                          (_hd281527281821_
                           (let ()
                             (declare (not safe))
                             (##car _e281528281818_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281527281821_))
                          (let ((_e281531281826_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281527281821_))))
                            (let ((_tl281529281831_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281531281826_)))
                                  (_hd281530281829_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281531281826_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281530281829_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281530281829_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281529281831_))
                                          (let ((_e281534281834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281529281831_))))
                                            (let ((_tl281532281839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281534281834_)))
                                                  (_hd281533281837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281534281834_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281532281839_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281526281823_))
                                                      (let ((_e281537281842_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281526281823_))))
                (let ((_tl281535281847_
                       (let () (declare (not safe)) (##cdr _e281537281842_)))
                      (_hd281536281845_
                       (let () (declare (not safe)) (##car _e281537281842_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281536281845_))
                      (let ((_e281540281850_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281536281845_))))
                        (let ((_tl281538281855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281540281850_)))
                              (_hd281539281853_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281540281850_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281539281853_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281539281853_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281538281855_))
                                      (let ((_e281543281858_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281538281855_))))
                                        (let ((_tl281541281863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281543281858_)))
                                              (_hd281542281861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281543281858_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281541281863_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281535281847_))
                                                  (let ((_e281546281866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281535281847_))))
                                                    (let ((_tl281544281871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281546281866_)))
                                                          (_hd281545281869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281546281866_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281545281869_))
                                                          (let ((_e281549281874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281545281869_))))
                    (let ((_tl281547281879_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281549281874_)))
                          (_hd281548281877_
                           (let ()
                             (declare (not safe))
                             (##car _e281549281874_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281548281877_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281548281877_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281547281879_))
                                  (let ((_e281552281882_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281547281879_))))
                                    (let ((_tl281550281887_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281552281882_)))
                                          (_hd281551281885_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281552281882_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281550281887_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281544281871_))
                                              (___match287026287027_
                                               _e281507281762_
                                               _hd281506281765_
                                               _tl281505281767_
                                               _e281510281770_
                                               _hd281509281773_
                                               _tl281508281775_
                                               _e281513281778_
                                               _hd281512281781_
                                               _tl281511281783_
                                               _e281516281786_
                                               _hd281515281789_
                                               _tl281514281791_
                                               _e281519281794_
                                               _hd281518281797_
                                               _tl281517281799_
                                               _e281522281802_
                                               _hd281521281805_
                                               _tl281520281807_
                                               _e281525281810_
                                               _hd281524281813_
                                               _tl281523281815_
                                               _e281528281818_
                                               _hd281527281821_
                                               _tl281526281823_
                                               _e281531281826_
                                               _hd281530281829_
                                               _tl281529281831_
                                               _e281534281834_
                                               _hd281533281837_
                                               _tl281532281839_
                                               _e281537281842_
                                               _hd281536281845_
                                               _tl281535281847_
                                               _e281540281850_
                                               _hd281539281853_
                                               _tl281538281855_
                                               _e281543281858_
                                               _hd281542281861_
                                               _tl281541281863_
                                               _e281546281866_
                                               _hd281545281869_
                                               _tl281544281871_
                                               _e281549281874_
                                               _hd281548281877_
                                               _tl281547281879_
                                               _e281552281882_
                                               _hd281551281885_
                                               _tl281550281887_)
                                              (___kont286897286898_))
                                          (___kont286897286898_))))
                                  (___kont286897286898_))
                              (___kont286897286898_))
                          (___kont286897286898_))))
                  (___kont286897286898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281535281847_))
                                                      (if (let ((__tmp287186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp287186 'bind-method!))
                  (let ((_L281716_ _hd281542281861_)
                        (_L281717_ _hd281533281837_)
                        (_L281718_ _hd281524281813_)
                        (_L281719_ _hd281515281789_))
                    (___kont286895286896_
                     _L281716_
                     _L281717_
                     _L281718_
                     _L281719_))
                  (___kont286897286898_))
              (___kont286897286898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286897286898_))))
                                      (___kont286897286898_))
                                  (___kont286897286898_))
                              (___kont286897286898_))))
                      (___kont286897286898_))))
              (___kont286897286898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286897286898_))))
                                          (___kont286897286898_))
                                      (___kont286897286898_))
                                  (___kont286897286898_))))
                          (___kont286897286898_))))
                  (___kont286897286898_))
              (___kont286897286898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286897286898_))
                                          (___kont286897286898_))
                                      (___kont286897286898_))))
                              (___kont286897286898_))))
                      (___kont286897286898_))
                  (___kont286897286898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286897286898_))
                                              (___kont286897286898_))
                                          (___kont286897286898_))))
                                  (___kont286897286898_))))
                          (___kont286897286898_))))
                  (___kont286897286898_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281470_)
        (let* ((_self281471281477_ _self281470_)
               (_E281473281481_
                (lambda () (error '"No clause matching" _self281471281477_)))
               (_K281474281486_
                (lambda (_alias-id281484_)
                  (let ((__tmp287187
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281484_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp287187)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281471281477_ 'gxc#!alias::t))
              (let* ((_e281475281489_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281471281477_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id281492_ _e281475281489_))
                (declare (not safe))
                (_K281474281486_ _alias-id281492_))
              (let () (declare (not safe)) (_E281473281481_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self281268_)
        (let* ((_self281269281283_ _self281268_)
               (_E281271281287_
                (lambda () (error '"No clause matching" _self281269281283_)))
               (_K281272281300_
                (lambda (_methods281290_
                         _final?281291_
                         _struct?281292_
                         _constructor281293_
                         _fields281294_
                         _slots281295_
                         _precendence-list281296_
                         _super281297_
                         _id281298_)
                  (let ((__tmp287188
                         (let ((__tmp287189
                                (let ((__tmp287190
                                       (let ((__tmp287191
                                              (let ((__tmp287192
                                                     (let ((__tmp287193
                                                            (let ((__tmp287194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287195
                                  (let ((__tmp287196
                                         (let ((__tmp287197
                                                (if _methods281290_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods281290_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp287197 '()))))
                                    (declare (not safe))
                                    (cons _final?281291_ __tmp287196))))
                             (declare (not safe))
                             (cons _struct?281292_ __tmp287195))))
                      (declare (not safe))
                      (cons _constructor281293_ __tmp287194))))
               (declare (not safe))
               (cons _fields281294_ __tmp287193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots281295_
                                                      __tmp287192))))
                                         (declare (not safe))
                                         (cons _precendence-list281296_
                                               __tmp287191))))
                                  (declare (not safe))
                                  (cons _super281297_ __tmp287190))))
                           (declare (not safe))
                           (cons _id281298_ __tmp287189))))
                    (declare (not safe))
                    (cons '@class __tmp287188)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281269281283_ 'gxc#!class::t))
              (let* ((_e281273281303_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id281306_ _e281273281303_)
                     (_e281274281308_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super281311_ _e281274281308_)
                     (_e281275281313_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list281316_ _e281275281313_)
                     (_e281276281318_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots281321_ _e281276281318_)
                     (_e281277281323_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields281326_ _e281277281323_)
                     (_e281278281328_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor281331_ _e281278281328_)
                     (_e281279281333_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?281336_ _e281279281333_)
                     (_e281280281338_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?281341_ _e281280281338_)
                     (_e281281281343_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281269281283_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods281346_ _e281281281343_))
                (declare (not safe))
                (_K281272281300_
                 _methods281346_
                 _final?281341_
                 _struct?281336_
                 _constructor281331_
                 _fields281326_
                 _slots281321_
                 _precendence-list281316_
                 _super281311_
                 _id281306_))
              (let () (declare (not safe)) (_E281271281287_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self281122_)
        (let* ((_self281123281129_ _self281122_)
               (_E281125281133_
                (lambda () (error '"No clause matching" _self281123281129_)))
               (_K281126281138_
                (lambda (_klass-id281136_)
                  (let ((__tmp287198
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281136_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp287198)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281123281129_
                 'gxc#!predicate::t))
              (let* ((_e281127281141_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281123281129_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281144_ _e281127281141_))
                (declare (not safe))
                (_K281126281138_ _klass-id281144_))
              (let () (declare (not safe)) (_E281125281133_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self280976_)
        (let* ((_self280977280983_ _self280976_)
               (_E280979280987_
                (lambda () (error '"No clause matching" _self280977280983_)))
               (_K280980280992_
                (lambda (_klass-id280990_)
                  (let ((__tmp287199
                         (let ()
                           (declare (not safe))
                           (cons _klass-id280990_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp287199)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280977280983_
                 'gxc#!constructor::t))
              (let* ((_e280981280995_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280977280983_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280998_ _e280981280995_))
                (declare (not safe))
                (_K280980280992_ _klass-id280998_))
              (let () (declare (not safe)) (_E280979280987_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self280816_)
        (let* ((_self280817280825_ _self280816_)
               (_E280819280829_
                (lambda () (error '"No clause matching" _self280817280825_)))
               (_K280820280836_
                (lambda (_checked?280832_ _slot280833_ _klass-id280834_)
                  (let ((__tmp287200
                         (let ((__tmp287201
                                (let ((__tmp287202
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280832_ '()))))
                                  (declare (not safe))
                                  (cons _slot280833_ __tmp287202))))
                           (declare (not safe))
                           (cons _klass-id280834_ __tmp287201))))
                    (declare (not safe))
                    (cons '@accessor __tmp287200)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280817280825_
                 'gxc#!accessor::t))
              (let* ((_e280821280839_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280817280825_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280842_ _e280821280839_)
                     (_e280822280844_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280817280825_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot280847_ _e280822280844_)
                     (_e280823280849_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280817280825_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?280852_ _e280823280849_))
                (declare (not safe))
                (_K280820280836_
                 _checked?280852_
                 _slot280847_
                 _klass-id280842_))
              (let () (declare (not safe)) (_E280819280829_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280656_)
        (let* ((_self280657280665_ _self280656_)
               (_E280659280669_
                (lambda () (error '"No clause matching" _self280657280665_)))
               (_K280660280676_
                (lambda (_checked?280672_ _slot280673_ _klass-id280674_)
                  (let ((__tmp287203
                         (let ((__tmp287204
                                (let ((__tmp287205
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280672_ '()))))
                                  (declare (not safe))
                                  (cons _slot280673_ __tmp287205))))
                           (declare (not safe))
                           (cons _klass-id280674_ __tmp287204))))
                    (declare (not safe))
                    (cons '@mutator __tmp287203)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280657280665_ 'gxc#!mutator::t))
              (let* ((_e280661280679_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280657280665_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280682_ _e280661280679_)
                     (_e280662280684_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280657280665_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot280687_ _e280662280684_)
                     (_e280663280689_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280657280665_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?280692_ _e280663280689_))
                (declare (not safe))
                (_K280660280676_
                 _checked?280692_
                 _slot280687_
                 _klass-id280682_))
              (let () (declare (not safe)) (_E280659280669_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280482_)
        (let* ((_self280483280493_ _self280482_)
               (_E280485280497_
                (lambda () (error '"No clause matching" _self280483280493_)))
               (_K280486280508_
                (lambda (_typedecl280500_
                         _inline280501_
                         _dispatch280502_
                         _arity280503_)
                  (if _inline280501_
                      (let ((_$e280505_ _typedecl280500_))
                        (if _$e280505_
                            _$e280505_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp287206
                             (let ((__tmp287207
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280502_ '()))))
                               (declare (not safe))
                               (cons _arity280503_ __tmp287207))))
                        (declare (not safe))
                        (cons '@lambda __tmp287206))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280483280493_ 'gxc#!lambda::t))
              (let* ((_e280487280511_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280483280493_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280488280514_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280483280493_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280517_ _e280488280514_)
                     (_e280489280519_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280483280493_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch280522_ _e280489280519_)
                     (_e280490280524_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280483280493_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline280527_ _e280490280524_)
                     (_e280491280529_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280483280493_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl280532_ _e280491280529_))
                (declare (not safe))
                (_K280486280508_
                 _typedecl280532_
                 _inline280527_
                 _dispatch280522_
                 _arity280517_))
              (let () (declare (not safe)) (_E280485280497_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self280293_)
        (letrec ((_clause-e280295_
                  (lambda (_clause280325_)
                    (let* ((_clause280326280334_ _clause280325_)
                           (_E280328280338_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280326280334_)))
                           (_K280329280344_
                            (lambda (_dispatch280341_ _arity280342_)
                              (let ((__tmp287208
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280341_ '()))))
                                (declare (not safe))
                                (cons _arity280342_ __tmp287208)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause280326280334_
                             'gxc#!lambda::t))
                          (let* ((_e280330280347_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280326280334_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e280331280350_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280326280334_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity280353_ _e280331280350_)
                                 (_e280332280355_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280326280334_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch280358_ _e280332280355_))
                            (declare (not safe))
                            (_K280329280344_ _dispatch280358_ _arity280353_))
                          (let () (declare (not safe)) (_E280328280338_)))))))
          (let* ((_self280296280303_ _self280293_)
                 (_E280298280307_
                  (lambda () (error '"No clause matching" _self280296280303_)))
                 (_K280299280314_
                  (lambda (_clauses280310_)
                    (let ((_clauses280312_
                           (map _clause-e280295_ _clauses280310_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280312_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self280296280303_
                   'gxc#!case-lambda::t))
                (let* ((_e280300280317_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280296280303_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e280301280320_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280296280303_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses280323_ _e280301280320_))
                  (declare (not safe))
                  (_K280299280314_ _clauses280323_))
                (let () (declare (not safe)) (_E280298280307_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self280136_)
        (let* ((_self280137280145_ _self280136_)
               (_E280139280149_
                (lambda () (error '"No clause matching" _self280137280145_)))
               (_K280140280155_
                (lambda (_dispatch280152_ _table280153_)
                  (let ((__tmp287209
                         (let ((__tmp287210
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch280152_ '()))))
                           (declare (not safe))
                           (cons _table280153_ __tmp287210))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp287209)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280137280145_
                 'gxc#!kw-lambda::t))
              (let* ((_e280141280158_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280137280145_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280142280161_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280137280145_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table280164_ _e280142280161_)
                     (_e280143280166_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280137280145_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch280169_ _e280143280166_))
                (declare (not safe))
                (_K280140280155_ _dispatch280169_ _table280164_))
              (let () (declare (not safe)) (_E280139280149_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self279979_)
        (let* ((_self279980279988_ _self279979_)
               (_E279982279992_
                (lambda () (error '"No clause matching" _self279980279988_)))
               (_K279983279998_
                (lambda (_main279995_ _keys279996_)
                  (let ((__tmp287211
                         (let ((__tmp287212
                                (let ()
                                  (declare (not safe))
                                  (cons _main279995_ '()))))
                           (declare (not safe))
                           (cons _keys279996_ __tmp287212))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp287211)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self279980279988_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e279984280001_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279980279988_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279985280004_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279980279988_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys280007_ _e279985280004_)
                     (_e279986280009_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279980279988_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main280012_ _e279986280009_))
                (declare (not safe))
                (_K279983279998_ _main280012_ _keys280007_))
              (let () (declare (not safe)) (_E279982279992_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
