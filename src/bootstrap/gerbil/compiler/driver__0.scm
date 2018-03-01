(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda24453
      (lambda (_srcpath24455_ _opts24456_)
        (begin
          (if (string? _srcpath24455_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24455_))
          (let ((_outdir24458_ (pgetq 'output-dir: _opts24456_))
                (_invoke-gsc?24459_ (pgetq 'invoke-gsc: _opts24456_))
                (_gsc-options24460_ (pgetq 'gsc-options: _opts24456_))
                (_keep-scm?24461_ (pgetq 'keep-scm: _opts24456_))
                (_verbosity24462_ (pgetq 'verbose: _opts24456_))
                (_optimize24463_ (pgetq 'optimize: _opts24456_))
                (_debug24464_ (pgetq 'debug: _opts24456_))
                (_gen-ssxi24465_ (pgetq 'generate-ssxi: _opts24456_))
                (_static24466_ (pgetq 'static: _opts24456_)))
            (begin
              (if _outdir24458_ (create-directory* _outdir24458_) '#!void)
              (if _optimize24463_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24455_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24455_))))
               gxc#current-compile-output-dir
               _outdir24458_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24459_
               gxc#current-compile-gsc-options
               _gsc-options24460_
               gxc#current-compile-keep-scm
               _keep-scm?24461_
               gxc#current-compile-verbose
               _verbosity24462_
               gxc#current-compile-optimize
               _optimize24463_
               gxc#current-compile-debug
               _debug24464_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24465_
               gxc#current-compile-static
               _static24466_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24472_)
          (let ((_opts24474_ '()))
            (gxc#compile-file__opt-lambda24453 _srcpath24472_ _opts24474_))))
      (define gxc#compile-file
        (lambda _g24482_
          (let ((_g24481_ (length _g24482_)))
            (cond ((fx= _g24481_ 1) (apply gxc#compile-file__0 _g24482_))
                  ((fx= _g24481_ 2)
                   (apply gxc#compile-file__opt-lambda24453 _g24482_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24482_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda24439
      (lambda (_srcpath24441_ _opts24442_)
        (gxc#do-compile-exe
         _srcpath24441_
         _opts24442_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24447_)
          (let ((_opts24449_ '()))
            (gxc#compile-exe-stub__opt-lambda24439
             _srcpath24447_
             _opts24449_))))
      (define gxc#compile-exe-stub
        (lambda _g24484_
          (let ((_g24483_ (length _g24484_)))
            (cond ((fx= _g24483_ 1) (apply gxc#compile-exe-stub__0 _g24484_))
                  ((fx= _g24483_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda24439 _g24484_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24484_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda24425
      (lambda (_srcpath24427_ _opts24428_)
        (gxc#do-compile-exe
         _srcpath24427_
         _opts24428_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24433_)
          (let ((_opts24435_ '()))
            (gxc#compile-static-exe__opt-lambda24425
             _srcpath24433_
             _opts24435_))))
      (define gxc#compile-static-exe
        (lambda _g24486_
          (let ((_g24485_ (length _g24486_)))
            (cond ((fx= _g24485_ 1) (apply gxc#compile-static-exe__0 _g24486_))
                  ((fx= _g24485_ 2)
                   (apply gxc#compile-static-exe__opt-lambda24425 _g24486_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24486_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24415_ _opts24416_ _compile-e24417_)
      (begin
        (if (string? _srcpath24415_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24415_))
        (let ((_outdir24419_ (pgetq 'output-dir: _opts24416_))
              (_invoke-gsc?24420_ (pgetq 'invoke-gsc: _opts24416_))
              (_gsc-options24421_ (pgetq 'gsc-options: _opts24416_))
              (_keep-scm?24422_ (pgetq 'keep-scm: _opts24416_))
              (_verbosity24423_ (pgetq 'verbose: _opts24416_)))
          (begin
            (if _outdir24419_ (create-directory* _outdir24419_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24415_)
                 (_compile-e24417_
                  (gx#import-module__0 _srcpath24415_)
                  _opts24416_)))
             gxc#current-compile-output-dir
             _outdir24419_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24420_
             gxc#current-compile-gsc-options
             _gsc-options24421_
             gxc#current-compile-keep-scm
             _keep-scm?24422_
             gxc#current-compile-verbose
             _verbosity24423_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24379_ _opts24380_)
      (letrec ((_generate-stub24382_
                (lambda ()
                  (let* ((_mod-str24408_
                          (symbol->string
                           (##structure-ref
                            _ctx24379_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24410_ (string-append _mod-str24408_ '"__rt"))
                         (_mod-main24412_
                          (gxc#find-runtime-symbol _ctx24379_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24410_
                                         (cons (cons 'quote
                                                     (cons _mod-main24412_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24383_
                (lambda (_output-scm24390_ _output-bin24391_)
                  (let* ((_init-stub24393_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24395_ (gxc#compile-cache-directory))
                         (_init-stub24397_
                          (gxc#compile-cache
                           _init-stub24393_
                           _gxc-cache24395_))
                         (_gsc-args24399_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24391_
                                            (cons _init-stub24397_
                                                  (cons _output-scm24390_
                                                        '()))))))
                         (_g24487_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24399_)))
                         (_proc24402_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24399_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24404_ (process-status _proc24402_)))
                    (if (zero? _status24404_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24390_
                         _output-bin24391_
                         _status24404_))))))
        (let* ((_output-bin24385_
                (gxc#compile-exe-output-file _ctx24379_ _opts24380_))
               (_output-scm24387_ (string-append _output-bin24385_ '".scm")))
          (begin
            (with-output-to-file _output-scm24387_ _generate-stub24382_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24383_ _output-scm24387_ _output-bin24385_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24387_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24309_ _opts24310_)
      (letrec ((_generate-stub24312_
                (lambda ()
                  (let ((_mod-main24377_
                         (gxc#find-runtime-symbol _ctx24309_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main24377_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub24313_
                (lambda (_output-scm24320_ _output-bin24321_)
                  (let* ((_gerbil-home24323_ (getenv '"GERBIL_HOME"))
                         (_gx-version24325_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24323_))
                         (_gx-gambc024327_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24323_))
                         (_gx-gambc-init24329_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24323_))
                         (_gx-gambc-macros24331_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24323_))
                         (_include-gx-gambc-macros24333_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24331_
                           '"\")"))
                         (_bin-scm24335_
                          (gxc#find-static-module-file _ctx24309_))
                         (_deps24337_
                          (gxc#find-runtime-module-deps _ctx24309_))
                         (_deps24339_
                          (map gxc#find-static-module-file _deps24337_))
                         (_deps24344_
                          (filter (lambda (_$obj24341_)
                                    (not (gxc#file-empty? _$obj24341_)))
                                  _deps24339_))
                         (_gxc-cache24346_ (gxc#compile-cache-directory))
                         (_g24488_
                          (gxc#compile-cache
                           _gx-version24325_
                           _gxc-cache24346_))
                         (_gx-gambc024349_
                          (gxc#compile-cache
                           _gx-gambc024327_
                           _gxc-cache24346_))
                         (_gx-gambc-init24351_
                          (gxc#compile-cache
                           _gx-gambc-init24329_
                           _gxc-cache24346_))
                         (_deps24357_
                          (map (lambda (_g2435224354_)
                                 (gxc#compile-cache
                                  _g2435224354_
                                  _gxc-cache24346_))
                               _deps24344_))
                         (_bin-scm24359_
                          (gxc#compile-cache _bin-scm24335_ _gxc-cache24346_))
                         (_gsc-opts24364_
                          (let ((_$e24361_ (pgetq 'gsc-options: _opts24310_)))
                            (if _$e24361_ _$e24361_ '())))
                         (_gsc-gx-macros24366_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros24333_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros24333_
                                          '()))))
                         (_gsc-args24368_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24321_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _gx-gambc024349_
                                  (cons _gx-gambc-init24351_
                                        (foldr1 cons
                                                (cons _bin-scm24359_
                                                      (cons _output-scm24320_
                                                            '()))
                                                _deps24357_)))
                            _gsc-gx-macros24366_)
                    _gsc-opts24364_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24489_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24368_)))
                         (_proc24371_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24368_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24373_ (process-status _proc24371_)))
                    (if (zero? _status24373_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24320_
                         _output-bin24321_
                         _status24373_))))))
        (let* ((_output-bin24315_
                (gxc#compile-exe-output-file _ctx24309_ _opts24310_))
               (_output-scm24317_ (string-append _output-bin24315_ '".scm")))
          (begin
            (with-output-to-file _output-scm24317_ _generate-stub24312_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24313_ _output-scm24317_ _output-bin24315_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24317_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24304_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24306_ (path-expand '"gxc" _cachedir24304_)))
        (begin
          (create-directory* _gxc-cache24306_)
          (path-normalize _gxc-cache24306_)))))
  (define gxc#compile-cache
    (lambda (_file24298_ _gxc-cache24299_)
      (let ((_cachefile24301_
             (path-expand
              (path-strip-directory _file24298_)
              _gxc-cache24299_)))
        (begin
          (if (file-exists? _cachefile24301_)
              (if (file-newer? _file24298_ _cachefile24301_)
                  (begin
                    (delete-file _cachefile24301_)
                    (copy-file _file24298_ _cachefile24301_))
                  '#!void)
              (copy-file _file24298_ _cachefile24301_))
          _cachefile24301_))))
  (define gxc#find-export-binding
    (lambda (_ctx24248_ _id24249_)
      (let ((_$e24295_
             (find (lambda (_e2425024252_)
                     (let* ((_g2425424264_ _e2425024252_)
                            (_E2425724268_
                             (lambda ()
                               (error '"No clause matching" _g2425424264_)))
                            (_else2425624272_ (lambda () '#f))
                            (_K2425824276_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2425424264_
                            (##type-id gx#module-export::t))
                           (let* ((_e2425924279_
                                   (##vector-ref _g2425424264_ '1))
                                  (_e2426024282_
                                   (##vector-ref _g2425424264_ '2))
                                  (_e2426124285_
                                   (##vector-ref _g2425424264_ '3)))
                             (if (##eq? _e2426124285_ '0)
                                 (let ((_e2426224288_
                                        (##vector-ref _g2425424264_ '4)))
                                   (if ((lambda (_g2429024292_)
                                          (eq? _g2429024292_ _id24249_))
                                        _e2426224288_)
                                       (_K2425824276_)
                                       (_else2425624272_)))
                                 (_else2425624272_)))
                           (_else2425624272_))))
                   (##structure-ref _ctx24248_ '9 gx#module-context::t '#f))))
        (if _$e24295_ (gx#core-resolve-module-export _$e24295_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24240_ _id24241_)
      (let ((_$e24243_ (gxc#find-export-binding _ctx24240_ _id24241_)))
        (if _$e24243_
            ((lambda (_bind24246_)
               (begin
                 (if (##structure-instance-of?
                      _bind24246_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24241_))
                 (##structure-ref _bind24246_ '1 gx#binding::t '#f)))
             _$e24243_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24240_ '1 gx#expander-context::t '#f)
             _id24241_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24127_)
      (letrec* ((_ht24129_ (make-hash-table-eq))
                (_import-set-template24130_
                 (lambda (_in24192_ _phi24193_)
                   (let ((_iphi24195_
                          (fx+ _phi24193_
                               (##direct-structure-ref
                                _in24192_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports24196_
                          (##structure-ref
                           (##direct-structure-ref
                            _in24192_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp24198_ ((_rest24200_ _imports24196_)
                                     (_r24201_ '()))
                       (let* ((_rest2420224210_ _rest24200_)
                              (_E2420524214_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2420224210_)))
                              (_else2420424218_ (lambda () _r24201_))
                              (_K2420624228_
                               (lambda (_rest24221_ _in24222_)
                                 (if (##structure-instance-of?
                                      _in24222_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi24195_)
                                         (_lp24198_
                                          _rest24221_
                                          (cons _in24222_ _r24201_))
                                         (_lp24198_ _rest24221_ _r24201_))
                                     (if (##structure-direct-instance-of?
                                          _in24222_
                                          'gx#module-import::t)
                                         (let ((_iphi24224_
                                                (fx+ _phi24193_
                                                     (##direct-structure-ref
                                                      _in24222_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi24224_)
                                               (_lp24198_
                                                _rest24221_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in24222_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r24201_))
                                               (_lp24198_
                                                _rest24221_
                                                _r24201_)))
                                         (if (##structure-direct-instance-of?
                                              _in24222_
                                              'gx#import-set::t)
                                             (let ((_xphi24226_
                                                    (fx+ _iphi24195_
                                                         (##direct-structure-ref
                                                          _in24222_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi24226_)
                                                   (_lp24198_
                                                    _rest24221_
                                                    (cons (##direct-structure-ref
                                                           _in24222_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r24201_))
                                                   (if (fxpositive?
                                                        _xphi24226_)
                                                       (_lp24198_
                                                        _rest24221_
                                                        (foldl1 cons
                                                                _r24201_
                                                                (_import-set-template24130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in24222_
                         _iphi24195_)))
               (_lp24198_ _rest24221_ _r24201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp24198_
                                              _rest24221_
                                              _r24201_)))))))
                         (if (##pair? _rest2420224210_)
                             (let ((_hd2420724231_ (##car _rest2420224210_))
                                   (_tl2420824233_ (##cdr _rest2420224210_)))
                               (let* ((_in24236_ _hd2420724231_)
                                      (_rest24238_ _tl2420824233_))
                                 (_K2420624228_ _rest24238_ _in24236_)))
                             (_else2420424218_)))))))
                (_find-deps24131_
                 (lambda (_rest24138_ _deps24139_)
                   (let* ((_rest2414024148_ _rest24138_)
                          (_E2414324152_
                           (lambda ()
                             (error '"No clause matching" _rest2414024148_)))
                          (_else2414224156_ (lambda () _deps24139_))
                          (_K2414424180_
                           (lambda (_rest24159_ _hd24160_)
                             (if (##structure-instance-of?
                                  _hd24160_
                                  'gx#module-context::t)
                                 (let ((_id24162_
                                        (##structure-ref
                                         _hd24160_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24163_
                                        (##structure-ref
                                         _hd24160_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24129_ _id24162_ '#f)
                                       (_find-deps24131_
                                        _rest24159_
                                        _deps24139_)
                                       (let ((_$e24165_
                                              (gx#core-context-prelude__opt-lambda13214
                                               _hd24160_)))
                                         (if _$e24165_
                                             ((lambda (_pre24168_)
                                                (let ((_xdeps24170_
                                                       (_find-deps24131_
                                                        (cons _pre24168_
                                                              _imports24163_)
                                                        _deps24139_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24129_
                                                     _id24162_
                                                     _hd24160_)
                                                    (_find-deps24131_
                                                     _rest24159_
                                                     (cons _hd24160_
                                                           _xdeps24170_)))))
                                              _$e24165_)
                                             (let ((_xdeps24172_
                                                    (_find-deps24131_
                                                     _imports24163_
                                                     _deps24139_)))
                                               (begin
                                                 (table-set!
                                                  _ht24129_
                                                  _id24162_
                                                  _hd24160_)
                                                 (_find-deps24131_
                                                  _rest24159_
                                                  (cons _hd24160_
                                                        _xdeps24172_))))))))
                                 (if (##structure-instance-of?
                                      _hd24160_
                                      'gx#prelude-context::t)
                                     (let ((_id24174_
                                            (##structure-ref
                                             _hd24160_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24129_ _id24174_ '#f)
                                           (_find-deps24131_
                                            _rest24159_
                                            _deps24139_)
                                           (let ((_xdeps24176_
                                                  (_find-deps24131_
                                                   (##structure-ref
                                                    _hd24160_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24139_)))
                                             (if (table-ref
                                                  _ht24129_
                                                  _id24174_
                                                  '#f)
                                                 (_find-deps24131_
                                                  _rest24159_
                                                  _xdeps24176_)
                                                 (begin
                                                   (table-set!
                                                    _ht24129_
                                                    _id24174_
                                                    _hd24160_)
                                                   (_find-deps24131_
                                                    _rest24159_
                                                    (cons _hd24160_
                                                          _xdeps24176_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24160_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24160_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24131_
                                              (cons (##direct-structure-ref
                                                     _hd24160_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24159_)
                                              _deps24139_)
                                             (_find-deps24131_
                                              _rest24159_
                                              _deps24139_))
                                         (if (##structure-direct-instance-of?
                                              _hd24160_
                                              'gx#module-export::t)
                                             (_find-deps24131_
                                              (cons (##direct-structure-ref
                                                     _hd24160_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24159_)
                                              _deps24139_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24160_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24160_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24131_
                                                      (cons (##direct-structure-ref
                                                             _hd24160_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24159_)
                                                      _deps24139_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd24160_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps24178_
                                                                (_import-set-template24130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24160_
                         '0)))
                   (_find-deps24131_
                    (foldl1 cons _rest24159_ _xdeps24178_)
                    _deps24139_))
                 (_find-deps24131_ _rest24159_ _deps24139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd24160_)))))))))
                     (if (##pair? _rest2414024148_)
                         (let ((_hd2414524183_ (##car _rest2414024148_))
                               (_tl2414624185_ (##cdr _rest2414024148_)))
                           (let* ((_hd24188_ _hd2414524183_)
                                  (_rest24190_ _tl2414624185_))
                             (_K2414424180_ _rest24190_ _hd24188_)))
                         (_else2414224156_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24131_
                          (let ((_$e24133_
                                 (gx#core-context-prelude__opt-lambda13214
                                  _ctx24127_)))
                            (if _$e24133_
                                ((lambda (_pre24136_)
                                   (cons _pre24136_
                                         (##structure-ref
                                          _ctx24127_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24133_)
                                (##structure-ref
                                 _ctx24127_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24066_)
      (let* ((_scm24068_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24066_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24070_ (gx#current-expander-module-library-path))
             (_dirs24079_
              (let ((_$e24072_ (gxc#current-compile-output-dir)))
                (if _$e24072_
                    ((lambda (_g2407424076_) (cons _g2407424076_ _dirs24070_))
                     _$e24072_)
                    _dirs24070_)))
             (_dirs24085_
              (map (lambda (_g2408024082_)
                     (path-expand '"static" _g2408024082_))
                   _dirs24079_)))
        (let _lp24088_ ((_rest24090_ _dirs24085_))
          (let* ((_rest2409124099_ _rest24090_)
                 (_E2409424103_
                  (lambda () (error '"No clause matching" _rest2409124099_)))
                 (_else2409324107_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24066_ '1 gx#expander-context::t '#f)
                     _scm24068_)))
                 (_K2409524115_
                  (lambda (_rest24110_ _dir24111_)
                    (let ((_path24113_ (path-expand _scm24068_ _dir24111_)))
                      (if (file-exists? _path24113_)
                          _path24113_
                          (_lp24088_ _rest24110_))))))
            (if (##pair? _rest2409124099_)
                (let ((_hd2409624118_ (##car _rest2409124099_))
                      (_tl2409724120_ (##cdr _rest2409124099_)))
                  (let* ((_dir24123_ _hd2409624118_)
                         (_rest24125_ _tl2409724120_))
                    (_K2409524115_ _rest24125_ _dir24123_)))
                (_else2409324107_)))))))
  (define gxc#file-empty?
    (lambda (_path24064_)
      (zero? (file-info-size (file-info _path24064_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24061_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24061_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24061_)
               '#!void)
           (gxc#collect-bindings _ctx24061_)
           (gxc#compile-runtime-code _ctx24061_)
           (gxc#compile-meta-code _ctx24061_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24061_)
               '#!void)))
       gx#current-expander-context
       _ctx24061_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24479 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24479) __obj24479))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24059_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24059_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx24013_)
      (letrec ((_compile124015_
                (lambda (_ctx24048_)
                  (let* ((_code24050_
                          (##structure-ref
                           _ctx24048_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24054_
                          (if (gxc#apply-find-runtime-code _code24050_)
                              (let ((_idstr24052_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24048_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24052_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24054_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24048_
                             _rt24054_)
                            (_generate-runtime-code24016_
                             _ctx24048_
                             _code24050_))
                          (if (gxc#current-compile-static)
                              (let ((_path24057_
                                     (gxc#compile-static-output-file
                                      _ctx24048_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24057_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24017_
                       _ctx24048_
                       _code24050_
                       _rt24054_)))))
               (_generate-runtime-code24016_
                (lambda (_ctx24032_ _code24033_)
                  (let* ((_lifts24035_ (box '()))
                         (_runtime-code24038_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24033_))
                           gx#current-expander-context
                           _ctx24032_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts24035_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code24040_
                          (if (null? (unbox _lifts24035_))
                              _runtime-code24038_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code24038_ '())
                                            (reverse (unbox _lifts24035_))))))
                         (_scm024042_
                          (gxc#compile-output-file _ctx24032_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24045_
                               (gxc#compile-static-output-file _ctx24032_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024042_
                                _runtime-code24040_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24045_)
                                (delete-file _scms24045_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024042_
                             '" => "
                             _scms24045_)
                            (copy-file _scm024042_ _scms24045_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024042_))))
                        (gxc#compile-scm-file
                         _scm024042_
                         _runtime-code24040_)))))
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
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx24021_ 'rt '".scm")
                        _loader-code24028_))
                     gxc#current-compile-gsc-options
                     '#f)))))
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
        (let ((_g24490_ (gxc#generate-meta-code _ctx23915_)))
          (begin
            (let ((_g24491_ (values-count _g24490_)))
              (if (not (fx= _g24491_ 2))
                  (error "Context expects 2 values" _g24491_)))
            (let ((_ssi-code23920_ (values-ref _g24490_ 0))
                  (_phi-code23921_ (values-ref _g24490_ 1)))
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
              (let ((__obj24480 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24480 _ctx23891_)
                  __obj24480)))
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
             (_g24492_
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
