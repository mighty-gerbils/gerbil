(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda17599
      (lambda (_srcpath17601_ _opts17602_)
        (begin
          (if (string? _srcpath17601_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath17601_))
          (let ((_outdir17604_ (pgetq 'output-dir: _opts17602_))
                (_invoke-gsc?17605_ (pgetq 'invoke-gsc: _opts17602_))
                (_gsc-options17606_ (pgetq 'gsc-options: _opts17602_))
                (_keep-scm?17607_ (pgetq 'keep-scm: _opts17602_))
                (_verbosity17608_ (pgetq 'verbose: _opts17602_))
                (_optimize17609_ (pgetq 'optimize: _opts17602_))
                (_gen-ssxi17610_ (pgetq 'generate-ssxi: _opts17602_)))
            (begin
              (if _outdir17604_ (create-directory* _outdir17604_) '#!void)
              (if _optimize17609_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath17601_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath17601_))))
               gxc#current-compile-output-dir
               _outdir17604_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?17605_
               gxc#current-compile-gsc-options
               _gsc-options17606_
               gxc#current-compile-keep-scm
               _keep-scm?17607_
               gxc#current-compile-verbose
               _verbosity17608_
               gxc#current-compile-optimize
               _optimize17609_
               gxc#current-compile-generate-ssxi
               _gen-ssxi17610_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath17616_)
          (let ((_opts17618_ '()))
            (gxc#compile-file__opt-lambda17599 _srcpath17616_ _opts17618_))))
      (define gxc#compile-file
        (lambda _g17625_
          (let ((_g17624_ (length _g17625_)))
            (cond ((fx= _g17624_ 1) (apply gxc#compile-file__0 _g17625_))
                  ((fx= _g17624_ 2)
                   (apply gxc#compile-file__opt-lambda17599 _g17625_))
                  (else (error "No clause matching arguments" _g17625_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda17578
      (lambda (_srcpath17580_ _opts17581_)
        (begin
          (if (string? _srcpath17580_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath17580_))
          (let ((_outdir17583_ (pgetq 'output-dir: _opts17581_))
                (_invoke-gsc?17584_ (pgetq 'invoke-gsc: _opts17581_))
                (_gsc-options17585_ (pgetq 'gsc-options: _opts17581_))
                (_keep-scm?17586_ (pgetq 'keep-scm: _opts17581_))
                (_verbosity17587_ (pgetq 'verbose: _opts17581_)))
            (begin
              (if _outdir17583_ (create-directory* _outdir17583_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath17580_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath17580_)
                    _opts17581_)))
               gxc#current-compile-output-dir
               _outdir17583_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?17584_
               gxc#current-compile-gsc-options
               _gsc-options17585_
               gxc#current-compile-keep-scm
               _keep-scm?17586_
               gxc#current-compile-verbose
               _verbosity17587_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath17593_)
          (let ((_opts17595_ '()))
            (gxc#compile-exe-stub__opt-lambda17578
             _srcpath17593_
             _opts17595_))))
      (define gxc#compile-exe-stub
        (lambda _g17627_
          (let ((_g17626_ (length _g17627_)))
            (cond ((fx= _g17626_ 1) (apply gxc#compile-exe-stub__0 _g17627_))
                  ((fx= _g17626_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda17578 _g17627_))
                  (else (error "No clause matching arguments" _g17627_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx17472_ _opts17473_)
      (let ((_find-export-binding17475_
             (lambda (_id17529_ _exports17530_)
               (let ((_$e17576_
                      (find (lambda (_e1753117533_)
                              (let ((_g1753517545_ _e1753117533_))
                                (let ((_E1753817549_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1753517545_))))
                                  (let ((_else1753717553_ (lambda () '#f)))
                                    (let ((_K1753917557_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1753517545_)
                                          (let ((_e1754017560_
                                                 (##vector-ref
                                                  _g1753517545_
                                                  '1)))
                                            (let ((_e1754117563_
                                                   (##vector-ref
                                                    _g1753517545_
                                                    '2)))
                                              (let ((_e1754217566_
                                                     (##vector-ref
                                                      _g1753517545_
                                                      '3)))
                                                (if (##eq? _e1754217566_ '0)
                                                    (let ((_e1754317569_
                                                           (##vector-ref
                                                            _g1753517545_
                                                            '4)))
                                                      (if ((lambda (_g1757117573_)
                                                             (eq? _g1757117573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id17529_))
                   _e1754317569_)
                  (_K1753917557_)
                  (_else1753717553_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1753717553_)))))
                                          (_else1753717553_)))))))
                            _exports17530_)))
                 (if _$e17576_
                     (gx#core-resolve-module-export _$e17576_)
                     '#f)))))
        (let ((_generate-stub17476_
               (lambda ()
                 (let ((_mod-str17517_
                        (symbol->string
                         (##structure-ref
                          _ctx17472_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt17519_
                          (string-append _mod-str17517_ '"__rt")))
                     (let ((_mod-main17526_
                            (let ((_$e17521_
                                   (_find-export-binding17475_
                                    'main
                                    (##structure-ref
                                     _ctx17472_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e17521_
                                  ((lambda (_bind17524_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind17524_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind17524_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e17521_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx17472_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt17519_
                                              (cons (cons 'quote
                                                          (cons _mod-main17526_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub17477_
                 (lambda (_output-scm17504_ _output-bin17505_)
                   (let ((_init-stub17507_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args17509_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin17505_
                                              (cons _init-stub17507_
                                                    (cons _output-scm17504_
                                                          '())))))))
                       (let ((_proc17511_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args17509_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status17513_ (process-status _proc17511_)))
                           (let ()
                             (if (zero? _status17513_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm17504_
                                  _output-bin17505_
                                  _status17513_))))))))))
            (let ((_output-bin17499_
                   (let ((_$e17479_ (pgetq 'output-file: _opts17473_)))
                     (if _$e17479_
                         (values _$e17479_)
                         (let ((_mod-str17482_
                                (symbol->string
                                 (##structure-ref
                                  _ctx17472_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name17489_
                                  (let ((_$e17484_
                                         (string-rindex _mod-str17482_ '#\/)))
                                    (if _$e17484_
                                        ((lambda (_ix17487_)
                                           (substring
                                            _mod-str17482_
                                            (fx+ _ix17487_ '1)
                                            (string-length _mod-str17482_)))
                                         _$e17484_)
                                        _mod-str17482_))))
                             (let ()
                               (let ((_$e17492_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e17492_
                                     ((lambda (_g1749417496_)
                                        (path-expand
                                         _mod-name17489_
                                         _g1749417496_))
                                      _$e17492_)
                                     _mod-name17489_)))))))))
              (let ((_output-scm17501_
                     (string-append _output-bin17499_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm17501_
                     _generate-stub17476_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub17477_
                         _output-scm17501_
                         _output-bin17499_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm17501_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx17469_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx17469_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx17469_)
               '#!void)
           (gxc#collect-bindings _ctx17469_)
           (gxc#compile-runtime-code _ctx17469_)
           (gxc#compile-meta-code _ctx17469_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx17469_)
               '#!void)))
       gx#current-expander-context
       _ctx17469_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj17622 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj17622) __obj17622))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx17467_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx17467_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx17434_)
      (let ((_generate-runtime-code17437_
             (lambda (_ctx17452_ _code17453_)
               (let ((_runtime-code17456_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code17453_))
                       gx#current-expander-context
                       _ctx17452_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx17452_ '0 '".scm")
                  _runtime-code17456_)))))
        (let ((_generate-loader-code17438_
               (lambda (_ctx17442_ _code17443_ _rt17444_)
                 (let ((_loader-code17447_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code17443_))
                         gx#current-expander-context
                         _ctx17442_)))
                   (let ((_loader-code17449_
                          (if _rt17444_
                              (cons 'begin
                                    (cons _loader-code17447_
                                          (cons (cons 'load-module
                                                      (cons _rt17444_ '()))
                                                '())))
                              _loader-code17447_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx17442_ 'rt '".scm")
                        _loader-code17449_)))))))
          (let ((_compile117436_
                 (lambda (_ctx17458_)
                   (let ((_code17460_
                          (##structure-ref
                           _ctx17458_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt17464_
                            (if (gxc#apply-find-runtime-code _code17460_)
                                (let ((_idstr17462_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx17458_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr17462_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt17464_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx17458_
                                  _rt17464_)
                                 (_generate-runtime-code17437_
                                  _ctx17458_
                                  _code17460_))
                               '#!void)
                           (_generate-loader-code17438_
                            _ctx17458_
                            _code17460_
                            _rt17464_))))))))
            (let ((_all-modules17440_
                   (cons _ctx17434_ (gxc#lift-nested-modules _ctx17434_))))
              (for-each _compile117436_ _all-modules17440_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx17336_)
      (let ((_compile-ssi17338_
             (lambda (_code17404_)
               (let ((_path17406_
                      (gxc#compile-output-file _ctx17336_ '#f '".ssi")))
                 (let ((_prelude17417_
                        (let ((_super17408_
                               (##structure-ref
                                _ctx17336_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e17410_
                                 (##structure-ref
                                  _super17408_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e17410_
                                ((lambda (_g1741217414_)
                                   (make-symbol '":" _g1741217414_))
                                 _$e17410_)
                                ':<root>)))))
                   (let ((_ns17419_
                          (##structure-ref
                           _ctx17336_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr17421_
                            (symbol->string
                             (##structure-ref
                              _ctx17336_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg17428_
                              (let ((_$e17423_
                                     (string-rindex _idstr17421_ '#\/)))
                                (if _$e17423_
                                    ((lambda (_x17426_)
                                       (string->symbol
                                        (substring _idstr17421_ '0 _x17426_)))
                                     _$e17423_)
                                    '#f))))
                         (let ((_rt17430_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx17336_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path17406_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path17406_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude17417_)
                                    (if _pkg17428_
                                        (displayln '"package:" '" " _pkg17428_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns17419_)
                                    (newline)
                                    (pretty-print _code17404_)
                                    (if _rt17430_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt17430_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi17339_
               (lambda (_part17344_)
                 (let ((_part1734517358_ _part17344_))
                   (let ((_E1734717362_
                          (lambda ()
                            (error '"No clause matching" _part1734517358_))))
                     (let ((_K1734817373_
                            (lambda (_code17365_
                                     _n17366_
                                     _phi17367_
                                     _phi-ctx17368_)
                              (let ((_code17371_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code17365_))
                                      gx#current-expander-context
                                      _phi-ctx17368_
                                      gx#current-expander-phi
                                      _phi17367_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx17336_
                                  _n17366_
                                  '".scm")
                                 _code17371_)))))
                       (if (##pair? _part1734517358_)
                           (let ((_hd1734917376_ (##car _part1734517358_))
                                 (_tl1735017378_ (##cdr _part1734517358_)))
                             (let ((_phi-ctx17381_ _hd1734917376_))
                               (if (##pair? _tl1735017378_)
                                   (let ((_hd1735117383_
                                          (##car _tl1735017378_))
                                         (_tl1735217385_
                                          (##cdr _tl1735017378_)))
                                     (let ((_phi17388_ _hd1735117383_))
                                       (if (##pair? _tl1735217385_)
                                           (let ((_hd1735317390_
                                                  (##car _tl1735217385_))
                                                 (_tl1735417392_
                                                  (##cdr _tl1735217385_)))
                                             (let ((_n17395_ _hd1735317390_))
                                               (if (##pair? _tl1735417392_)
                                                   (let ((_hd1735517397_
                                                          (##car _tl1735417392_))
                                                         (_tl1735617399_
                                                          (##cdr _tl1735417392_)))
                                                     (let ((_code17402_
                                                            _hd1735517397_))
                                                       (if (##null? _tl1735617399_)
                                                           (_K1734817373_
                                                            _code17402_
                                                            _n17395_
                                                            _phi17388_
                                                            _phi-ctx17381_)
                                                           (_E1734717362_))))
                                                   (_E1734717362_))))
                                           (_E1734717362_))))
                                   (_E1734717362_))))
                           (_E1734717362_))))))))
          (let ((_g17628_ (gxc#generate-meta-code _ctx17336_)))
            (begin
              (let ((_g17629_ (values-count _g17628_)))
                (if (not (fx= _g17629_ 2))
                    (error "Context expects 2 values" _g17629_)))
              (let ((_ssi-code17341_ (values-ref _g17628_ 0))
                    (_phi-code17342_ (values-ref _g17628_ 1)))
                (begin
                  (_compile-ssi17338_ _ssi-code17341_)
                  (for-each _compile-phi17339_ _phi-code17342_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx17319_)
      (let ((_path17321_ (gxc#compile-output-file _ctx17319_ '#f '".ssxi.ss")))
        (let ((_code17323_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx17319_ '11 gx#module-context::t '#f))))
          (let ((_idstr17325_
                 (symbol->string
                  (##structure-ref _ctx17319_ '1 gx#expander-context::t '#f))))
            (let ((_pkg17332_
                   (let ((_$e17327_ (string-rindex _idstr17325_ '#\/)))
                     (if _$e17327_
                         ((lambda (_x17330_)
                            (string->symbol
                             (substring _idstr17325_ '0 _x17330_)))
                          _$e17327_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path17321_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path17321_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg17332_
                           (displayln '"package: " _pkg17332_)
                           '#!void)
                       (newline)
                       (pretty-print _code17323_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx17312_)
      (let ((_state17314_
             (let ((__obj17623 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj17623 _ctx17312_)
                 __obj17623))))
        (let ((_ssi-code17316_
               (gxc#apply-generate-meta
                (##structure-ref _ctx17312_ '11 gx#module-context::t '#f)
                _state17314_)))
          (let ()
            (values _ssi-code17316_ (gxc#meta-state-end! _state17314_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx17305_)
      (let ((_lifts17307_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code17310_ (gxc#apply-generate-runtime-phi _stx17305_)))
             (if (null? (unbox _lifts17307_))
                 _code17310_
                 (cons 'begin
                       (foldr cons
                              (cons _code17310_ '())
                              (reverse (unbox _lifts17307_)))))))
         gxc#current-compile-lift
         _lifts17307_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx17301_)
      (let ((_modules17303_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx17301_ '11 gx#module-context::t '#f)
           _modules17303_)
          (reverse (unbox _modules17303_))))))
  (define gxc#compile-scm-file
    (lambda (_path17297_ _code17298_)
      (begin
        (gxc#verbose '"compile " _path17297_)
        (with-output-to-file
         (cons 'path: (cons _path17297_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code17298_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path17297_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path17297_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path17283_)
      (let ((_gsc-args17290_
             (let ((_$e17285_ (gxc#current-compile-gsc-options)))
               (if _$e17285_
                   ((lambda (_opts17288_)
                      (foldr cons (cons _path17283_ '()) _opts17288_))
                    _$e17285_)
                   (cons _path17283_ '())))))
        (let ((_proc17292_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args17290_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status17294_ (process-status _proc17292_)))
            (let ()
              (if (zero? _status17294_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path17283_
                   _status17294_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx17255_ _n17256_ _ext17257_)
      (let ((_module-relative-path17259_
             (lambda (_ctx17281_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx17281_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory17260_
               (lambda (_ctx17277_)
                 (path-directory
                  (let ((_mpath17279_
                         (##structure-ref
                          _ctx17277_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath17279_)
                        _mpath17279_
                        (last _mpath17279_)))))))
          (let ((_section-string17261_
                 (lambda (_n17275_)
                   (if (number? _n17275_)
                       (number->string _n17275_)
                       (if (symbol? _n17275_)
                           (symbol->string _n17275_)
                           (if (string? _n17275_)
                               _n17275_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n17275_)))))))
            (let ((_file-name17262_
                   (lambda (_path17273_)
                     (if _n17256_
                         (string-append
                          _path17273_
                          '"__"
                          (_section-string17261_ _n17256_)
                          _ext17257_)
                         (string-append _path17273_ _ext17257_)))))
              (let ((_file-path17263_
                     (lambda ()
                       (let ((_$e17268_ (gxc#current-compile-output-dir)))
                         (if _$e17268_
                             ((lambda (_outdir17271_)
                                (path-expand
                                 (_file-name17262_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx17255_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir17271_))
                              _$e17268_)
                             (path-expand
                              (_file-name17262_
                               (_module-relative-path17259_ _ctx17255_))
                              (_module-source-directory17260_ _ctx17255_)))))))
                (let ((_path17265_ (_file-path17263_)))
                  (begin
                    (create-directory* (path-directory _path17265_))
                    _path17265_))))))))))
