(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda24450
      (lambda (_srcpath24452_ _opts24453_)
        (begin
          (if (string? _srcpath24452_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24452_))
          (let ((_outdir24455_ (pgetq 'output-dir: _opts24453_))
                (_invoke-gsc?24456_ (pgetq 'invoke-gsc: _opts24453_))
                (_gsc-options24457_ (pgetq 'gsc-options: _opts24453_))
                (_keep-scm?24458_ (pgetq 'keep-scm: _opts24453_))
                (_verbosity24459_ (pgetq 'verbose: _opts24453_))
                (_optimize24460_ (pgetq 'optimize: _opts24453_))
                (_debug24461_ (pgetq 'debug: _opts24453_))
                (_gen-ssxi24462_ (pgetq 'generate-ssxi: _opts24453_))
                (_static24463_ (pgetq 'static: _opts24453_)))
            (begin
              (if _outdir24455_ (create-directory* _outdir24455_) '#!void)
              (if _optimize24460_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24452_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24452_))))
               gxc#current-compile-output-dir
               _outdir24455_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24456_
               gxc#current-compile-gsc-options
               _gsc-options24457_
               gxc#current-compile-keep-scm
               _keep-scm?24458_
               gxc#current-compile-verbose
               _verbosity24459_
               gxc#current-compile-optimize
               _optimize24460_
               gxc#current-compile-debug
               _debug24461_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24462_
               gxc#current-compile-static
               _static24463_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24469_)
          (let ((_opts24471_ '()))
            (gxc#compile-file__opt-lambda24450 _srcpath24469_ _opts24471_))))
      (define gxc#compile-file
        (lambda _g24479_
          (let ((_g24478_ (length _g24479_)))
            (cond ((fx= _g24478_ 1) (apply gxc#compile-file__0 _g24479_))
                  ((fx= _g24478_ 2)
                   (apply gxc#compile-file__opt-lambda24450 _g24479_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24479_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda24436
      (lambda (_srcpath24438_ _opts24439_)
        (gxc#do-compile-exe
         _srcpath24438_
         _opts24439_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24444_)
          (let ((_opts24446_ '()))
            (gxc#compile-exe-stub__opt-lambda24436
             _srcpath24444_
             _opts24446_))))
      (define gxc#compile-exe-stub
        (lambda _g24481_
          (let ((_g24480_ (length _g24481_)))
            (cond ((fx= _g24480_ 1) (apply gxc#compile-exe-stub__0 _g24481_))
                  ((fx= _g24480_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda24436 _g24481_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24481_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda24422
      (lambda (_srcpath24424_ _opts24425_)
        (gxc#do-compile-exe
         _srcpath24424_
         _opts24425_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24430_)
          (let ((_opts24432_ '()))
            (gxc#compile-static-exe__opt-lambda24422
             _srcpath24430_
             _opts24432_))))
      (define gxc#compile-static-exe
        (lambda _g24483_
          (let ((_g24482_ (length _g24483_)))
            (cond ((fx= _g24482_ 1) (apply gxc#compile-static-exe__0 _g24483_))
                  ((fx= _g24482_ 2)
                   (apply gxc#compile-static-exe__opt-lambda24422 _g24483_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24483_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24412_ _opts24413_ _compile-e24414_)
      (begin
        (if (string? _srcpath24412_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24412_))
        (let ((_outdir24416_ (pgetq 'output-dir: _opts24413_))
              (_invoke-gsc?24417_ (pgetq 'invoke-gsc: _opts24413_))
              (_gsc-options24418_ (pgetq 'gsc-options: _opts24413_))
              (_keep-scm?24419_ (pgetq 'keep-scm: _opts24413_))
              (_verbosity24420_ (pgetq 'verbose: _opts24413_)))
          (begin
            (if _outdir24416_ (create-directory* _outdir24416_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24412_)
                 (_compile-e24414_
                  (gx#import-module__0 _srcpath24412_)
                  _opts24413_)))
             gxc#current-compile-output-dir
             _outdir24416_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24417_
             gxc#current-compile-gsc-options
             _gsc-options24418_
             gxc#current-compile-keep-scm
             _keep-scm?24419_
             gxc#current-compile-verbose
             _verbosity24420_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24376_ _opts24377_)
      (letrec ((_generate-stub24379_
                (lambda ()
                  (let* ((_mod-str24405_
                          (symbol->string
                           (##structure-ref
                            _ctx24376_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24407_ (string-append _mod-str24405_ '"__rt"))
                         (_mod-main24409_
                          (gxc#find-runtime-symbol _ctx24376_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24407_
                                         (cons (cons 'quote
                                                     (cons _mod-main24409_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24380_
                (lambda (_output-scm24387_ _output-bin24388_)
                  (let* ((_init-stub24390_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24392_ (gxc#compile-cache-directory))
                         (_init-stub24394_
                          (gxc#compile-cache
                           _init-stub24390_
                           _gxc-cache24392_))
                         (_gsc-args24396_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24388_
                                            (cons _init-stub24394_
                                                  (cons _output-scm24387_
                                                        '()))))))
                         (_g24484_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24396_)))
                         (_proc24399_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24396_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24401_ (process-status _proc24399_)))
                    (if (zero? _status24401_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24387_
                         _output-bin24388_
                         _status24401_))))))
        (let* ((_output-bin24382_
                (gxc#compile-exe-output-file _ctx24376_ _opts24377_))
               (_output-scm24384_ (string-append _output-bin24382_ '".scm")))
          (begin
            (with-output-to-file _output-scm24384_ _generate-stub24379_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24380_ _output-scm24384_ _output-bin24382_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24384_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24308_ _opts24309_)
      (letrec ((_generate-stub24311_
                (lambda ()
                  (let ((_mod-main24374_
                         (gxc#find-runtime-symbol _ctx24308_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main24374_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub24312_
                (lambda (_output-scm24319_ _output-bin24320_)
                  (let* ((_gerbil-home24322_ (getenv '"GERBIL_HOME"))
                         (_gx-version24324_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24322_))
                         (_gx-gambc024326_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24322_))
                         (_gx-gambc-init24328_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24322_))
                         (_gx-gambc-macros24330_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24322_))
                         (_include-gx-gambc-macros24332_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24330_
                           '"\")"))
                         (_bin-scm24334_
                          (gxc#find-static-module-file _ctx24308_))
                         (_deps24336_
                          (gxc#find-runtime-module-deps _ctx24308_))
                         (_deps24338_
                          (map gxc#find-static-module-file _deps24336_))
                         (_deps24343_
                          (filter (lambda (_$obj24340_)
                                    (not (gxc#file-empty? _$obj24340_)))
                                  _deps24338_))
                         (_gxc-cache24345_ (gxc#compile-cache-directory))
                         (_g24485_
                          (gxc#compile-cache
                           _gx-version24324_
                           _gxc-cache24345_))
                         (_gx-gambc024348_
                          (gxc#compile-cache
                           _gx-gambc024326_
                           _gxc-cache24345_))
                         (_gx-gambc-init24350_
                          (gxc#compile-cache
                           _gx-gambc-init24328_
                           _gxc-cache24345_))
                         (_deps24356_
                          (map (lambda (_g2435124353_)
                                 (gxc#compile-cache
                                  _g2435124353_
                                  _gxc-cache24345_))
                               _deps24343_))
                         (_bin-scm24358_
                          (gxc#compile-cache _bin-scm24334_ _gxc-cache24345_))
                         (_gsc-opts24363_
                          (let ((_$e24360_ (pgetq 'gsc-options: _opts24309_)))
                            (if _$e24360_ _$e24360_ '())))
                         (_gsc-args24365_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24320_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros24332_
                                (cons _gx-gambc024348_
                                      (cons _gx-gambc-init24350_
                                            (foldr1 cons
                                                    (cons _bin-scm24358_
                                                          (cons _output-scm24319_
                                                                '()))
                                                    _deps24356_)))))
                    _gsc-opts24363_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24486_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24365_)))
                         (_proc24368_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24365_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24370_ (process-status _proc24368_)))
                    (if (zero? _status24370_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24319_
                         _output-bin24320_
                         _status24370_))))))
        (let* ((_output-bin24314_
                (gxc#compile-exe-output-file _ctx24308_ _opts24309_))
               (_output-scm24316_ (string-append _output-bin24314_ '".scm")))
          (begin
            (with-output-to-file _output-scm24316_ _generate-stub24311_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24312_ _output-scm24316_ _output-bin24314_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24316_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24303_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24305_ (path-expand '"gxc" _cachedir24303_)))
        (begin
          (create-directory* _gxc-cache24305_)
          (path-normalize _gxc-cache24305_)))))
  (define gxc#compile-cache
    (lambda (_file24297_ _gxc-cache24298_)
      (let ((_cachefile24300_
             (path-expand
              (path-strip-directory _file24297_)
              _gxc-cache24298_)))
        (begin
          (if (file-exists? _cachefile24300_)
              (if (file-newer? _file24297_ _cachefile24300_)
                  (begin
                    (delete-file _cachefile24300_)
                    (copy-file _file24297_ _cachefile24300_))
                  '#!void)
              (copy-file _file24297_ _cachefile24300_))
          _cachefile24300_))))
  (define gxc#find-export-binding
    (lambda (_ctx24247_ _id24248_)
      (let ((_$e24294_
             (find (lambda (_e2424924251_)
                     (let* ((_g2425324263_ _e2424924251_)
                            (_E2425624267_
                             (lambda ()
                               (error '"No clause matching" _g2425324263_)))
                            (_else2425524271_ (lambda () '#f))
                            (_K2425724275_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2425324263_
                            (##type-id gx#module-export::t))
                           (let* ((_e2425824278_
                                   (##vector-ref _g2425324263_ '1))
                                  (_e2425924281_
                                   (##vector-ref _g2425324263_ '2))
                                  (_e2426024284_
                                   (##vector-ref _g2425324263_ '3)))
                             (if (##eq? _e2426024284_ '0)
                                 (let ((_e2426124287_
                                        (##vector-ref _g2425324263_ '4)))
                                   (if ((lambda (_g2428924291_)
                                          (eq? _g2428924291_ _id24248_))
                                        _e2426124287_)
                                       (_K2425724275_)
                                       (_else2425524271_)))
                                 (_else2425524271_)))
                           (_else2425524271_))))
                   (##structure-ref _ctx24247_ '9 gx#module-context::t '#f))))
        (if _$e24294_ (gx#core-resolve-module-export _$e24294_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24239_ _id24240_)
      (let ((_$e24242_ (gxc#find-export-binding _ctx24239_ _id24240_)))
        (if _$e24242_
            ((lambda (_bind24245_)
               (begin
                 (if (##structure-instance-of?
                      _bind24245_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24240_))
                 (##structure-ref _bind24245_ '1 gx#binding::t '#f)))
             _$e24242_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24239_ '1 gx#expander-context::t '#f)
             _id24240_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24126_)
      (letrec* ((_ht24128_ (make-hash-table-eq))
                (_import-set-template24129_
                 (lambda (_in24191_ _phi24192_)
                   (let ((_iphi24194_
                          (fx+ _phi24192_
                               (##direct-structure-ref
                                _in24191_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports24195_
                          (##structure-ref
                           (##direct-structure-ref
                            _in24191_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp24197_ ((_rest24199_ _imports24195_)
                                     (_r24200_ '()))
                       (let* ((_rest2420124209_ _rest24199_)
                              (_E2420424213_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2420124209_)))
                              (_else2420324217_ (lambda () _r24200_))
                              (_K2420524227_
                               (lambda (_rest24220_ _in24221_)
                                 (if (##structure-instance-of?
                                      _in24221_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi24194_)
                                         (_lp24197_
                                          _rest24220_
                                          (cons _in24221_ _r24200_))
                                         (_lp24197_ _rest24220_ _r24200_))
                                     (if (##structure-direct-instance-of?
                                          _in24221_
                                          'gx#module-import::t)
                                         (let ((_iphi24223_
                                                (fx+ _phi24192_
                                                     (##direct-structure-ref
                                                      _in24221_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi24223_)
                                               (_lp24197_
                                                _rest24220_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in24221_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r24200_))
                                               (_lp24197_
                                                _rest24220_
                                                _r24200_)))
                                         (if (##structure-direct-instance-of?
                                              _in24221_
                                              'gx#import-set::t)
                                             (let ((_xphi24225_
                                                    (fx+ _iphi24194_
                                                         (##direct-structure-ref
                                                          _in24221_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi24225_)
                                                   (_lp24197_
                                                    _rest24220_
                                                    (cons (##direct-structure-ref
                                                           _in24221_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r24200_))
                                                   (if (fxpositive?
                                                        _xphi24225_)
                                                       (_lp24197_
                                                        _rest24220_
                                                        (foldl1 cons
                                                                _r24200_
                                                                (_import-set-template24129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in24221_
                         _iphi24194_)))
               (_lp24197_ _rest24220_ _r24200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp24197_
                                              _rest24220_
                                              _r24200_)))))))
                         (if (##pair? _rest2420124209_)
                             (let ((_hd2420624230_ (##car _rest2420124209_))
                                   (_tl2420724232_ (##cdr _rest2420124209_)))
                               (let* ((_in24235_ _hd2420624230_)
                                      (_rest24237_ _tl2420724232_))
                                 (_K2420524227_ _rest24237_ _in24235_)))
                             (_else2420324217_)))))))
                (_find-deps24130_
                 (lambda (_rest24137_ _deps24138_)
                   (let* ((_rest2413924147_ _rest24137_)
                          (_E2414224151_
                           (lambda ()
                             (error '"No clause matching" _rest2413924147_)))
                          (_else2414124155_ (lambda () _deps24138_))
                          (_K2414324179_
                           (lambda (_rest24158_ _hd24159_)
                             (if (##structure-instance-of?
                                  _hd24159_
                                  'gx#module-context::t)
                                 (let ((_id24161_
                                        (##structure-ref
                                         _hd24159_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24162_
                                        (##structure-ref
                                         _hd24159_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24128_ _id24161_ '#f)
                                       (_find-deps24130_
                                        _rest24158_
                                        _deps24138_)
                                       (let ((_$e24164_
                                              (gx#core-context-prelude__opt-lambda13205
                                               _hd24159_)))
                                         (if _$e24164_
                                             ((lambda (_pre24167_)
                                                (let ((_xdeps24169_
                                                       (_find-deps24130_
                                                        (cons _pre24167_
                                                              _imports24162_)
                                                        _deps24138_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24128_
                                                     _id24161_
                                                     _hd24159_)
                                                    (_find-deps24130_
                                                     _rest24158_
                                                     (cons _hd24159_
                                                           _xdeps24169_)))))
                                              _$e24164_)
                                             (let ((_xdeps24171_
                                                    (_find-deps24130_
                                                     _imports24162_
                                                     _deps24138_)))
                                               (begin
                                                 (table-set!
                                                  _ht24128_
                                                  _id24161_
                                                  _hd24159_)
                                                 (_find-deps24130_
                                                  _rest24158_
                                                  (cons _hd24159_
                                                        _xdeps24171_))))))))
                                 (if (##structure-instance-of?
                                      _hd24159_
                                      'gx#prelude-context::t)
                                     (let ((_id24173_
                                            (##structure-ref
                                             _hd24159_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24128_ _id24173_ '#f)
                                           (_find-deps24130_
                                            _rest24158_
                                            _deps24138_)
                                           (let ((_xdeps24175_
                                                  (_find-deps24130_
                                                   (##structure-ref
                                                    _hd24159_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24138_)))
                                             (if (table-ref
                                                  _ht24128_
                                                  _id24173_
                                                  '#f)
                                                 (_find-deps24130_
                                                  _rest24158_
                                                  _xdeps24175_)
                                                 (begin
                                                   (table-set!
                                                    _ht24128_
                                                    _id24173_
                                                    _hd24159_)
                                                   (_find-deps24130_
                                                    _rest24158_
                                                    (cons _hd24159_
                                                          _xdeps24175_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24159_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24159_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24130_
                                              (cons (##direct-structure-ref
                                                     _hd24159_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24158_)
                                              _deps24138_)
                                             (_find-deps24130_
                                              _rest24158_
                                              _deps24138_))
                                         (if (##structure-direct-instance-of?
                                              _hd24159_
                                              'gx#module-export::t)
                                             (_find-deps24130_
                                              (cons (##direct-structure-ref
                                                     _hd24159_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24158_)
                                              _deps24138_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24159_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24159_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24130_
                                                      (cons (##direct-structure-ref
                                                             _hd24159_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24158_)
                                                      _deps24138_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd24159_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps24177_
                                                                (_import-set-template24129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24159_
                         '0)))
                   (_find-deps24130_
                    (foldl1 cons _rest24158_ _xdeps24177_)
                    _deps24138_))
                 (_find-deps24130_ _rest24158_ _deps24138_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd24159_)))))))))
                     (if (##pair? _rest2413924147_)
                         (let ((_hd2414424182_ (##car _rest2413924147_))
                               (_tl2414524184_ (##cdr _rest2413924147_)))
                           (let* ((_hd24187_ _hd2414424182_)
                                  (_rest24189_ _tl2414524184_))
                             (_K2414324179_ _rest24189_ _hd24187_)))
                         (_else2414124155_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24130_
                          (let ((_$e24132_
                                 (gx#core-context-prelude__opt-lambda13205
                                  _ctx24126_)))
                            (if _$e24132_
                                ((lambda (_pre24135_)
                                   (cons _pre24135_
                                         (##structure-ref
                                          _ctx24126_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24132_)
                                (##structure-ref
                                 _ctx24126_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24065_)
      (let* ((_scm24067_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24065_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24069_ (gx#current-expander-module-library-path))
             (_dirs24078_
              (let ((_$e24071_ (gxc#current-compile-output-dir)))
                (if _$e24071_
                    ((lambda (_g2407324075_) (cons _g2407324075_ _dirs24069_))
                     _$e24071_)
                    _dirs24069_)))
             (_dirs24084_
              (map (lambda (_g2407924081_)
                     (path-expand '"static" _g2407924081_))
                   _dirs24078_)))
        (let _lp24087_ ((_rest24089_ _dirs24084_))
          (let* ((_rest2409024098_ _rest24089_)
                 (_E2409324102_
                  (lambda () (error '"No clause matching" _rest2409024098_)))
                 (_else2409224106_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24065_ '1 gx#expander-context::t '#f)
                     _scm24067_)))
                 (_K2409424114_
                  (lambda (_rest24109_ _dir24110_)
                    (let ((_path24112_ (path-expand _scm24067_ _dir24110_)))
                      (if (file-exists? _path24112_)
                          _path24112_
                          (_lp24087_ _rest24109_))))))
            (if (##pair? _rest2409024098_)
                (let ((_hd2409524117_ (##car _rest2409024098_))
                      (_tl2409624119_ (##cdr _rest2409024098_)))
                  (let* ((_dir24122_ _hd2409524117_)
                         (_rest24124_ _tl2409624119_))
                    (_K2409424114_ _rest24124_ _dir24122_)))
                (_else2409224106_)))))))
  (define gxc#file-empty?
    (lambda (_path24063_)
      (zero? (file-info-size (file-info _path24063_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24060_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24060_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24060_)
               '#!void)
           (gxc#collect-bindings _ctx24060_)
           (gxc#compile-runtime-code _ctx24060_)
           (gxc#compile-meta-code _ctx24060_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24060_)
               '#!void)))
       gx#current-expander-context
       _ctx24060_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24476 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24476) __obj24476))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24058_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24058_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx24013_)
      (letrec ((_compile124015_
                (lambda (_ctx24047_)
                  (let* ((_code24049_
                          (##structure-ref
                           _ctx24047_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24053_
                          (if (gxc#apply-find-runtime-code _code24049_)
                              (let ((_idstr24051_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24047_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24051_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24053_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24047_
                             _rt24053_)
                            (_generate-runtime-code24016_
                             _ctx24047_
                             _code24049_))
                          (if (gxc#current-compile-static)
                              (let ((_path24056_
                                     (gxc#compile-static-output-file
                                      _ctx24047_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24056_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24017_
                       _ctx24047_
                       _code24049_
                       _rt24053_)))))
               (_generate-runtime-code24016_
                (lambda (_ctx24031_ _code24032_)
                  (let* ((_lifts24034_ (box '()))
                         (_runtime-code24037_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24032_))
                           gx#current-expander-context
                           _ctx24031_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts24034_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code24039_
                          (if (null? (unbox _lifts24034_))
                              _runtime-code24037_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code24037_ '())
                                            (reverse (unbox _lifts24034_))))))
                         (_scm024041_
                          (gxc#compile-output-file _ctx24031_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24044_
                               (gxc#compile-static-output-file _ctx24031_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024041_
                                _runtime-code24039_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24044_)
                                (delete-file _scms24044_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024041_
                             '" => "
                             _scms24044_)
                            (copy-file _scm024041_ _scms24044_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024041_))))
                        (gxc#compile-scm-file
                         _scm024041_
                         _runtime-code24039_)))))
               (_generate-loader-code24017_
                (lambda (_ctx24021_ _code24022_ _rt24023_)
                  (let* ((_loader-code24026_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code24022_))
                           gx#current-expander-context
                           _ctx24021_))
                         (_loader-code24028_
                          (if _rt24023_
                              (cons 'begin
                                    (cons _loader-code24026_
                                          (cons (cons 'load-module
                                                      (cons _rt24023_ '()))
                                                '())))
                              _loader-code24026_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx24021_ 'rt '".scm")
                     _loader-code24028_)))))
        (let ((_all-modules24019_
               (cons _ctx24013_ (gxc#lift-nested-modules _ctx24013_))))
          (for-each _compile124015_ _all-modules24019_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx23915_)
      (letrec ((_compile-ssi23917_
                (lambda (_code23983_)
                  (let* ((_path23985_
                          (gxc#compile-output-file _ctx23915_ '#f '".ssi"))
                         (_prelude23996_
                          (let* ((_super23987_
                                  (##structure-ref
                                   _ctx23915_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e23989_
                                  (##structure-ref
                                   _super23987_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e23989_
                                ((lambda (_g2399123993_)
                                   (make-symbol '":" _g2399123993_))
                                 _$e23989_)
                                ':<root>)))
                         (_ns23998_
                          (##structure-ref
                           _ctx23915_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr24000_
                          (symbol->string
                           (##structure-ref
                            _ctx23915_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg24007_
                          (let ((_$e24002_ (string-rindex _idstr24000_ '#\/)))
                            (if _$e24002_
                                ((lambda (_x24005_)
                                   (string->symbol
                                    (substring _idstr24000_ '0 _x24005_)))
                                 _$e24002_)
                                '#f)))
                         (_rt24009_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx23915_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path23985_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path23985_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude23996_)
                           (if _pkg24007_
                               (displayln '"package:" '" " _pkg24007_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns23998_)
                           (newline)
                           (pretty-print _code23983_)
                           (if _rt24009_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt24009_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi23918_
                (lambda (_part23923_)
                  (let* ((_part2392423937_ _part23923_)
                         (_E2392623941_
                          (lambda ()
                            (error '"No clause matching" _part2392423937_)))
                         (_K2392723952_
                          (lambda (_code23944_
                                   _n23945_
                                   _phi23946_
                                   _phi-ctx23947_)
                            (let ((_code23950_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code23944_))
                                    gx#current-expander-context
                                    _phi-ctx23947_
                                    gx#current-expander-phi
                                    _phi23946_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx23915_
                                _n23945_
                                '".scm")
                               _code23950_)))))
                    (if (##pair? _part2392423937_)
                        (let ((_hd2392823955_ (##car _part2392423937_))
                              (_tl2392923957_ (##cdr _part2392423937_)))
                          (let ((_phi-ctx23960_ _hd2392823955_))
                            (if (##pair? _tl2392923957_)
                                (let ((_hd2393023962_ (##car _tl2392923957_))
                                      (_tl2393123964_ (##cdr _tl2392923957_)))
                                  (let ((_phi23967_ _hd2393023962_))
                                    (if (##pair? _tl2393123964_)
                                        (let ((_hd2393223969_
                                               (##car _tl2393123964_))
                                              (_tl2393323971_
                                               (##cdr _tl2393123964_)))
                                          (let ((_n23974_ _hd2393223969_))
                                            (if (##pair? _tl2393323971_)
                                                (let ((_hd2393423976_
                                                       (##car _tl2393323971_))
                                                      (_tl2393523978_
                                                       (##cdr _tl2393323971_)))
                                                  (let ((_code23981_
                                                         _hd2393423976_))
                                                    (if (##null? _tl2393523978_)
                                                        (_K2392723952_
                                                         _code23981_
                                                         _n23974_
                                                         _phi23967_
                                                         _phi-ctx23960_)
                                                        (_E2392623941_))))
                                                (_E2392623941_))))
                                        (_E2392623941_))))
                                (_E2392623941_))))
                        (_E2392623941_))))))
        (let ((_g24487_ (gxc#generate-meta-code _ctx23915_)))
          (begin
            (let ((_g24488_ (values-count _g24487_)))
              (if (not (fx= _g24488_ 2))
                  (error "Context expects 2 values" _g24488_)))
            (let ((_ssi-code23920_ (values-ref _g24487_ 0))
                  (_phi-code23921_ (values-ref _g24487_ 1)))
              (begin
                (_compile-ssi23917_ _ssi-code23920_)
                (for-each _compile-phi23918_ _phi-code23921_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx23898_)
      (let* ((_path23900_ (gxc#compile-output-file _ctx23898_ '#f '".ssxi.ss"))
             (_code23902_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx23898_ '11 gx#module-context::t '#f)))
             (_idstr23904_
              (symbol->string
               (##structure-ref _ctx23898_ '1 gx#expander-context::t '#f)))
             (_pkg23911_
              (let ((_$e23906_ (string-rindex _idstr23904_ '#\/)))
                (if _$e23906_
                    ((lambda (_x23909_)
                       (string->symbol (substring _idstr23904_ '0 _x23909_)))
                     _$e23906_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path23900_)
          (with-output-to-file
           (cons 'path:
                 (cons _path23900_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg23911_ (displayln '"package: " _pkg23911_) '#!void)
               (newline)
               (pretty-print _code23902_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx23891_)
      (let* ((_state23893_
              (let ((__obj24477 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24477 _ctx23891_)
                  __obj24477)))
             (_ssi-code23895_
              (gxc#apply-generate-meta
               (##structure-ref _ctx23891_ '11 gx#module-context::t '#f)
               _state23893_)))
        (values _ssi-code23895_ (gxc#meta-state-end! _state23893_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx23884_)
      (let ((_lifts23886_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code23889_ (gxc#apply-generate-runtime-phi _stx23884_)))
             (if (null? (unbox _lifts23886_))
                 _code23889_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code23889_ '())
                               (reverse (unbox _lifts23886_)))))))
         gxc#current-compile-lift
         _lifts23886_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx23880_)
      (let ((_modules23882_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx23880_ '11 gx#module-context::t '#f)
           _modules23882_)
          (reverse (unbox _modules23882_))))))
  (define gxc#compile-scm-file
    (lambda (_path23876_ _code23877_)
      (begin
        (gxc#verbose '"compile " _path23876_)
        (with-output-to-file
         (cons 'path: (cons _path23876_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code23877_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path23876_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path23876_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e23868_ (gxc#current-compile-debug)))
        (if _$e23868_
            ((lambda (_debug23871_)
               (let ((_$e23873_ _debug23871_))
                 (if (eq? _$e23873_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e23873_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e23873_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug23871_))))))
             _$e23868_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path23850_)
      (let* ((_gsc-args23857_
              (let ((_$e23852_ (gxc#current-compile-gsc-options)))
                (if _$e23852_
                    ((lambda (_opts23855_)
                       (foldr1 cons (cons _path23850_ '()) _opts23855_))
                     _$e23852_)
                    (cons _path23850_ '()))))
             (_gsc-args23859_
              (foldr1 cons _gsc-args23857_ (gxc#gsc-debug-options)))
             (_g24489_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args23859_)))
             (_proc23862_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args23859_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status23864_ (process-status _proc23862_)))
        (if (zero? _status23864_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path23850_
             _status23864_)))))
  (define gxc#compile-output-file
    (lambda (_ctx23822_ _n23823_ _ext23824_)
      (letrec ((_module-relative-path23826_
                (lambda (_ctx23848_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx23848_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory23827_
                (lambda (_ctx23844_)
                  (path-directory
                   (let ((_mpath23846_
                          (##structure-ref
                           _ctx23844_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath23846_)
                         _mpath23846_
                         (last _mpath23846_))))))
               (_section-string23828_
                (lambda (_n23842_)
                  (if (number? _n23842_)
                      (number->string _n23842_)
                      (if (symbol? _n23842_)
                          (symbol->string _n23842_)
                          (if (string? _n23842_)
                              _n23842_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n23842_))))))
               (_file-name23829_
                (lambda (_path23840_)
                  (if _n23823_
                      (string-append
                       _path23840_
                       '"__"
                       (_section-string23828_ _n23823_)
                       _ext23824_)
                      (string-append _path23840_ _ext23824_))))
               (_file-path23830_
                (lambda ()
                  (let ((_$e23835_ (gxc#current-compile-output-dir)))
                    (if _$e23835_
                        ((lambda (_outdir23838_)
                           (path-expand
                            (_file-name23829_
                             (symbol->string
                              (##structure-ref
                               _ctx23822_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir23838_))
                         _$e23835_)
                        (path-expand
                         (_file-name23829_
                          (_module-relative-path23826_ _ctx23822_))
                         (_module-source-directory23827_ _ctx23822_)))))))
        (let ((_path23832_ (_file-path23830_)))
          (begin
            (create-directory* (path-directory _path23832_))
            _path23832_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx23805_)
      (letrec ((_file-name23807_
                (lambda (_idstr23820_)
                  (string-append
                   (gxc#static-module-name _idstr23820_)
                   '".scm")))
               (_file-path23808_
                (lambda ()
                  (let* ((_file23813_
                          (_file-name23807_
                           (symbol->string
                            (##structure-ref
                             _ctx23805_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e23815_ (gxc#current-compile-output-dir)))
                    (if _$e23815_
                        ((lambda (_outdir23818_)
                           (path-expand
                            _file23813_
                            (path-expand '"static" _outdir23818_)))
                         _$e23815_)
                        (path-expand _file23813_ '"static"))))))
        (let ((_path23810_ (_file-path23808_)))
          (begin
            (create-directory* (path-directory _path23810_))
            _path23810_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx23792_ _opts23793_)
      (let ((_$e23795_ (pgetq 'output-file: _opts23793_)))
        (if _$e23795_
            (values _$e23795_)
            (let* ((_mod-str23798_
                    (symbol->string
                     (##structure-ref
                      _ctx23792_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e23800_ (string-rindex _mod-str23798_ '#\/)))
              (if _$e23800_
                  ((lambda (_ix23803_)
                     (substring
                      _mod-str23798_
                      (fx+ _ix23803_ '1)
                      (string-length _mod-str23798_)))
                   _$e23800_)
                  _mod-str23798_))))))
  (define gxc#static-module-name
    (lambda (_idstr23788_)
      (if (string? _idstr23788_)
          (let ((_strs23790_ (string-split _idstr23788_ '#\/)))
            (string-join _strs23790_ '"__"))
          (if (symbol? _idstr23788_)
              (gxc#static-module-name (symbol->string _idstr23788_))
              (error '"Bad module id" _idstr23788_))))))
