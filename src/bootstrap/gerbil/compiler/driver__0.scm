(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda24484
      (lambda (_srcpath24486_ _opts24487_)
        (begin
          (if (string? _srcpath24486_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24486_))
          (let ((_outdir24489_ (pgetq 'output-dir: _opts24487_))
                (_invoke-gsc?24490_ (pgetq 'invoke-gsc: _opts24487_))
                (_gsc-options24491_ (pgetq 'gsc-options: _opts24487_))
                (_keep-scm?24492_ (pgetq 'keep-scm: _opts24487_))
                (_verbosity24493_ (pgetq 'verbose: _opts24487_))
                (_optimize24494_ (pgetq 'optimize: _opts24487_))
                (_debug24495_ (pgetq 'debug: _opts24487_))
                (_gen-ssxi24496_ (pgetq 'generate-ssxi: _opts24487_))
                (_static24497_ (pgetq 'static: _opts24487_)))
            (begin
              (if _outdir24489_ (create-directory* _outdir24489_) '#!void)
              (if _optimize24494_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24486_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24486_))))
               gxc#current-compile-output-dir
               _outdir24489_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24490_
               gxc#current-compile-gsc-options
               _gsc-options24491_
               gxc#current-compile-keep-scm
               _keep-scm?24492_
               gxc#current-compile-verbose
               _verbosity24493_
               gxc#current-compile-optimize
               _optimize24494_
               gxc#current-compile-debug
               _debug24495_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24496_
               gxc#current-compile-static
               _static24497_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24503_)
          (let ((_opts24505_ '()))
            (gxc#compile-file__opt-lambda24484 _srcpath24503_ _opts24505_))))
      (define gxc#compile-file
        (lambda _g24513_
          (let ((_g24512_ (length _g24513_)))
            (cond ((fx= _g24512_ 1) (apply gxc#compile-file__0 _g24513_))
                  ((fx= _g24512_ 2)
                   (apply gxc#compile-file__opt-lambda24484 _g24513_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24513_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda24470
      (lambda (_srcpath24472_ _opts24473_)
        (gxc#do-compile-exe
         _srcpath24472_
         _opts24473_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24478_)
          (let ((_opts24480_ '()))
            (gxc#compile-exe-stub__opt-lambda24470
             _srcpath24478_
             _opts24480_))))
      (define gxc#compile-exe-stub
        (lambda _g24515_
          (let ((_g24514_ (length _g24515_)))
            (cond ((fx= _g24514_ 1) (apply gxc#compile-exe-stub__0 _g24515_))
                  ((fx= _g24514_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda24470 _g24515_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24515_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda24456
      (lambda (_srcpath24458_ _opts24459_)
        (gxc#do-compile-exe
         _srcpath24458_
         _opts24459_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24464_)
          (let ((_opts24466_ '()))
            (gxc#compile-static-exe__opt-lambda24456
             _srcpath24464_
             _opts24466_))))
      (define gxc#compile-static-exe
        (lambda _g24517_
          (let ((_g24516_ (length _g24517_)))
            (cond ((fx= _g24516_ 1) (apply gxc#compile-static-exe__0 _g24517_))
                  ((fx= _g24516_ 2)
                   (apply gxc#compile-static-exe__opt-lambda24456 _g24517_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24517_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24446_ _opts24447_ _compile-e24448_)
      (begin
        (if (string? _srcpath24446_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24446_))
        (let ((_outdir24450_ (pgetq 'output-dir: _opts24447_))
              (_invoke-gsc?24451_ (pgetq 'invoke-gsc: _opts24447_))
              (_gsc-options24452_ (pgetq 'gsc-options: _opts24447_))
              (_keep-scm?24453_ (pgetq 'keep-scm: _opts24447_))
              (_verbosity24454_ (pgetq 'verbose: _opts24447_)))
          (begin
            (if _outdir24450_ (create-directory* _outdir24450_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24446_)
                 (_compile-e24448_
                  (gx#import-module__0 _srcpath24446_)
                  _opts24447_)))
             gxc#current-compile-output-dir
             _outdir24450_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24451_
             gxc#current-compile-gsc-options
             _gsc-options24452_
             gxc#current-compile-keep-scm
             _keep-scm?24453_
             gxc#current-compile-verbose
             _verbosity24454_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24410_ _opts24411_)
      (letrec ((_generate-stub24413_
                (lambda ()
                  (let* ((_mod-str24439_
                          (symbol->string
                           (##structure-ref
                            _ctx24410_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24441_ (string-append _mod-str24439_ '"__rt"))
                         (_mod-main24443_
                          (gxc#find-runtime-symbol _ctx24410_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24441_
                                         (cons (cons 'quote
                                                     (cons _mod-main24443_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24414_
                (lambda (_output-scm24421_ _output-bin24422_)
                  (let* ((_init-stub24424_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24426_ (gxc#compile-cache-directory))
                         (_init-stub24428_
                          (gxc#compile-cache
                           _init-stub24424_
                           _gxc-cache24426_))
                         (_gsc-args24430_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24422_
                                            (cons _init-stub24428_
                                                  (cons _output-scm24421_
                                                        '()))))))
                         (_g24518_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24430_)))
                         (_proc24433_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24430_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24435_ (process-status _proc24433_)))
                    (if (zero? _status24435_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24421_
                         _output-bin24422_
                         _status24435_))))))
        (let* ((_output-bin24416_
                (gxc#compile-exe-output-file _ctx24410_ _opts24411_))
               (_output-scm24418_ (string-append _output-bin24416_ '".scm")))
          (begin
            (with-output-to-file _output-scm24418_ _generate-stub24413_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24414_ _output-scm24418_ _output-bin24416_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24418_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24342_ _opts24343_)
      (letrec ((_generate-stub24345_
                (lambda ()
                  (let ((_mod-main24408_
                         (gxc#find-runtime-symbol _ctx24342_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main24408_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub24346_
                (lambda (_output-scm24353_ _output-bin24354_)
                  (let* ((_gerbil-home24356_ (getenv '"GERBIL_HOME"))
                         (_gx-version24358_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24356_))
                         (_gx-gambc024360_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24356_))
                         (_gx-gambc-init24362_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24356_))
                         (_gx-gambc-macros24364_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24356_))
                         (_include-gx-gambc-macros24366_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24364_
                           '"\")"))
                         (_bin-scm24368_
                          (gxc#find-static-module-file _ctx24342_))
                         (_deps24370_
                          (gxc#find-runtime-module-deps _ctx24342_))
                         (_deps24372_
                          (map gxc#find-static-module-file _deps24370_))
                         (_deps24377_
                          (filter (lambda (_$obj24374_)
                                    (not (gxc#file-empty? _$obj24374_)))
                                  _deps24372_))
                         (_gxc-cache24379_ (gxc#compile-cache-directory))
                         (_g24519_
                          (gxc#compile-cache
                           _gx-version24358_
                           _gxc-cache24379_))
                         (_gx-gambc024382_
                          (gxc#compile-cache
                           _gx-gambc024360_
                           _gxc-cache24379_))
                         (_gx-gambc-init24384_
                          (gxc#compile-cache
                           _gx-gambc-init24362_
                           _gxc-cache24379_))
                         (_deps24390_
                          (map (lambda (_g2438524387_)
                                 (gxc#compile-cache
                                  _g2438524387_
                                  _gxc-cache24379_))
                               _deps24377_))
                         (_bin-scm24392_
                          (gxc#compile-cache _bin-scm24368_ _gxc-cache24379_))
                         (_gsc-opts24397_
                          (let ((_$e24394_ (pgetq 'gsc-options: _opts24343_)))
                            (if _$e24394_ _$e24394_ '())))
                         (_gsc-args24399_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24354_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros24366_
                                (cons _gx-gambc024382_
                                      (cons _gx-gambc-init24384_
                                            (foldr1 cons
                                                    (cons _bin-scm24392_
                                                          (cons _output-scm24353_
                                                                '()))
                                                    _deps24390_)))))
                    _gsc-opts24397_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24520_
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
                         _output-scm24353_
                         _output-bin24354_
                         _status24404_))))))
        (let* ((_output-bin24348_
                (gxc#compile-exe-output-file _ctx24342_ _opts24343_))
               (_output-scm24350_ (string-append _output-bin24348_ '".scm")))
          (begin
            (with-output-to-file _output-scm24350_ _generate-stub24345_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24346_ _output-scm24350_ _output-bin24348_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24350_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24337_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24339_ (path-expand '"gxc" _cachedir24337_)))
        (begin
          (create-directory* _gxc-cache24339_)
          (path-normalize _gxc-cache24339_)))))
  (define gxc#compile-cache
    (lambda (_file24331_ _gxc-cache24332_)
      (let ((_cachefile24334_
             (path-expand
              (path-strip-directory _file24331_)
              _gxc-cache24332_)))
        (begin
          (if (file-exists? _cachefile24334_)
              (if (file-newer? _file24331_ _cachefile24334_)
                  (begin
                    (delete-file _cachefile24334_)
                    (copy-file _file24331_ _cachefile24334_))
                  '#!void)
              (copy-file _file24331_ _cachefile24334_))
          _cachefile24334_))))
  (define gxc#find-export-binding
    (lambda (_ctx24281_ _id24282_)
      (let ((_$e24328_
             (find (lambda (_e2428324285_)
                     (let* ((_g2428724297_ _e2428324285_)
                            (_E2429024301_
                             (lambda ()
                               (error '"No clause matching" _g2428724297_)))
                            (_else2428924305_ (lambda () '#f))
                            (_K2429124309_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2428724297_
                            (##type-id gx#module-export::t))
                           (let* ((_e2429224312_
                                   (##vector-ref _g2428724297_ '1))
                                  (_e2429324315_
                                   (##vector-ref _g2428724297_ '2))
                                  (_e2429424318_
                                   (##vector-ref _g2428724297_ '3)))
                             (if (##eq? _e2429424318_ '0)
                                 (let ((_e2429524321_
                                        (##vector-ref _g2428724297_ '4)))
                                   (if ((lambda (_g2432324325_)
                                          (eq? _g2432324325_ _id24282_))
                                        _e2429524321_)
                                       (_K2429124309_)
                                       (_else2428924305_)))
                                 (_else2428924305_)))
                           (_else2428924305_))))
                   (##structure-ref _ctx24281_ '9 gx#module-context::t '#f))))
        (if _$e24328_ (gx#core-resolve-module-export _$e24328_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24273_ _id24274_)
      (let ((_$e24276_ (gxc#find-export-binding _ctx24273_ _id24274_)))
        (if _$e24276_
            ((lambda (_bind24279_)
               (begin
                 (if (##structure-instance-of?
                      _bind24279_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24274_))
                 (##structure-ref _bind24279_ '1 gx#binding::t '#f)))
             _$e24276_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24273_ '1 gx#expander-context::t '#f)
             _id24274_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24160_)
      (letrec* ((_ht24162_ (make-hash-table-eq))
                (_import-set-template24163_
                 (lambda (_in24225_ _phi24226_)
                   (let ((_iphi24228_
                          (fx+ _phi24226_
                               (##direct-structure-ref
                                _in24225_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports24229_
                          (##structure-ref
                           (##direct-structure-ref
                            _in24225_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp24231_ ((_rest24233_ _imports24229_)
                                     (_r24234_ '()))
                       (let* ((_rest2423524243_ _rest24233_)
                              (_E2423824247_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2423524243_)))
                              (_else2423724251_ (lambda () _r24234_))
                              (_K2423924261_
                               (lambda (_rest24254_ _in24255_)
                                 (if (##structure-instance-of?
                                      _in24255_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi24228_)
                                         (_lp24231_
                                          _rest24254_
                                          (cons _in24255_ _r24234_))
                                         (_lp24231_ _rest24254_ _r24234_))
                                     (if (##structure-direct-instance-of?
                                          _in24255_
                                          'gx#module-import::t)
                                         (let ((_iphi24257_
                                                (fx+ _phi24226_
                                                     (##direct-structure-ref
                                                      _in24255_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi24257_)
                                               (_lp24231_
                                                _rest24254_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in24255_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r24234_))
                                               (_lp24231_
                                                _rest24254_
                                                _r24234_)))
                                         (if (##structure-direct-instance-of?
                                              _in24255_
                                              'gx#import-set::t)
                                             (let ((_xphi24259_
                                                    (fx+ _iphi24228_
                                                         (##direct-structure-ref
                                                          _in24255_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi24259_)
                                                   (_lp24231_
                                                    _rest24254_
                                                    (cons (##direct-structure-ref
                                                           _in24255_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r24234_))
                                                   (if (fxpositive?
                                                        _xphi24259_)
                                                       (_lp24231_
                                                        _rest24254_
                                                        (foldl1 cons
                                                                _r24234_
                                                                (_import-set-template24163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in24255_
                         _iphi24228_)))
               (_lp24231_ _rest24254_ _r24234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp24231_
                                              _rest24254_
                                              _r24234_)))))))
                         (if (##pair? _rest2423524243_)
                             (let ((_hd2424024264_ (##car _rest2423524243_))
                                   (_tl2424124266_ (##cdr _rest2423524243_)))
                               (let* ((_in24269_ _hd2424024264_)
                                      (_rest24271_ _tl2424124266_))
                                 (_K2423924261_ _rest24271_ _in24269_)))
                             (_else2423724251_)))))))
                (_find-deps24164_
                 (lambda (_rest24171_ _deps24172_)
                   (let* ((_rest2417324181_ _rest24171_)
                          (_E2417624185_
                           (lambda ()
                             (error '"No clause matching" _rest2417324181_)))
                          (_else2417524189_ (lambda () _deps24172_))
                          (_K2417724213_
                           (lambda (_rest24192_ _hd24193_)
                             (if (##structure-instance-of?
                                  _hd24193_
                                  'gx#module-context::t)
                                 (let ((_id24195_
                                        (##structure-ref
                                         _hd24193_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24196_
                                        (##structure-ref
                                         _hd24193_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24162_ _id24195_ '#f)
                                       (_find-deps24164_
                                        _rest24192_
                                        _deps24172_)
                                       (let ((_$e24198_
                                              (gx#core-context-prelude__opt-lambda13205
                                               _hd24193_)))
                                         (if _$e24198_
                                             ((lambda (_pre24201_)
                                                (let ((_xdeps24203_
                                                       (_find-deps24164_
                                                        (cons _pre24201_
                                                              _imports24196_)
                                                        _deps24172_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24162_
                                                     _id24195_
                                                     _hd24193_)
                                                    (_find-deps24164_
                                                     _rest24192_
                                                     (cons _hd24193_
                                                           _xdeps24203_)))))
                                              _$e24198_)
                                             (let ((_xdeps24205_
                                                    (_find-deps24164_
                                                     _imports24196_
                                                     _deps24172_)))
                                               (begin
                                                 (table-set!
                                                  _ht24162_
                                                  _id24195_
                                                  _hd24193_)
                                                 (_find-deps24164_
                                                  _rest24192_
                                                  (cons _hd24193_
                                                        _xdeps24205_))))))))
                                 (if (##structure-instance-of?
                                      _hd24193_
                                      'gx#prelude-context::t)
                                     (let ((_id24207_
                                            (##structure-ref
                                             _hd24193_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24162_ _id24207_ '#f)
                                           (_find-deps24164_
                                            _rest24192_
                                            _deps24172_)
                                           (let ((_xdeps24209_
                                                  (_find-deps24164_
                                                   (##structure-ref
                                                    _hd24193_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24172_)))
                                             (if (table-ref
                                                  _ht24162_
                                                  _id24207_
                                                  '#f)
                                                 (_find-deps24164_
                                                  _rest24192_
                                                  _xdeps24209_)
                                                 (begin
                                                   (table-set!
                                                    _ht24162_
                                                    _id24207_
                                                    _hd24193_)
                                                   (_find-deps24164_
                                                    _rest24192_
                                                    (cons _hd24193_
                                                          _xdeps24209_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24193_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24193_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24164_
                                              (cons (##direct-structure-ref
                                                     _hd24193_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24192_)
                                              _deps24172_)
                                             (_find-deps24164_
                                              _rest24192_
                                              _deps24172_))
                                         (if (##structure-direct-instance-of?
                                              _hd24193_
                                              'gx#module-export::t)
                                             (_find-deps24164_
                                              (cons (##direct-structure-ref
                                                     _hd24193_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24192_)
                                              _deps24172_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24193_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24193_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24164_
                                                      (cons (##direct-structure-ref
                                                             _hd24193_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24192_)
                                                      _deps24172_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd24193_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps24211_
                                                                (_import-set-template24163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24193_
                         '0)))
                   (_find-deps24164_
                    (foldl1 cons _rest24192_ _xdeps24211_)
                    _deps24172_))
                 (_find-deps24164_ _rest24192_ _deps24172_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd24193_)))))))))
                     (if (##pair? _rest2417324181_)
                         (let ((_hd2417824216_ (##car _rest2417324181_))
                               (_tl2417924218_ (##cdr _rest2417324181_)))
                           (let* ((_hd24221_ _hd2417824216_)
                                  (_rest24223_ _tl2417924218_))
                             (_K2417724213_ _rest24223_ _hd24221_)))
                         (_else2417524189_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24164_
                          (let ((_$e24166_
                                 (gx#core-context-prelude__opt-lambda13205
                                  _ctx24160_)))
                            (if _$e24166_
                                ((lambda (_pre24169_)
                                   (cons _pre24169_
                                         (##structure-ref
                                          _ctx24160_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24166_)
                                (##structure-ref
                                 _ctx24160_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24099_)
      (let* ((_scm24101_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24099_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24103_ (gx#current-expander-module-library-path))
             (_dirs24112_
              (let ((_$e24105_ (gxc#current-compile-output-dir)))
                (if _$e24105_
                    ((lambda (_g2410724109_) (cons _g2410724109_ _dirs24103_))
                     _$e24105_)
                    _dirs24103_)))
             (_dirs24118_
              (map (lambda (_g2411324115_)
                     (path-expand '"static" _g2411324115_))
                   _dirs24112_)))
        (let _lp24121_ ((_rest24123_ _dirs24118_))
          (let* ((_rest2412424132_ _rest24123_)
                 (_E2412724136_
                  (lambda () (error '"No clause matching" _rest2412424132_)))
                 (_else2412624140_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24099_ '1 gx#expander-context::t '#f)
                     _scm24101_)))
                 (_K2412824148_
                  (lambda (_rest24143_ _dir24144_)
                    (let ((_path24146_ (path-expand _scm24101_ _dir24144_)))
                      (if (file-exists? _path24146_)
                          _path24146_
                          (_lp24121_ _rest24143_))))))
            (if (##pair? _rest2412424132_)
                (let ((_hd2412924151_ (##car _rest2412424132_))
                      (_tl2413024153_ (##cdr _rest2412424132_)))
                  (let* ((_dir24156_ _hd2412924151_)
                         (_rest24158_ _tl2413024153_))
                    (_K2412824148_ _rest24158_ _dir24156_)))
                (_else2412624140_)))))))
  (define gxc#file-empty?
    (lambda (_path24097_)
      (zero? (file-info-size (file-info _path24097_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24094_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24094_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24094_)
               '#!void)
           (gxc#collect-bindings _ctx24094_)
           (gxc#compile-runtime-code _ctx24094_)
           (gxc#compile-meta-code _ctx24094_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24094_)
               '#!void)))
       gx#current-expander-context
       _ctx24094_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24510 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24510) __obj24510))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24092_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24092_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx24051_)
      (letrec ((_compile124053_
                (lambda (_ctx24081_)
                  (let* ((_code24083_
                          (##structure-ref
                           _ctx24081_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24087_
                          (if (gxc#apply-find-runtime-code _code24083_)
                              (let ((_idstr24085_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24081_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24085_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24087_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24081_
                             _rt24087_)
                            (_generate-runtime-code24054_
                             _ctx24081_
                             _code24083_))
                          (if (gxc#current-compile-static)
                              (let ((_path24090_
                                     (gxc#compile-static-output-file
                                      _ctx24081_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24090_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24055_
                       _ctx24081_
                       _code24083_
                       _rt24087_)))))
               (_generate-runtime-code24054_
                (lambda (_ctx24069_ _code24070_)
                  (let* ((_runtime-code24073_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24070_))
                           gx#current-expander-context
                           _ctx24069_))
                         (_scm024075_
                          (gxc#compile-output-file _ctx24069_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24078_
                               (gxc#compile-static-output-file _ctx24069_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024075_
                                _runtime-code24073_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24078_)
                                (delete-file _scms24078_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024075_
                             '" => "
                             _scms24078_)
                            (copy-file _scm024075_ _scms24078_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024075_))))
                        (gxc#compile-scm-file
                         _scm024075_
                         _runtime-code24073_)))))
               (_generate-loader-code24055_
                (lambda (_ctx24059_ _code24060_ _rt24061_)
                  (let* ((_loader-code24064_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code24060_))
                           gx#current-expander-context
                           _ctx24059_))
                         (_loader-code24066_
                          (if _rt24061_
                              (cons 'begin
                                    (cons _loader-code24064_
                                          (cons (cons 'load-module
                                                      (cons _rt24061_ '()))
                                                '())))
                              _loader-code24064_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx24059_ 'rt '".scm")
                     _loader-code24066_)))))
        (let ((_all-modules24057_
               (cons _ctx24051_ (gxc#lift-nested-modules _ctx24051_))))
          (for-each _compile124053_ _all-modules24057_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx23953_)
      (letrec ((_compile-ssi23955_
                (lambda (_code24021_)
                  (let* ((_path24023_
                          (gxc#compile-output-file _ctx23953_ '#f '".ssi"))
                         (_prelude24034_
                          (let* ((_super24025_
                                  (##structure-ref
                                   _ctx23953_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e24027_
                                  (##structure-ref
                                   _super24025_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e24027_
                                ((lambda (_g2402924031_)
                                   (make-symbol '":" _g2402924031_))
                                 _$e24027_)
                                ':<root>)))
                         (_ns24036_
                          (##structure-ref
                           _ctx23953_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr24038_
                          (symbol->string
                           (##structure-ref
                            _ctx23953_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg24045_
                          (let ((_$e24040_ (string-rindex _idstr24038_ '#\/)))
                            (if _$e24040_
                                ((lambda (_x24043_)
                                   (string->symbol
                                    (substring _idstr24038_ '0 _x24043_)))
                                 _$e24040_)
                                '#f)))
                         (_rt24047_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx23953_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path24023_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path24023_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude24034_)
                           (if _pkg24045_
                               (displayln '"package:" '" " _pkg24045_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns24036_)
                           (newline)
                           (pretty-print _code24021_)
                           (if _rt24047_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt24047_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi23956_
                (lambda (_part23961_)
                  (let* ((_part2396223975_ _part23961_)
                         (_E2396423979_
                          (lambda ()
                            (error '"No clause matching" _part2396223975_)))
                         (_K2396523990_
                          (lambda (_code23982_
                                   _n23983_
                                   _phi23984_
                                   _phi-ctx23985_)
                            (let ((_code23988_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code23982_))
                                    gx#current-expander-context
                                    _phi-ctx23985_
                                    gx#current-expander-phi
                                    _phi23984_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx23953_
                                _n23983_
                                '".scm")
                               _code23988_)))))
                    (if (##pair? _part2396223975_)
                        (let ((_hd2396623993_ (##car _part2396223975_))
                              (_tl2396723995_ (##cdr _part2396223975_)))
                          (let ((_phi-ctx23998_ _hd2396623993_))
                            (if (##pair? _tl2396723995_)
                                (let ((_hd2396824000_ (##car _tl2396723995_))
                                      (_tl2396924002_ (##cdr _tl2396723995_)))
                                  (let ((_phi24005_ _hd2396824000_))
                                    (if (##pair? _tl2396924002_)
                                        (let ((_hd2397024007_
                                               (##car _tl2396924002_))
                                              (_tl2397124009_
                                               (##cdr _tl2396924002_)))
                                          (let ((_n24012_ _hd2397024007_))
                                            (if (##pair? _tl2397124009_)
                                                (let ((_hd2397224014_
                                                       (##car _tl2397124009_))
                                                      (_tl2397324016_
                                                       (##cdr _tl2397124009_)))
                                                  (let ((_code24019_
                                                         _hd2397224014_))
                                                    (if (##null? _tl2397324016_)
                                                        (_K2396523990_
                                                         _code24019_
                                                         _n24012_
                                                         _phi24005_
                                                         _phi-ctx23998_)
                                                        (_E2396423979_))))
                                                (_E2396423979_))))
                                        (_E2396423979_))))
                                (_E2396423979_))))
                        (_E2396423979_))))))
        (let ((_g24521_ (gxc#generate-meta-code _ctx23953_)))
          (begin
            (let ((_g24522_ (values-count _g24521_)))
              (if (not (fx= _g24522_ 2))
                  (error "Context expects 2 values" _g24522_)))
            (let ((_ssi-code23958_ (values-ref _g24521_ 0))
                  (_phi-code23959_ (values-ref _g24521_ 1)))
              (begin
                (_compile-ssi23955_ _ssi-code23958_)
                (for-each _compile-phi23956_ _phi-code23959_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx23936_)
      (let* ((_path23938_ (gxc#compile-output-file _ctx23936_ '#f '".ssxi.ss"))
             (_code23940_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx23936_ '11 gx#module-context::t '#f)))
             (_idstr23942_
              (symbol->string
               (##structure-ref _ctx23936_ '1 gx#expander-context::t '#f)))
             (_pkg23949_
              (let ((_$e23944_ (string-rindex _idstr23942_ '#\/)))
                (if _$e23944_
                    ((lambda (_x23947_)
                       (string->symbol (substring _idstr23942_ '0 _x23947_)))
                     _$e23944_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path23938_)
          (with-output-to-file
           (cons 'path:
                 (cons _path23938_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg23949_ (displayln '"package: " _pkg23949_) '#!void)
               (newline)
               (pretty-print _code23940_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx23929_)
      (let* ((_state23931_
              (let ((__obj24511 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24511 _ctx23929_)
                  __obj24511)))
             (_ssi-code23933_
              (gxc#apply-generate-meta
               (##structure-ref _ctx23929_ '11 gx#module-context::t '#f)
               _state23931_)))
        (values _ssi-code23933_ (gxc#meta-state-end! _state23931_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx23922_)
      (let ((_lifts23924_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code23927_ (gxc#apply-generate-runtime-phi _stx23922_)))
             (if (null? (unbox _lifts23924_))
                 _code23927_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code23927_ '())
                               (reverse (unbox _lifts23924_)))))))
         gxc#current-compile-lift
         _lifts23924_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx23918_)
      (let ((_modules23920_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx23918_ '11 gx#module-context::t '#f)
           _modules23920_)
          (reverse (unbox _modules23920_))))))
  (define gxc#compile-scm-file
    (lambda (_path23914_ _code23915_)
      (begin
        (gxc#verbose '"compile " _path23914_)
        (with-output-to-file
         (cons 'path: (cons _path23914_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code23915_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path23914_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path23914_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e23906_ (gxc#current-compile-debug)))
        (if _$e23906_
            ((lambda (_debug23909_)
               (let ((_$e23911_ _debug23909_))
                 (if (eq? _$e23911_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e23911_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e23911_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug23909_))))))
             _$e23906_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path23888_)
      (let* ((_gsc-args23895_
              (let ((_$e23890_ (gxc#current-compile-gsc-options)))
                (if _$e23890_
                    ((lambda (_opts23893_)
                       (foldr1 cons (cons _path23888_ '()) _opts23893_))
                     _$e23890_)
                    (cons _path23888_ '()))))
             (_gsc-args23897_
              (foldr1 cons _gsc-args23895_ (gxc#gsc-debug-options)))
             (_g24523_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args23897_)))
             (_proc23900_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args23897_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status23902_ (process-status _proc23900_)))
        (if (zero? _status23902_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path23888_
             _status23902_)))))
  (define gxc#compile-output-file
    (lambda (_ctx23860_ _n23861_ _ext23862_)
      (letrec ((_module-relative-path23864_
                (lambda (_ctx23886_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx23886_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory23865_
                (lambda (_ctx23882_)
                  (path-directory
                   (let ((_mpath23884_
                          (##structure-ref
                           _ctx23882_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath23884_)
                         _mpath23884_
                         (last _mpath23884_))))))
               (_section-string23866_
                (lambda (_n23880_)
                  (if (number? _n23880_)
                      (number->string _n23880_)
                      (if (symbol? _n23880_)
                          (symbol->string _n23880_)
                          (if (string? _n23880_)
                              _n23880_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n23880_))))))
               (_file-name23867_
                (lambda (_path23878_)
                  (if _n23861_
                      (string-append
                       _path23878_
                       '"__"
                       (_section-string23866_ _n23861_)
                       _ext23862_)
                      (string-append _path23878_ _ext23862_))))
               (_file-path23868_
                (lambda ()
                  (let ((_$e23873_ (gxc#current-compile-output-dir)))
                    (if _$e23873_
                        ((lambda (_outdir23876_)
                           (path-expand
                            (_file-name23867_
                             (symbol->string
                              (##structure-ref
                               _ctx23860_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir23876_))
                         _$e23873_)
                        (path-expand
                         (_file-name23867_
                          (_module-relative-path23864_ _ctx23860_))
                         (_module-source-directory23865_ _ctx23860_)))))))
        (let ((_path23870_ (_file-path23868_)))
          (begin
            (create-directory* (path-directory _path23870_))
            _path23870_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx23843_)
      (letrec ((_file-name23845_
                (lambda (_idstr23858_)
                  (string-append
                   (gxc#static-module-name _idstr23858_)
                   '".scm")))
               (_file-path23846_
                (lambda ()
                  (let* ((_file23851_
                          (_file-name23845_
                           (symbol->string
                            (##structure-ref
                             _ctx23843_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e23853_ (gxc#current-compile-output-dir)))
                    (if _$e23853_
                        ((lambda (_outdir23856_)
                           (path-expand
                            _file23851_
                            (path-expand '"static" _outdir23856_)))
                         _$e23853_)
                        (path-expand _file23851_ '"static"))))))
        (let ((_path23848_ (_file-path23846_)))
          (begin
            (create-directory* (path-directory _path23848_))
            _path23848_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx23830_ _opts23831_)
      (let ((_$e23833_ (pgetq 'output-file: _opts23831_)))
        (if _$e23833_
            (values _$e23833_)
            (let* ((_mod-str23836_
                    (symbol->string
                     (##structure-ref
                      _ctx23830_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e23838_ (string-rindex _mod-str23836_ '#\/)))
              (if _$e23838_
                  ((lambda (_ix23841_)
                     (substring
                      _mod-str23836_
                      (fx+ _ix23841_ '1)
                      (string-length _mod-str23836_)))
                   _$e23838_)
                  _mod-str23836_))))))
  (define gxc#static-module-name
    (lambda (_idstr23826_)
      (if (string? _idstr23826_)
          (let ((_strs23828_ (string-split _idstr23826_ '#\/)))
            (string-join _strs23828_ '"__"))
          (if (symbol? _idstr23826_)
              (gxc#static-module-name (symbol->string _idstr23826_))
              (error '"Bad module id" _idstr23826_))))))
