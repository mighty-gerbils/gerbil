(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath24480_ _opts24481_)
        (begin
          (if (string? _srcpath24480_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24480_))
          (let ((_outdir24483_ (pgetq 'output-dir: _opts24481_))
                (_invoke-gsc?24484_ (pgetq 'invoke-gsc: _opts24481_))
                (_gsc-options24485_ (pgetq 'gsc-options: _opts24481_))
                (_keep-scm?24486_ (pgetq 'keep-scm: _opts24481_))
                (_verbosity24487_ (pgetq 'verbose: _opts24481_))
                (_optimize24488_ (pgetq 'optimize: _opts24481_))
                (_debug24489_ (pgetq 'debug: _opts24481_))
                (_gen-ssxi24490_ (pgetq 'generate-ssxi: _opts24481_))
                (_static24491_ (pgetq 'static: _opts24481_)))
            (begin
              (if _outdir24483_ (create-directory* _outdir24483_) '#!void)
              (if _optimize24488_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24480_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24480_))))
               gxc#current-compile-output-dir
               _outdir24483_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24484_
               gxc#current-compile-gsc-options
               _gsc-options24485_
               gxc#current-compile-keep-scm
               _keep-scm?24486_
               gxc#current-compile-verbose
               _verbosity24487_
               gxc#current-compile-optimize
               _optimize24488_
               gxc#current-compile-debug
               _debug24489_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24490_
               gxc#current-compile-static
               _static24491_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24497_)
          (let ((_opts24499_ '()))
            (gxc#compile-file__% _srcpath24497_ _opts24499_))))
      (define gxc#compile-file
        (lambda _g24507_
          (let ((_g24506_ (length _g24507_)))
            (cond ((fx= _g24506_ 1) (apply gxc#compile-file__0 _g24507_))
                  ((fx= _g24506_ 2) (apply gxc#compile-file__% _g24507_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24507_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath24466_ _opts24467_)
        (gxc#do-compile-exe
         _srcpath24466_
         _opts24467_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24472_)
          (let ((_opts24474_ '()))
            (gxc#compile-exe-stub__% _srcpath24472_ _opts24474_))))
      (define gxc#compile-exe-stub
        (lambda _g24509_
          (let ((_g24508_ (length _g24509_)))
            (cond ((fx= _g24508_ 1) (apply gxc#compile-exe-stub__0 _g24509_))
                  ((fx= _g24508_ 2) (apply gxc#compile-exe-stub__% _g24509_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24509_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath24452_ _opts24453_)
        (gxc#do-compile-exe
         _srcpath24452_
         _opts24453_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24458_)
          (let ((_opts24460_ '()))
            (gxc#compile-static-exe__% _srcpath24458_ _opts24460_))))
      (define gxc#compile-static-exe
        (lambda _g24511_
          (let ((_g24510_ (length _g24511_)))
            (cond ((fx= _g24510_ 1) (apply gxc#compile-static-exe__0 _g24511_))
                  ((fx= _g24510_ 2) (apply gxc#compile-static-exe__% _g24511_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24511_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24440_ _opts24441_ _compile-e24442_)
      (begin
        (if (string? _srcpath24440_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24440_))
        (let ((_outdir24444_ (pgetq 'output-dir: _opts24441_))
              (_invoke-gsc?24445_ (pgetq 'invoke-gsc: _opts24441_))
              (_gsc-options24446_ (pgetq 'gsc-options: _opts24441_))
              (_keep-scm?24447_ (pgetq 'keep-scm: _opts24441_))
              (_verbosity24448_ (pgetq 'verbose: _opts24441_)))
          (begin
            (if _outdir24444_ (create-directory* _outdir24444_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24440_)
                 (_compile-e24442_
                  (gx#import-module__0 _srcpath24440_)
                  _opts24441_)))
             gxc#current-compile-output-dir
             _outdir24444_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24445_
             gxc#current-compile-gsc-options
             _gsc-options24446_
             gxc#current-compile-keep-scm
             _keep-scm?24447_
             gxc#current-compile-verbose
             _verbosity24448_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24404_ _opts24405_)
      (letrec ((_generate-stub24407_
                (lambda ()
                  (let* ((_mod-str24433_
                          (symbol->string
                           (##structure-ref
                            _ctx24404_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24435_ (string-append _mod-str24433_ '"__rt"))
                         (_mod-main24437_
                          (gxc#find-runtime-symbol _ctx24404_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24435_
                                         (cons (cons 'quote
                                                     (cons _mod-main24437_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24408_
                (lambda (_output-scm24415_ _output-bin24416_)
                  (let* ((_init-stub24418_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24420_ (gxc#compile-cache-directory))
                         (_init-stub24422_
                          (gxc#compile-cache
                           _init-stub24418_
                           _gxc-cache24420_))
                         (_gsc-args24424_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24416_
                                            (cons _init-stub24422_
                                                  (cons _output-scm24415_
                                                        '()))))))
                         (_g24512_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24424_)))
                         (_proc24427_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24424_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24429_ (process-status _proc24427_)))
                    (if (zero? _status24429_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24415_
                         _output-bin24416_
                         _status24429_))))))
        (let* ((_output-bin24410_
                (gxc#compile-exe-output-file _ctx24404_ _opts24405_))
               (_output-scm24412_ (string-append _output-bin24410_ '".scm")))
          (begin
            (with-output-to-file _output-scm24412_ _generate-stub24407_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24408_ _output-scm24412_ _output-bin24410_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24412_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24314_ _opts24315_)
      (letrec ((_generate-stub24317_
                (lambda ()
                  (let ((_mod-main24402_
                         (gxc#find-runtime-symbol _ctx24314_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main24402_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include24318_
                (lambda (_gsc-opts24384_ _home24385_)
                  (letrec* ((_static-dir24387_
                             (path-expand '"lib/static" _home24385_))
                            (_user-static-dir24388_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags24389_
                             (string-append
                              '"-I "
                              _static-dir24387_
                              '" -I "
                              _user-static-dir24388_)))
                    (let ((_$e24391_ (member '"-cc-options" _gsc-opts24384_)))
                      (if _$e24391_
                          ((lambda (_rest24394_)
                             (let* ((_cell24396_ (cdr _rest24394_))
                                    (_opt24398_ (car _cell24396_)))
                               (begin
                                 (set-car!
                                  _cell24396_
                                  (string-append
                                   _opt24398_
                                   '" "
                                   _cppflags24389_))
                                 _gsc-opts24384_)))
                           _$e24391_)
                          (cons* '"-cc-options"
                                 _cppflags24389_
                                 _gsc-opts24384_))))))
               (_compile-stub24319_
                (lambda (_output-scm24326_ _output-bin24327_)
                  (let* ((_gerbil-home24329_ (getenv '"GERBIL_HOME"))
                         (_gx-version24331_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24329_))
                         (_gx-gambc024333_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24329_))
                         (_gx-gambc-init24335_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24329_))
                         (_gx-gambc-macros24337_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24329_))
                         (_include-gx-gambc-macros24339_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24337_
                           '"\")"))
                         (_bin-scm24341_
                          (gxc#find-static-module-file _ctx24314_))
                         (_deps24343_
                          (gxc#find-runtime-module-deps _ctx24314_))
                         (_deps24345_
                          (map gxc#find-static-module-file _deps24343_))
                         (_deps24350_
                          (filter (lambda (_$obj24347_)
                                    (not (gxc#file-empty? _$obj24347_)))
                                  _deps24345_))
                         (_gxc-cache24352_ (gxc#compile-cache-directory))
                         (_g24513_
                          (gxc#compile-cache
                           _gx-version24331_
                           _gxc-cache24352_))
                         (_gx-gambc024355_
                          (gxc#compile-cache
                           _gx-gambc024333_
                           _gxc-cache24352_))
                         (_gx-gambc-init24357_
                          (gxc#compile-cache
                           _gx-gambc-init24335_
                           _gxc-cache24352_))
                         (_deps24363_
                          (map (lambda (_g2435824360_)
                                 (gxc#compile-cache
                                  _g2435824360_
                                  _gxc-cache24352_))
                               _deps24350_))
                         (_bin-scm24365_
                          (gxc#compile-cache _bin-scm24341_ _gxc-cache24352_))
                         (_gsc-opts24370_
                          (let ((_$e24367_ (pgetq 'gsc-options: _opts24315_)))
                            (if _$e24367_ _$e24367_ '())))
                         (_gsc-opts24372_
                          (_static-include24318_
                           _gsc-opts24370_
                           _gerbil-home24329_))
                         (_gsc-gx-macros24374_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros24339_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros24339_
                                          '()))))
                         (_gsc-args24376_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24327_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _gx-gambc024355_
                                  (cons _gx-gambc-init24357_
                                        (foldr1 cons
                                                (cons _bin-scm24365_
                                                      (cons _output-scm24326_
                                                            '()))
                                                _deps24363_)))
                            _gsc-gx-macros24374_)
                    _gsc-opts24372_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24514_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24376_)))
                         (_proc24379_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24376_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24381_ (process-status _proc24379_)))
                    (if (zero? _status24381_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24326_
                         _output-bin24327_
                         _status24381_))))))
        (let* ((_output-bin24321_
                (gxc#compile-exe-output-file _ctx24314_ _opts24315_))
               (_output-scm24323_ (string-append _output-bin24321_ '".scm")))
          (begin
            (with-output-to-file _output-scm24323_ _generate-stub24317_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24319_ _output-scm24323_ _output-bin24321_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24323_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24309_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24311_ (path-expand '"gxc" _cachedir24309_)))
        (begin
          (create-directory* _gxc-cache24311_)
          (path-normalize _gxc-cache24311_)))))
  (define gxc#compile-cache
    (lambda (_file24303_ _gxc-cache24304_)
      (let ((_cachefile24306_
             (path-expand
              (path-strip-directory _file24303_)
              _gxc-cache24304_)))
        (begin
          (if (file-exists? _cachefile24306_)
              (if (file-newer? _file24303_ _cachefile24306_)
                  (begin
                    (delete-file _cachefile24306_)
                    (copy-file _file24303_ _cachefile24306_))
                  '#!void)
              (copy-file _file24303_ _cachefile24306_))
          _cachefile24306_))))
  (define gxc#find-export-binding
    (lambda (_ctx24253_ _id24254_)
      (let ((_$e24300_
             (find (lambda (_e2425524257_)
                     (let* ((_g2425924269_ _e2425524257_)
                            (_E2426224273_
                             (lambda ()
                               (error '"No clause matching" _g2425924269_)))
                            (_else2426124277_ (lambda () '#f))
                            (_K2426324281_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2425924269_
                            (##type-id gx#module-export::t))
                           (let* ((_e2426424284_
                                   (##vector-ref _g2425924269_ '1))
                                  (_e2426524287_
                                   (##vector-ref _g2425924269_ '2))
                                  (_e2426624290_
                                   (##vector-ref _g2425924269_ '3)))
                             (if (##eq? _e2426624290_ '0)
                                 (let ((_e2426724293_
                                        (##vector-ref _g2425924269_ '4)))
                                   (if ((lambda (_g2429524297_)
                                          (eq? _g2429524297_ _id24254_))
                                        _e2426724293_)
                                       (_K2426324281_)
                                       (_else2426124277_)))
                                 (_else2426124277_)))
                           (_else2426124277_))))
                   (##structure-ref _ctx24253_ '9 gx#module-context::t '#f))))
        (if _$e24300_ (gx#core-resolve-module-export _$e24300_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24245_ _id24246_)
      (let ((_$e24248_ (gxc#find-export-binding _ctx24245_ _id24246_)))
        (if _$e24248_
            ((lambda (_bind24251_)
               (begin
                 (if (##structure-instance-of?
                      _bind24251_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24246_))
                 (##structure-ref _bind24251_ '1 gx#binding::t '#f)))
             _$e24248_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24245_ '1 gx#expander-context::t '#f)
             _id24246_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24132_)
      (letrec* ((_ht24134_ (make-hash-table-eq))
                (_import-set-template24135_
                 (lambda (_in24197_ _phi24198_)
                   (let ((_iphi24200_
                          (fx+ _phi24198_
                               (##direct-structure-ref
                                _in24197_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports24201_
                          (##structure-ref
                           (##direct-structure-ref
                            _in24197_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp24203_ ((_rest24205_ _imports24201_)
                                     (_r24206_ '()))
                       (let* ((_rest2420724215_ _rest24205_)
                              (_E2421024219_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2420724215_)))
                              (_else2420924223_ (lambda () _r24206_))
                              (_K2421124233_
                               (lambda (_rest24226_ _in24227_)
                                 (if (##structure-instance-of?
                                      _in24227_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi24200_)
                                         (_lp24203_
                                          _rest24226_
                                          (cons _in24227_ _r24206_))
                                         (_lp24203_ _rest24226_ _r24206_))
                                     (if (##structure-direct-instance-of?
                                          _in24227_
                                          'gx#module-import::t)
                                         (let ((_iphi24229_
                                                (fx+ _phi24198_
                                                     (##direct-structure-ref
                                                      _in24227_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi24229_)
                                               (_lp24203_
                                                _rest24226_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in24227_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r24206_))
                                               (_lp24203_
                                                _rest24226_
                                                _r24206_)))
                                         (if (##structure-direct-instance-of?
                                              _in24227_
                                              'gx#import-set::t)
                                             (let ((_xphi24231_
                                                    (fx+ _iphi24200_
                                                         (##direct-structure-ref
                                                          _in24227_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi24231_)
                                                   (_lp24203_
                                                    _rest24226_
                                                    (cons (##direct-structure-ref
                                                           _in24227_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r24206_))
                                                   (if (fxpositive?
                                                        _xphi24231_)
                                                       (_lp24203_
                                                        _rest24226_
                                                        (foldl1 cons
                                                                _r24206_
                                                                (_import-set-template24135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in24227_
                         _iphi24200_)))
               (_lp24203_ _rest24226_ _r24206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp24203_
                                              _rest24226_
                                              _r24206_)))))))
                         (if (##pair? _rest2420724215_)
                             (let ((_hd2421224236_ (##car _rest2420724215_))
                                   (_tl2421324238_ (##cdr _rest2420724215_)))
                               (let* ((_in24241_ _hd2421224236_)
                                      (_rest24243_ _tl2421324238_))
                                 (_K2421124233_ _rest24243_ _in24241_)))
                             (_else2420924223_)))))))
                (_find-deps24136_
                 (lambda (_rest24143_ _deps24144_)
                   (let* ((_rest2414524153_ _rest24143_)
                          (_E2414824157_
                           (lambda ()
                             (error '"No clause matching" _rest2414524153_)))
                          (_else2414724161_ (lambda () _deps24144_))
                          (_K2414924185_
                           (lambda (_rest24164_ _hd24165_)
                             (if (##structure-instance-of?
                                  _hd24165_
                                  'gx#module-context::t)
                                 (let ((_id24167_
                                        (##structure-ref
                                         _hd24165_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24168_
                                        (##structure-ref
                                         _hd24165_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24134_ _id24167_ '#f)
                                       (_find-deps24136_
                                        _rest24164_
                                        _deps24144_)
                                       (let ((_$e24170_
                                              (gx#core-context-prelude__%
                                               _hd24165_)))
                                         (if _$e24170_
                                             ((lambda (_pre24173_)
                                                (let ((_xdeps24175_
                                                       (_find-deps24136_
                                                        (cons _pre24173_
                                                              _imports24168_)
                                                        _deps24144_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24134_
                                                     _id24167_
                                                     _hd24165_)
                                                    (_find-deps24136_
                                                     _rest24164_
                                                     (cons _hd24165_
                                                           _xdeps24175_)))))
                                              _$e24170_)
                                             (let ((_xdeps24177_
                                                    (_find-deps24136_
                                                     _imports24168_
                                                     _deps24144_)))
                                               (begin
                                                 (table-set!
                                                  _ht24134_
                                                  _id24167_
                                                  _hd24165_)
                                                 (_find-deps24136_
                                                  _rest24164_
                                                  (cons _hd24165_
                                                        _xdeps24177_))))))))
                                 (if (##structure-instance-of?
                                      _hd24165_
                                      'gx#prelude-context::t)
                                     (let ((_id24179_
                                            (##structure-ref
                                             _hd24165_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24134_ _id24179_ '#f)
                                           (_find-deps24136_
                                            _rest24164_
                                            _deps24144_)
                                           (let ((_xdeps24181_
                                                  (_find-deps24136_
                                                   (##structure-ref
                                                    _hd24165_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24144_)))
                                             (if (table-ref
                                                  _ht24134_
                                                  _id24179_
                                                  '#f)
                                                 (_find-deps24136_
                                                  _rest24164_
                                                  _xdeps24181_)
                                                 (begin
                                                   (table-set!
                                                    _ht24134_
                                                    _id24179_
                                                    _hd24165_)
                                                   (_find-deps24136_
                                                    _rest24164_
                                                    (cons _hd24165_
                                                          _xdeps24181_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24165_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24165_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24136_
                                              (cons (##direct-structure-ref
                                                     _hd24165_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24164_)
                                              _deps24144_)
                                             (_find-deps24136_
                                              _rest24164_
                                              _deps24144_))
                                         (if (##structure-direct-instance-of?
                                              _hd24165_
                                              'gx#module-export::t)
                                             (_find-deps24136_
                                              (cons (##direct-structure-ref
                                                     _hd24165_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24164_)
                                              _deps24144_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24165_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24165_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24136_
                                                      (cons (##direct-structure-ref
                                                             _hd24165_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24164_)
                                                      _deps24144_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd24165_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps24183_
                                                                (_import-set-template24135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24165_
                         '0)))
                   (_find-deps24136_
                    (foldl1 cons _rest24164_ _xdeps24183_)
                    _deps24144_))
                 (_find-deps24136_ _rest24164_ _deps24144_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd24165_)))))))))
                     (if (##pair? _rest2414524153_)
                         (let ((_hd2415024188_ (##car _rest2414524153_))
                               (_tl2415124190_ (##cdr _rest2414524153_)))
                           (let* ((_hd24193_ _hd2415024188_)
                                  (_rest24195_ _tl2415124190_))
                             (_K2414924185_ _rest24195_ _hd24193_)))
                         (_else2414724161_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24136_
                          (let ((_$e24138_
                                 (gx#core-context-prelude__% _ctx24132_)))
                            (if _$e24138_
                                ((lambda (_pre24141_)
                                   (cons _pre24141_
                                         (##structure-ref
                                          _ctx24132_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24138_)
                                (##structure-ref
                                 _ctx24132_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24071_)
      (let* ((_scm24073_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24071_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24075_ (gx#current-expander-module-library-path))
             (_dirs24084_
              (let ((_$e24077_ (gxc#current-compile-output-dir)))
                (if _$e24077_
                    ((lambda (_g2407924081_) (cons _g2407924081_ _dirs24075_))
                     _$e24077_)
                    _dirs24075_)))
             (_dirs24090_
              (map (lambda (_g2408524087_)
                     (path-expand '"static" _g2408524087_))
                   _dirs24084_)))
        (let _lp24093_ ((_rest24095_ _dirs24090_))
          (let* ((_rest2409624104_ _rest24095_)
                 (_E2409924108_
                  (lambda () (error '"No clause matching" _rest2409624104_)))
                 (_else2409824112_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24071_ '1 gx#expander-context::t '#f)
                     _scm24073_)))
                 (_K2410024120_
                  (lambda (_rest24115_ _dir24116_)
                    (let ((_path24118_ (path-expand _scm24073_ _dir24116_)))
                      (if (file-exists? _path24118_)
                          _path24118_
                          (_lp24093_ _rest24115_))))))
            (if (##pair? _rest2409624104_)
                (let ((_hd2410124123_ (##car _rest2409624104_))
                      (_tl2410224125_ (##cdr _rest2409624104_)))
                  (let* ((_dir24128_ _hd2410124123_)
                         (_rest24130_ _tl2410224125_))
                    (_K2410024120_ _rest24130_ _dir24128_)))
                (_else2409824112_)))))))
  (define gxc#file-empty?
    (lambda (_path24069_)
      (zero? (file-info-size (file-info _path24069_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24066_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24066_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24066_)
               '#!void)
           (gxc#collect-bindings _ctx24066_)
           (gxc#compile-runtime-code _ctx24066_)
           (gxc#compile-meta-code _ctx24066_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24066_)
               '#!void)))
       gx#current-expander-context
       _ctx24066_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24504 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24504) __obj24504))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24064_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24064_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx24018_)
      (letrec ((_compile124020_
                (lambda (_ctx24053_)
                  (let* ((_code24055_
                          (##structure-ref
                           _ctx24053_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24059_
                          (if (gxc#apply-find-runtime-code _code24055_)
                              (let ((_idstr24057_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24053_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24057_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24059_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24053_
                             _rt24059_)
                            (_generate-runtime-code24021_
                             _ctx24053_
                             _code24055_))
                          (if (gxc#current-compile-static)
                              (let ((_path24062_
                                     (gxc#compile-static-output-file
                                      _ctx24053_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24062_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24022_
                       _ctx24053_
                       _code24055_
                       _rt24059_)))))
               (_generate-runtime-code24021_
                (lambda (_ctx24037_ _code24038_)
                  (let* ((_lifts24040_ (box '()))
                         (_runtime-code24043_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24038_))
                           gx#current-expander-context
                           _ctx24037_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts24040_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code24045_
                          (if (null? (unbox _lifts24040_))
                              _runtime-code24043_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code24043_ '())
                                            (reverse (unbox _lifts24040_))))))
                         (_scm024047_
                          (gxc#compile-output-file _ctx24037_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24050_
                               (gxc#compile-static-output-file _ctx24037_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024047_
                                _runtime-code24045_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24050_)
                                (delete-file _scms24050_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024047_
                             '" => "
                             _scms24050_)
                            (copy-file _scm024047_ _scms24050_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024047_))))
                        (gxc#compile-scm-file
                         _scm024047_
                         _runtime-code24045_)))))
               (_generate-loader-code24022_
                (lambda (_ctx24026_ _code24027_ _rt24028_)
                  (let* ((_loader-code24031_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code24027_))
                           gx#current-expander-context
                           _ctx24026_))
                         (_loader-code24033_
                          (if _rt24028_
                              (cons 'begin
                                    (cons _loader-code24031_
                                          (cons (cons 'load-module
                                                      (cons _rt24028_ '()))
                                                '())))
                              _loader-code24031_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx24026_ 'rt '".scm")
                        _loader-code24033_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules24024_
               (cons _ctx24018_ (gxc#lift-nested-modules _ctx24018_))))
          (for-each _compile124020_ _all-modules24024_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx23920_)
      (letrec ((_compile-ssi23922_
                (lambda (_code23988_)
                  (let* ((_path23990_
                          (gxc#compile-output-file _ctx23920_ '#f '".ssi"))
                         (_prelude24001_
                          (let* ((_super23992_
                                  (##structure-ref
                                   _ctx23920_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e23994_
                                  (##structure-ref
                                   _super23992_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e23994_
                                ((lambda (_g2399623998_)
                                   (make-symbol '":" _g2399623998_))
                                 _$e23994_)
                                ':<root>)))
                         (_ns24003_
                          (##structure-ref
                           _ctx23920_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr24005_
                          (symbol->string
                           (##structure-ref
                            _ctx23920_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg24012_
                          (let ((_$e24007_ (string-rindex _idstr24005_ '#\/)))
                            (if _$e24007_
                                ((lambda (_x24010_)
                                   (string->symbol
                                    (substring _idstr24005_ '0 _x24010_)))
                                 _$e24007_)
                                '#f)))
                         (_rt24014_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx23920_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path23990_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path23990_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude24001_)
                           (if _pkg24012_
                               (displayln '"package:" '" " _pkg24012_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns24003_)
                           (newline)
                           (pretty-print _code23988_)
                           (if _rt24014_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt24014_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi23923_
                (lambda (_part23928_)
                  (let* ((_part2392923942_ _part23928_)
                         (_E2393123946_
                          (lambda ()
                            (error '"No clause matching" _part2392923942_)))
                         (_K2393223957_
                          (lambda (_code23949_
                                   _n23950_
                                   _phi23951_
                                   _phi-ctx23952_)
                            (let ((_code23955_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code23949_))
                                    gx#current-expander-context
                                    _phi-ctx23952_
                                    gx#current-expander-phi
                                    _phi23951_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx23920_
                                _n23950_
                                '".scm")
                               _code23955_)))))
                    (if (##pair? _part2392923942_)
                        (let ((_hd2393323960_ (##car _part2392923942_))
                              (_tl2393423962_ (##cdr _part2392923942_)))
                          (let ((_phi-ctx23965_ _hd2393323960_))
                            (if (##pair? _tl2393423962_)
                                (let ((_hd2393523967_ (##car _tl2393423962_))
                                      (_tl2393623969_ (##cdr _tl2393423962_)))
                                  (let ((_phi23972_ _hd2393523967_))
                                    (if (##pair? _tl2393623969_)
                                        (let ((_hd2393723974_
                                               (##car _tl2393623969_))
                                              (_tl2393823976_
                                               (##cdr _tl2393623969_)))
                                          (let ((_n23979_ _hd2393723974_))
                                            (if (##pair? _tl2393823976_)
                                                (let ((_hd2393923981_
                                                       (##car _tl2393823976_))
                                                      (_tl2394023983_
                                                       (##cdr _tl2393823976_)))
                                                  (let ((_code23986_
                                                         _hd2393923981_))
                                                    (if (##null? _tl2394023983_)
                                                        (_K2393223957_
                                                         _code23986_
                                                         _n23979_
                                                         _phi23972_
                                                         _phi-ctx23965_)
                                                        (_E2393123946_))))
                                                (_E2393123946_))))
                                        (_E2393123946_))))
                                (_E2393123946_))))
                        (_E2393123946_))))))
        (let ((_g24515_ (gxc#generate-meta-code _ctx23920_)))
          (begin
            (let ((_g24516_ (values-count _g24515_)))
              (if (not (fx= _g24516_ 2))
                  (error "Context expects 2 values" _g24516_)))
            (let ((_ssi-code23925_ (values-ref _g24515_ 0))
                  (_phi-code23926_ (values-ref _g24515_ 1)))
              (begin
                (_compile-ssi23922_ _ssi-code23925_)
                (for-each _compile-phi23923_ _phi-code23926_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx23903_)
      (let* ((_path23905_ (gxc#compile-output-file _ctx23903_ '#f '".ssxi.ss"))
             (_code23907_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx23903_ '11 gx#module-context::t '#f)))
             (_idstr23909_
              (symbol->string
               (##structure-ref _ctx23903_ '1 gx#expander-context::t '#f)))
             (_pkg23916_
              (let ((_$e23911_ (string-rindex _idstr23909_ '#\/)))
                (if _$e23911_
                    ((lambda (_x23914_)
                       (string->symbol (substring _idstr23909_ '0 _x23914_)))
                     _$e23911_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path23905_)
          (with-output-to-file
           (cons 'path:
                 (cons _path23905_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg23916_ (displayln '"package: " _pkg23916_) '#!void)
               (newline)
               (pretty-print _code23907_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx23896_)
      (let* ((_state23898_
              (let ((__obj24505 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24505 _ctx23896_)
                  __obj24505)))
             (_ssi-code23900_
              (gxc#apply-generate-meta
               (##structure-ref _ctx23896_ '11 gx#module-context::t '#f)
               _state23898_)))
        (values _ssi-code23900_ (gxc#meta-state-end! _state23898_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx23889_)
      (let ((_lifts23891_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code23894_ (gxc#apply-generate-runtime-phi _stx23889_)))
             (if (null? (unbox _lifts23891_))
                 _code23894_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code23894_ '())
                               (reverse (unbox _lifts23891_)))))))
         gxc#current-compile-lift
         _lifts23891_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx23885_)
      (let ((_modules23887_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx23885_ '11 gx#module-context::t '#f)
           _modules23887_)
          (reverse (unbox _modules23887_))))))
  (define gxc#compile-scm-file
    (lambda (_path23881_ _code23882_)
      (begin
        (gxc#verbose '"compile " _path23881_)
        (with-output-to-file
         (cons 'path: (cons _path23881_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code23882_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path23881_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path23881_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e23873_ (gxc#current-compile-debug)))
        (if _$e23873_
            ((lambda (_debug23876_)
               (let ((_$e23878_ _debug23876_))
                 (if (eq? _$e23878_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e23878_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e23878_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug23876_))))))
             _$e23873_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path23855_)
      (let* ((_gsc-args23862_
              (let ((_$e23857_ (gxc#current-compile-gsc-options)))
                (if _$e23857_
                    ((lambda (_opts23860_)
                       (foldr1 cons (cons _path23855_ '()) _opts23860_))
                     _$e23857_)
                    (cons _path23855_ '()))))
             (_gsc-args23864_
              (foldr1 cons _gsc-args23862_ (gxc#gsc-debug-options)))
             (_g24517_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args23864_)))
             (_proc23867_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args23864_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status23869_ (process-status _proc23867_)))
        (if (zero? _status23869_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path23855_
             _status23869_)))))
  (define gxc#compile-output-file
    (lambda (_ctx23827_ _n23828_ _ext23829_)
      (letrec ((_module-relative-path23831_
                (lambda (_ctx23853_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx23853_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory23832_
                (lambda (_ctx23849_)
                  (path-directory
                   (let ((_mpath23851_
                          (##structure-ref
                           _ctx23849_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath23851_)
                         _mpath23851_
                         (last _mpath23851_))))))
               (_section-string23833_
                (lambda (_n23847_)
                  (if (number? _n23847_)
                      (number->string _n23847_)
                      (if (symbol? _n23847_)
                          (symbol->string _n23847_)
                          (if (string? _n23847_)
                              _n23847_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n23847_))))))
               (_file-name23834_
                (lambda (_path23845_)
                  (if _n23828_
                      (string-append
                       _path23845_
                       '"__"
                       (_section-string23833_ _n23828_)
                       _ext23829_)
                      (string-append _path23845_ _ext23829_))))
               (_file-path23835_
                (lambda ()
                  (let ((_$e23840_ (gxc#current-compile-output-dir)))
                    (if _$e23840_
                        ((lambda (_outdir23843_)
                           (path-expand
                            (_file-name23834_
                             (symbol->string
                              (##structure-ref
                               _ctx23827_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir23843_))
                         _$e23840_)
                        (path-expand
                         (_file-name23834_
                          (_module-relative-path23831_ _ctx23827_))
                         (_module-source-directory23832_ _ctx23827_)))))))
        (let ((_path23837_ (_file-path23835_)))
          (begin
            (create-directory* (path-directory _path23837_))
            _path23837_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx23810_)
      (letrec ((_file-name23812_
                (lambda (_idstr23825_)
                  (string-append
                   (gxc#static-module-name _idstr23825_)
                   '".scm")))
               (_file-path23813_
                (lambda ()
                  (let* ((_file23818_
                          (_file-name23812_
                           (symbol->string
                            (##structure-ref
                             _ctx23810_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e23820_ (gxc#current-compile-output-dir)))
                    (if _$e23820_
                        ((lambda (_outdir23823_)
                           (path-expand
                            _file23818_
                            (path-expand '"static" _outdir23823_)))
                         _$e23820_)
                        (path-expand _file23818_ '"static"))))))
        (let ((_path23815_ (_file-path23813_)))
          (begin
            (create-directory* (path-directory _path23815_))
            _path23815_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx23797_ _opts23798_)
      (let ((_$e23800_ (pgetq 'output-file: _opts23798_)))
        (if _$e23800_
            (values _$e23800_)
            (let* ((_mod-str23803_
                    (symbol->string
                     (##structure-ref
                      _ctx23797_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e23805_ (string-rindex _mod-str23803_ '#\/)))
              (if _$e23805_
                  ((lambda (_ix23808_)
                     (substring
                      _mod-str23803_
                      (fx+ _ix23808_ '1)
                      (string-length _mod-str23803_)))
                   _$e23805_)
                  _mod-str23803_))))))
  (define gxc#static-module-name
    (lambda (_idstr23793_)
      (if (string? _idstr23793_)
          (let ((_strs23795_ (string-split _idstr23793_ '#\/)))
            (string-join _strs23795_ '"__"))
          (if (symbol? _idstr23793_)
              (gxc#static-module-name (symbol->string _idstr23793_))
              (error '"Bad module id" _idstr23793_))))))
