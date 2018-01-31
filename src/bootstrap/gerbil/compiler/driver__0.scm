(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda24488
      (lambda (_srcpath24490_ _opts24491_)
        (begin
          (if (string? _srcpath24490_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24490_))
          (let ((_outdir24493_ (pgetq 'output-dir: _opts24491_))
                (_invoke-gsc?24494_ (pgetq 'invoke-gsc: _opts24491_))
                (_gsc-options24495_ (pgetq 'gsc-options: _opts24491_))
                (_keep-scm?24496_ (pgetq 'keep-scm: _opts24491_))
                (_verbosity24497_ (pgetq 'verbose: _opts24491_))
                (_optimize24498_ (pgetq 'optimize: _opts24491_))
                (_debug24499_ (pgetq 'debug: _opts24491_))
                (_gen-ssxi24500_ (pgetq 'generate-ssxi: _opts24491_))
                (_static24501_ (pgetq 'static: _opts24491_)))
            (begin
              (if _outdir24493_ (create-directory* _outdir24493_) '#!void)
              (if _optimize24498_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24490_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24490_))))
               gxc#current-compile-output-dir
               _outdir24493_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24494_
               gxc#current-compile-gsc-options
               _gsc-options24495_
               gxc#current-compile-keep-scm
               _keep-scm?24496_
               gxc#current-compile-verbose
               _verbosity24497_
               gxc#current-compile-optimize
               _optimize24498_
               gxc#current-compile-debug
               _debug24499_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24500_
               gxc#current-compile-static
               _static24501_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24507_)
          (let ((_opts24509_ '()))
            (gxc#compile-file__opt-lambda24488 _srcpath24507_ _opts24509_))))
      (define gxc#compile-file
        (lambda _g24517_
          (let ((_g24516_ (length _g24517_)))
            (cond ((fx= _g24516_ 1) (apply gxc#compile-file__0 _g24517_))
                  ((fx= _g24516_ 2)
                   (apply gxc#compile-file__opt-lambda24488 _g24517_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24517_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda24474
      (lambda (_srcpath24476_ _opts24477_)
        (gxc#do-compile-exe
         _srcpath24476_
         _opts24477_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24482_)
          (let ((_opts24484_ '()))
            (gxc#compile-exe-stub__opt-lambda24474
             _srcpath24482_
             _opts24484_))))
      (define gxc#compile-exe-stub
        (lambda _g24519_
          (let ((_g24518_ (length _g24519_)))
            (cond ((fx= _g24518_ 1) (apply gxc#compile-exe-stub__0 _g24519_))
                  ((fx= _g24518_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda24474 _g24519_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24519_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda24460
      (lambda (_srcpath24462_ _opts24463_)
        (gxc#do-compile-exe
         _srcpath24462_
         _opts24463_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24468_)
          (let ((_opts24470_ '()))
            (gxc#compile-static-exe__opt-lambda24460
             _srcpath24468_
             _opts24470_))))
      (define gxc#compile-static-exe
        (lambda _g24521_
          (let ((_g24520_ (length _g24521_)))
            (cond ((fx= _g24520_ 1) (apply gxc#compile-static-exe__0 _g24521_))
                  ((fx= _g24520_ 2)
                   (apply gxc#compile-static-exe__opt-lambda24460 _g24521_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24521_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24450_ _opts24451_ _compile-e24452_)
      (begin
        (if (string? _srcpath24450_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24450_))
        (let ((_outdir24454_ (pgetq 'output-dir: _opts24451_))
              (_invoke-gsc?24455_ (pgetq 'invoke-gsc: _opts24451_))
              (_gsc-options24456_ (pgetq 'gsc-options: _opts24451_))
              (_keep-scm?24457_ (pgetq 'keep-scm: _opts24451_))
              (_verbosity24458_ (pgetq 'verbose: _opts24451_)))
          (begin
            (if _outdir24454_ (create-directory* _outdir24454_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24450_)
                 (_compile-e24452_
                  (gx#import-module__0 _srcpath24450_)
                  _opts24451_)))
             gxc#current-compile-output-dir
             _outdir24454_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24455_
             gxc#current-compile-gsc-options
             _gsc-options24456_
             gxc#current-compile-keep-scm
             _keep-scm?24457_
             gxc#current-compile-verbose
             _verbosity24458_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24414_ _opts24415_)
      (letrec ((_generate-stub24417_
                (lambda ()
                  (let* ((_mod-str24443_
                          (symbol->string
                           (##structure-ref
                            _ctx24414_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24445_ (string-append _mod-str24443_ '"__rt"))
                         (_mod-main24447_
                          (gxc#find-runtime-symbol _ctx24414_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24445_
                                         (cons (cons 'quote
                                                     (cons _mod-main24447_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24418_
                (lambda (_output-scm24425_ _output-bin24426_)
                  (let* ((_init-stub24428_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24430_ (gxc#compile-cache-directory))
                         (_init-stub24432_
                          (gxc#compile-cache
                           _init-stub24428_
                           _gxc-cache24430_))
                         (_gsc-args24434_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24426_
                                            (cons _init-stub24432_
                                                  (cons _output-scm24425_
                                                        '()))))))
                         (_g24522_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24434_)))
                         (_proc24437_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24434_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24439_ (process-status _proc24437_)))
                    (if (zero? _status24439_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24425_
                         _output-bin24426_
                         _status24439_))))))
        (let* ((_output-bin24420_
                (gxc#compile-exe-output-file _ctx24414_ _opts24415_))
               (_output-scm24422_ (string-append _output-bin24420_ '".scm")))
          (begin
            (with-output-to-file _output-scm24422_ _generate-stub24417_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24418_ _output-scm24422_ _output-bin24420_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24422_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24346_ _opts24347_)
      (letrec ((_generate-stub24349_
                (lambda ()
                  (let ((_mod-main24412_
                         (gxc#find-runtime-symbol _ctx24346_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main24412_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub24350_
                (lambda (_output-scm24357_ _output-bin24358_)
                  (let* ((_gerbil-home24360_ (getenv '"GERBIL_HOME"))
                         (_gx-version24362_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24360_))
                         (_gx-gambc024364_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24360_))
                         (_gx-gambc-init24366_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24360_))
                         (_gx-gambc-macros24368_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24360_))
                         (_include-gx-gambc-macros24370_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24368_
                           '"\")"))
                         (_bin-scm24372_
                          (gxc#find-static-module-file _ctx24346_))
                         (_deps24374_
                          (gxc#find-runtime-module-deps _ctx24346_))
                         (_deps24376_
                          (map gxc#find-static-module-file _deps24374_))
                         (_deps24381_
                          (filter (lambda (_$obj24378_)
                                    (not (gxc#file-empty? _$obj24378_)))
                                  _deps24376_))
                         (_gxc-cache24383_ (gxc#compile-cache-directory))
                         (_g24523_
                          (gxc#compile-cache
                           _gx-version24362_
                           _gxc-cache24383_))
                         (_gx-gambc024386_
                          (gxc#compile-cache
                           _gx-gambc024364_
                           _gxc-cache24383_))
                         (_gx-gambc-init24388_
                          (gxc#compile-cache
                           _gx-gambc-init24366_
                           _gxc-cache24383_))
                         (_deps24394_
                          (map (lambda (_g2438924391_)
                                 (gxc#compile-cache
                                  _g2438924391_
                                  _gxc-cache24383_))
                               _deps24381_))
                         (_bin-scm24396_
                          (gxc#compile-cache _bin-scm24372_ _gxc-cache24383_))
                         (_gsc-opts24401_
                          (let ((_$e24398_ (pgetq 'gsc-options: _opts24347_)))
                            (if _$e24398_ _$e24398_ '())))
                         (_gsc-args24403_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24358_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros24370_
                                (cons _gx-gambc024386_
                                      (cons _gx-gambc-init24388_
                                            (foldr1 cons
                                                    (cons _bin-scm24396_
                                                          (cons _output-scm24357_
                                                                '()))
                                                    _deps24394_)))))
                    _gsc-opts24401_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24524_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24403_)))
                         (_proc24406_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24403_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24408_ (process-status _proc24406_)))
                    (if (zero? _status24408_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24357_
                         _output-bin24358_
                         _status24408_))))))
        (let* ((_output-bin24352_
                (gxc#compile-exe-output-file _ctx24346_ _opts24347_))
               (_output-scm24354_ (string-append _output-bin24352_ '".scm")))
          (begin
            (with-output-to-file _output-scm24354_ _generate-stub24349_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24350_ _output-scm24354_ _output-bin24352_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24354_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24341_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24343_ (path-expand '"gxc" _cachedir24341_)))
        (begin
          (create-directory* _gxc-cache24343_)
          (path-normalize _gxc-cache24343_)))))
  (define gxc#compile-cache
    (lambda (_file24335_ _gxc-cache24336_)
      (let ((_cachefile24338_
             (path-expand
              (path-strip-directory _file24335_)
              _gxc-cache24336_)))
        (begin
          (if (file-exists? _cachefile24338_)
              (if (file-newer? _file24335_ _cachefile24338_)
                  (begin
                    (delete-file _cachefile24338_)
                    (copy-file _file24335_ _cachefile24338_))
                  '#!void)
              (copy-file _file24335_ _cachefile24338_))
          _cachefile24338_))))
  (define gxc#find-export-binding
    (lambda (_ctx24285_ _id24286_)
      (let ((_$e24332_
             (find (lambda (_e2428724289_)
                     (let* ((_g2429124301_ _e2428724289_)
                            (_E2429424305_
                             (lambda ()
                               (error '"No clause matching" _g2429124301_)))
                            (_else2429324309_ (lambda () '#f))
                            (_K2429524313_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2429124301_
                            (##type-id gx#module-export::t))
                           (let* ((_e2429624316_
                                   (##vector-ref _g2429124301_ '1))
                                  (_e2429724319_
                                   (##vector-ref _g2429124301_ '2))
                                  (_e2429824322_
                                   (##vector-ref _g2429124301_ '3)))
                             (if (##eq? _e2429824322_ '0)
                                 (let ((_e2429924325_
                                        (##vector-ref _g2429124301_ '4)))
                                   (if ((lambda (_g2432724329_)
                                          (eq? _g2432724329_ _id24286_))
                                        _e2429924325_)
                                       (_K2429524313_)
                                       (_else2429324309_)))
                                 (_else2429324309_)))
                           (_else2429324309_))))
                   (##structure-ref _ctx24285_ '9 gx#module-context::t '#f))))
        (if _$e24332_ (gx#core-resolve-module-export _$e24332_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24277_ _id24278_)
      (let ((_$e24280_ (gxc#find-export-binding _ctx24277_ _id24278_)))
        (if _$e24280_
            ((lambda (_bind24283_)
               (begin
                 (if (##structure-instance-of?
                      _bind24283_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24278_))
                 (##structure-ref _bind24283_ '1 gx#binding::t '#f)))
             _$e24280_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24277_ '1 gx#expander-context::t '#f)
             _id24278_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24164_)
      (letrec* ((_ht24166_ (make-hash-table-eq))
                (_import-set-template24167_
                 (lambda (_in24229_ _phi24230_)
                   (let ((_iphi24232_
                          (fx+ _phi24230_
                               (##direct-structure-ref
                                _in24229_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports24233_
                          (##structure-ref
                           (##direct-structure-ref
                            _in24229_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp24235_ ((_rest24237_ _imports24233_)
                                     (_r24238_ '()))
                       (let* ((_rest2423924247_ _rest24237_)
                              (_E2424224251_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2423924247_)))
                              (_else2424124255_ (lambda () _r24238_))
                              (_K2424324265_
                               (lambda (_rest24258_ _in24259_)
                                 (if (##structure-instance-of?
                                      _in24259_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi24232_)
                                         (_lp24235_
                                          _rest24258_
                                          (cons _in24259_ _r24238_))
                                         (_lp24235_ _rest24258_ _r24238_))
                                     (if (##structure-direct-instance-of?
                                          _in24259_
                                          'gx#module-import::t)
                                         (let ((_iphi24261_
                                                (fx+ _phi24230_
                                                     (##direct-structure-ref
                                                      _in24259_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi24261_)
                                               (_lp24235_
                                                _rest24258_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in24259_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r24238_))
                                               (_lp24235_
                                                _rest24258_
                                                _r24238_)))
                                         (if (##structure-direct-instance-of?
                                              _in24259_
                                              'gx#import-set::t)
                                             (let ((_xphi24263_
                                                    (fx+ _iphi24232_
                                                         (##direct-structure-ref
                                                          _in24259_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi24263_)
                                                   (_lp24235_
                                                    _rest24258_
                                                    (cons (##direct-structure-ref
                                                           _in24259_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r24238_))
                                                   (if (fxpositive?
                                                        _xphi24263_)
                                                       (_lp24235_
                                                        _rest24258_
                                                        (foldl1 cons
                                                                _r24238_
                                                                (_import-set-template24167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in24259_
                         _iphi24232_)))
               (_lp24235_ _rest24258_ _r24238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp24235_
                                              _rest24258_
                                              _r24238_)))))))
                         (if (##pair? _rest2423924247_)
                             (let ((_hd2424424268_ (##car _rest2423924247_))
                                   (_tl2424524270_ (##cdr _rest2423924247_)))
                               (let* ((_in24273_ _hd2424424268_)
                                      (_rest24275_ _tl2424524270_))
                                 (_K2424324265_ _rest24275_ _in24273_)))
                             (_else2424124255_)))))))
                (_find-deps24168_
                 (lambda (_rest24175_ _deps24176_)
                   (let* ((_rest2417724185_ _rest24175_)
                          (_E2418024189_
                           (lambda ()
                             (error '"No clause matching" _rest2417724185_)))
                          (_else2417924193_ (lambda () _deps24176_))
                          (_K2418124217_
                           (lambda (_rest24196_ _hd24197_)
                             (if (##structure-instance-of?
                                  _hd24197_
                                  'gx#module-context::t)
                                 (let ((_id24199_
                                        (##structure-ref
                                         _hd24197_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24200_
                                        (##structure-ref
                                         _hd24197_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24166_ _id24199_ '#f)
                                       (_find-deps24168_
                                        _rest24196_
                                        _deps24176_)
                                       (let ((_$e24202_
                                              (gx#core-context-prelude__opt-lambda13205
                                               _hd24197_)))
                                         (if _$e24202_
                                             ((lambda (_pre24205_)
                                                (let ((_xdeps24207_
                                                       (_find-deps24168_
                                                        (cons _pre24205_
                                                              _imports24200_)
                                                        _deps24176_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24166_
                                                     _id24199_
                                                     _hd24197_)
                                                    (_find-deps24168_
                                                     _rest24196_
                                                     (cons _hd24197_
                                                           _xdeps24207_)))))
                                              _$e24202_)
                                             (let ((_xdeps24209_
                                                    (_find-deps24168_
                                                     _imports24200_
                                                     _deps24176_)))
                                               (begin
                                                 (table-set!
                                                  _ht24166_
                                                  _id24199_
                                                  _hd24197_)
                                                 (_find-deps24168_
                                                  _rest24196_
                                                  (cons _hd24197_
                                                        _xdeps24209_))))))))
                                 (if (##structure-instance-of?
                                      _hd24197_
                                      'gx#prelude-context::t)
                                     (let ((_id24211_
                                            (##structure-ref
                                             _hd24197_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24166_ _id24211_ '#f)
                                           (_find-deps24168_
                                            _rest24196_
                                            _deps24176_)
                                           (let ((_xdeps24213_
                                                  (_find-deps24168_
                                                   (##structure-ref
                                                    _hd24197_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24176_)))
                                             (if (table-ref
                                                  _ht24166_
                                                  _id24211_
                                                  '#f)
                                                 (_find-deps24168_
                                                  _rest24196_
                                                  _xdeps24213_)
                                                 (begin
                                                   (table-set!
                                                    _ht24166_
                                                    _id24211_
                                                    _hd24197_)
                                                   (_find-deps24168_
                                                    _rest24196_
                                                    (cons _hd24197_
                                                          _xdeps24213_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24197_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24197_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24168_
                                              (cons (##direct-structure-ref
                                                     _hd24197_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24196_)
                                              _deps24176_)
                                             (_find-deps24168_
                                              _rest24196_
                                              _deps24176_))
                                         (if (##structure-direct-instance-of?
                                              _hd24197_
                                              'gx#module-export::t)
                                             (_find-deps24168_
                                              (cons (##direct-structure-ref
                                                     _hd24197_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24196_)
                                              _deps24176_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24197_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24197_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24168_
                                                      (cons (##direct-structure-ref
                                                             _hd24197_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24196_)
                                                      _deps24176_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd24197_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps24215_
                                                                (_import-set-template24167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24197_
                         '0)))
                   (_find-deps24168_
                    (foldl1 cons _rest24196_ _xdeps24215_)
                    _deps24176_))
                 (_find-deps24168_ _rest24196_ _deps24176_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd24197_)))))))))
                     (if (##pair? _rest2417724185_)
                         (let ((_hd2418224220_ (##car _rest2417724185_))
                               (_tl2418324222_ (##cdr _rest2417724185_)))
                           (let* ((_hd24225_ _hd2418224220_)
                                  (_rest24227_ _tl2418324222_))
                             (_K2418124217_ _rest24227_ _hd24225_)))
                         (_else2417924193_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24168_
                          (let ((_$e24170_
                                 (gx#core-context-prelude__opt-lambda13205
                                  _ctx24164_)))
                            (if _$e24170_
                                ((lambda (_pre24173_)
                                   (cons _pre24173_
                                         (##structure-ref
                                          _ctx24164_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24170_)
                                (##structure-ref
                                 _ctx24164_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24103_)
      (let* ((_scm24105_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24103_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24107_ (gx#current-expander-module-library-path))
             (_dirs24116_
              (let ((_$e24109_ (gxc#current-compile-output-dir)))
                (if _$e24109_
                    ((lambda (_g2411124113_) (cons _g2411124113_ _dirs24107_))
                     _$e24109_)
                    _dirs24107_)))
             (_dirs24122_
              (map (lambda (_g2411724119_)
                     (path-expand '"static" _g2411724119_))
                   _dirs24116_)))
        (let _lp24125_ ((_rest24127_ _dirs24122_))
          (let* ((_rest2412824136_ _rest24127_)
                 (_E2413124140_
                  (lambda () (error '"No clause matching" _rest2412824136_)))
                 (_else2413024144_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24103_ '1 gx#expander-context::t '#f)
                     _scm24105_)))
                 (_K2413224152_
                  (lambda (_rest24147_ _dir24148_)
                    (let ((_path24150_ (path-expand _scm24105_ _dir24148_)))
                      (if (file-exists? _path24150_)
                          _path24150_
                          (_lp24125_ _rest24147_))))))
            (if (##pair? _rest2412824136_)
                (let ((_hd2413324155_ (##car _rest2412824136_))
                      (_tl2413424157_ (##cdr _rest2412824136_)))
                  (let* ((_dir24160_ _hd2413324155_)
                         (_rest24162_ _tl2413424157_))
                    (_K2413224152_ _rest24162_ _dir24160_)))
                (_else2413024144_)))))))
  (define gxc#file-empty?
    (lambda (_path24101_)
      (zero? (file-info-size (file-info _path24101_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24098_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24098_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24098_)
               '#!void)
           (gxc#collect-bindings _ctx24098_)
           (gxc#compile-runtime-code _ctx24098_)
           (gxc#compile-meta-code _ctx24098_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24098_)
               '#!void)))
       gx#current-expander-context
       _ctx24098_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24514 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24514) __obj24514))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24096_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24096_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx24051_)
      (letrec ((_compile124053_
                (lambda (_ctx24085_)
                  (let* ((_code24087_
                          (##structure-ref
                           _ctx24085_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24091_
                          (if (gxc#apply-find-runtime-code _code24087_)
                              (let ((_idstr24089_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24085_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24089_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24091_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24085_
                             _rt24091_)
                            (_generate-runtime-code24054_
                             _ctx24085_
                             _code24087_))
                          (if (gxc#current-compile-static)
                              (let ((_path24094_
                                     (gxc#compile-static-output-file
                                      _ctx24085_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24094_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24055_
                       _ctx24085_
                       _code24087_
                       _rt24091_)))))
               (_generate-runtime-code24054_
                (lambda (_ctx24069_ _code24070_)
                  (let* ((_lifts24072_ (box '()))
                         (_runtime-code24075_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24070_))
                           gx#current-expander-context
                           _ctx24069_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts24072_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code24077_
                          (if (null? (unbox _lifts24072_))
                              _runtime-code24075_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code24075_ '())
                                            (reverse (unbox _lifts24072_))))))
                         (_scm024079_
                          (gxc#compile-output-file _ctx24069_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24082_
                               (gxc#compile-static-output-file _ctx24069_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024079_
                                _runtime-code24077_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24082_)
                                (delete-file _scms24082_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024079_
                             '" => "
                             _scms24082_)
                            (copy-file _scm024079_ _scms24082_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024079_))))
                        (gxc#compile-scm-file
                         _scm024079_
                         _runtime-code24077_)))))
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
        (let ((_g24525_ (gxc#generate-meta-code _ctx23953_)))
          (begin
            (let ((_g24526_ (values-count _g24525_)))
              (if (not (fx= _g24526_ 2))
                  (error "Context expects 2 values" _g24526_)))
            (let ((_ssi-code23958_ (values-ref _g24525_ 0))
                  (_phi-code23959_ (values-ref _g24525_ 1)))
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
              (let ((__obj24515 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24515 _ctx23929_)
                  __obj24515)))
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
             (_g24527_
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
