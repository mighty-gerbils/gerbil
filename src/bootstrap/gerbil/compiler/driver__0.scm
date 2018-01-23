(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda24374
      (lambda (_srcpath24376_ _opts24377_)
        (begin
          (if (string? _srcpath24376_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24376_))
          (let ((_outdir24379_ (pgetq 'output-dir: _opts24377_))
                (_invoke-gsc?24380_ (pgetq 'invoke-gsc: _opts24377_))
                (_gsc-options24381_ (pgetq 'gsc-options: _opts24377_))
                (_keep-scm?24382_ (pgetq 'keep-scm: _opts24377_))
                (_verbosity24383_ (pgetq 'verbose: _opts24377_))
                (_optimize24384_ (pgetq 'optimize: _opts24377_))
                (_debug24385_ (pgetq 'debug: _opts24377_))
                (_gen-ssxi24386_ (pgetq 'generate-ssxi: _opts24377_))
                (_static24387_ (pgetq 'static: _opts24377_)))
            (begin
              (if _outdir24379_ (create-directory* _outdir24379_) '#!void)
              (if _optimize24384_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24376_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24376_))))
               gxc#current-compile-output-dir
               _outdir24379_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24380_
               gxc#current-compile-gsc-options
               _gsc-options24381_
               gxc#current-compile-keep-scm
               _keep-scm?24382_
               gxc#current-compile-verbose
               _verbosity24383_
               gxc#current-compile-optimize
               _optimize24384_
               gxc#current-compile-debug
               _debug24385_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24386_
               gxc#current-compile-static
               _static24387_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24393_)
          (let ((_opts24395_ '()))
            (gxc#compile-file__opt-lambda24374 _srcpath24393_ _opts24395_))))
      (define gxc#compile-file
        (lambda _g24403_
          (let ((_g24402_ (length _g24403_)))
            (cond ((fx= _g24402_ 1) (apply gxc#compile-file__0 _g24403_))
                  ((fx= _g24402_ 2)
                   (apply gxc#compile-file__opt-lambda24374 _g24403_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24403_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda24360
      (lambda (_srcpath24362_ _opts24363_)
        (gxc#do-compile-exe
         _srcpath24362_
         _opts24363_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24368_)
          (let ((_opts24370_ '()))
            (gxc#compile-exe-stub__opt-lambda24360
             _srcpath24368_
             _opts24370_))))
      (define gxc#compile-exe-stub
        (lambda _g24405_
          (let ((_g24404_ (length _g24405_)))
            (cond ((fx= _g24404_ 1) (apply gxc#compile-exe-stub__0 _g24405_))
                  ((fx= _g24404_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda24360 _g24405_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24405_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda24346
      (lambda (_srcpath24348_ _opts24349_)
        (gxc#do-compile-exe
         _srcpath24348_
         _opts24349_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24354_)
          (let ((_opts24356_ '()))
            (gxc#compile-static-exe__opt-lambda24346
             _srcpath24354_
             _opts24356_))))
      (define gxc#compile-static-exe
        (lambda _g24407_
          (let ((_g24406_ (length _g24407_)))
            (cond ((fx= _g24406_ 1) (apply gxc#compile-static-exe__0 _g24407_))
                  ((fx= _g24406_ 2)
                   (apply gxc#compile-static-exe__opt-lambda24346 _g24407_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24407_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24336_ _opts24337_ _compile-e24338_)
      (begin
        (if (string? _srcpath24336_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24336_))
        (let ((_outdir24340_ (pgetq 'output-dir: _opts24337_))
              (_invoke-gsc?24341_ (pgetq 'invoke-gsc: _opts24337_))
              (_gsc-options24342_ (pgetq 'gsc-options: _opts24337_))
              (_keep-scm?24343_ (pgetq 'keep-scm: _opts24337_))
              (_verbosity24344_ (pgetq 'verbose: _opts24337_)))
          (begin
            (if _outdir24340_ (create-directory* _outdir24340_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24336_)
                 (_compile-e24338_
                  (gx#import-module__0 _srcpath24336_)
                  _opts24337_)))
             gxc#current-compile-output-dir
             _outdir24340_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24341_
             gxc#current-compile-gsc-options
             _gsc-options24342_
             gxc#current-compile-keep-scm
             _keep-scm?24343_
             gxc#current-compile-verbose
             _verbosity24344_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24300_ _opts24301_)
      (letrec ((_generate-stub24303_
                (lambda ()
                  (let* ((_mod-str24329_
                          (symbol->string
                           (##structure-ref
                            _ctx24300_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24331_ (string-append _mod-str24329_ '"__rt"))
                         (_mod-main24333_
                          (gxc#find-runtime-symbol _ctx24300_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24331_
                                         (cons (cons 'quote
                                                     (cons _mod-main24333_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24304_
                (lambda (_output-scm24311_ _output-bin24312_)
                  (let* ((_init-stub24314_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24316_ (gxc#compile-cache-directory))
                         (_init-stub24318_
                          (gxc#compile-cache
                           _init-stub24314_
                           _gxc-cache24316_))
                         (_gsc-args24320_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24312_
                                            (cons _init-stub24318_
                                                  (cons _output-scm24311_
                                                        '()))))))
                         (_g24408_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24320_)))
                         (_proc24323_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24320_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24325_ (process-status _proc24323_)))
                    (if (zero? _status24325_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24311_
                         _output-bin24312_
                         _status24325_))))))
        (let* ((_output-bin24306_
                (gxc#compile-exe-output-file _ctx24300_ _opts24301_))
               (_output-scm24308_ (string-append _output-bin24306_ '".scm")))
          (begin
            (with-output-to-file _output-scm24308_ _generate-stub24303_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24304_ _output-scm24308_ _output-bin24306_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24308_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24232_ _opts24233_)
      (letrec ((_generate-stub24235_
                (lambda ()
                  (let ((_mod-main24298_
                         (gxc#find-runtime-symbol _ctx24232_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main24298_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub24236_
                (lambda (_output-scm24243_ _output-bin24244_)
                  (let* ((_gerbil-home24246_ (getenv '"GERBIL_HOME"))
                         (_gx-version24248_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24246_))
                         (_gx-gambc024250_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24246_))
                         (_gx-gambc-init24252_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24246_))
                         (_gx-gambc-macros24254_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24246_))
                         (_include-gx-gambc-macros24256_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24254_
                           '"\")"))
                         (_bin-scm24258_
                          (gxc#find-static-module-file _ctx24232_))
                         (_deps24260_
                          (gxc#find-runtime-module-deps _ctx24232_))
                         (_deps24262_
                          (map gxc#find-static-module-file _deps24260_))
                         (_deps24267_
                          (filter (lambda (_$obj24264_)
                                    (not (gxc#file-empty? _$obj24264_)))
                                  _deps24262_))
                         (_gxc-cache24269_ (gxc#compile-cache-directory))
                         (_g24409_
                          (gxc#compile-cache
                           _gx-version24248_
                           _gxc-cache24269_))
                         (_gx-gambc024272_
                          (gxc#compile-cache
                           _gx-gambc024250_
                           _gxc-cache24269_))
                         (_gx-gambc-init24274_
                          (gxc#compile-cache
                           _gx-gambc-init24252_
                           _gxc-cache24269_))
                         (_deps24280_
                          (map (lambda (_g2427524277_)
                                 (gxc#compile-cache
                                  _g2427524277_
                                  _gxc-cache24269_))
                               _deps24267_))
                         (_bin-scm24282_
                          (gxc#compile-cache _bin-scm24258_ _gxc-cache24269_))
                         (_gsc-opts24287_
                          (let ((_$e24284_ (pgetq 'gsc-options: _opts24233_)))
                            (if _$e24284_ _$e24284_ '())))
                         (_gsc-args24289_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24244_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros24256_
                                (cons _gx-gambc024272_
                                      (cons _gx-gambc-init24274_
                                            (foldr1 cons
                                                    (cons _bin-scm24282_
                                                          (cons _output-scm24243_
                                                                '()))
                                                    _deps24280_)))))
                    _gsc-opts24287_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24410_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24289_)))
                         (_proc24292_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24289_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24294_ (process-status _proc24292_)))
                    (if (zero? _status24294_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24243_
                         _output-bin24244_
                         _status24294_))))))
        (let* ((_output-bin24238_
                (gxc#compile-exe-output-file _ctx24232_ _opts24233_))
               (_output-scm24240_ (string-append _output-bin24238_ '".scm")))
          (begin
            (with-output-to-file _output-scm24240_ _generate-stub24235_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24236_ _output-scm24240_ _output-bin24238_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24240_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24227_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24229_ (path-expand '"gxc" _cachedir24227_)))
        (begin
          (create-directory* _gxc-cache24229_)
          (path-normalize _gxc-cache24229_)))))
  (define gxc#compile-cache
    (lambda (_file24221_ _gxc-cache24222_)
      (let ((_cachefile24224_
             (path-expand
              (path-strip-directory _file24221_)
              _gxc-cache24222_)))
        (begin
          (if (file-exists? _cachefile24224_)
              (if (file-newer? _file24221_ _cachefile24224_)
                  (begin
                    (delete-file _cachefile24224_)
                    (copy-file _file24221_ _cachefile24224_))
                  '#!void)
              (copy-file _file24221_ _cachefile24224_))
          _cachefile24224_))))
  (define gxc#find-export-binding
    (lambda (_ctx24171_ _id24172_)
      (let ((_$e24218_
             (find (lambda (_e2417324175_)
                     (let* ((_g2417724187_ _e2417324175_)
                            (_E2418024191_
                             (lambda ()
                               (error '"No clause matching" _g2417724187_)))
                            (_else2417924195_ (lambda () '#f))
                            (_K2418124199_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2417724187_
                            (##type-id gx#module-export::t))
                           (let* ((_e2418224202_
                                   (##vector-ref _g2417724187_ '1))
                                  (_e2418324205_
                                   (##vector-ref _g2417724187_ '2))
                                  (_e2418424208_
                                   (##vector-ref _g2417724187_ '3)))
                             (if (##eq? _e2418424208_ '0)
                                 (let ((_e2418524211_
                                        (##vector-ref _g2417724187_ '4)))
                                   (if ((lambda (_g2421324215_)
                                          (eq? _g2421324215_ _id24172_))
                                        _e2418524211_)
                                       (_K2418124199_)
                                       (_else2417924195_)))
                                 (_else2417924195_)))
                           (_else2417924195_))))
                   (##structure-ref _ctx24171_ '9 gx#module-context::t '#f))))
        (if _$e24218_ (gx#core-resolve-module-export _$e24218_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24163_ _id24164_)
      (let ((_$e24166_ (gxc#find-export-binding _ctx24163_ _id24164_)))
        (if _$e24166_
            ((lambda (_bind24169_)
               (begin
                 (if (##structure-instance-of?
                      _bind24169_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24164_))
                 (##structure-ref _bind24169_ '1 gx#binding::t '#f)))
             _$e24166_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24163_ '1 gx#expander-context::t '#f)
             _id24164_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24101_)
      (letrec* ((_ht24103_ (make-hash-table-eq))
                (_find-deps24104_
                 (lambda (_rest24111_ _deps24112_)
                   (let* ((_rest2411324121_ _rest24111_)
                          (_E2411624125_
                           (lambda ()
                             (error '"No clause matching" _rest2411324121_)))
                          (_else2411524129_ (lambda () _deps24112_))
                          (_K2411724151_
                           (lambda (_rest24132_ _hd24133_)
                             (if (##structure-instance-of?
                                  _hd24133_
                                  'gx#module-context::t)
                                 (let ((_id24135_
                                        (##structure-ref
                                         _hd24133_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24136_
                                        (##structure-ref
                                         _hd24133_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24103_ _id24135_ '#f)
                                       (_find-deps24104_
                                        _rest24132_
                                        _deps24112_)
                                       (let ((_$e24138_
                                              (gx#core-context-prelude__opt-lambda13129
                                               _hd24133_)))
                                         (if _$e24138_
                                             ((lambda (_pre24141_)
                                                (let ((_xdeps24143_
                                                       (_find-deps24104_
                                                        (cons _pre24141_
                                                              _imports24136_)
                                                        _deps24112_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24103_
                                                     _id24135_
                                                     _hd24133_)
                                                    (_find-deps24104_
                                                     _rest24132_
                                                     (cons _hd24133_
                                                           _xdeps24143_)))))
                                              _$e24138_)
                                             (let ((_xdeps24145_
                                                    (_find-deps24104_
                                                     _imports24136_
                                                     _deps24112_)))
                                               (begin
                                                 (table-set!
                                                  _ht24103_
                                                  _id24135_
                                                  _hd24133_)
                                                 (_find-deps24104_
                                                  _rest24132_
                                                  (cons _hd24133_
                                                        _xdeps24145_))))))))
                                 (if (##structure-instance-of?
                                      _hd24133_
                                      'gx#prelude-context::t)
                                     (let ((_id24147_
                                            (##structure-ref
                                             _hd24133_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24103_ _id24147_ '#f)
                                           (_find-deps24104_
                                            _rest24132_
                                            _deps24112_)
                                           (let ((_xdeps24149_
                                                  (_find-deps24104_
                                                   (##structure-ref
                                                    _hd24133_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24112_)))
                                             (if (table-ref
                                                  _ht24103_
                                                  _id24147_
                                                  '#f)
                                                 (_find-deps24104_
                                                  _rest24132_
                                                  _xdeps24149_)
                                                 (begin
                                                   (table-set!
                                                    _ht24103_
                                                    _id24147_
                                                    _hd24133_)
                                                   (_find-deps24104_
                                                    _rest24132_
                                                    (cons _hd24133_
                                                          _xdeps24149_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24133_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24133_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24104_
                                              (cons (##direct-structure-ref
                                                     _hd24133_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24132_)
                                              _deps24112_)
                                             (_find-deps24104_
                                              _rest24132_
                                              _deps24112_))
                                         (if (##structure-direct-instance-of?
                                              _hd24133_
                                              'gx#module-export::t)
                                             (_find-deps24104_
                                              (cons (##direct-structure-ref
                                                     _hd24133_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24132_)
                                              _deps24112_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24133_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24133_
                                                               '3
                                                               gx#module-import::t
                                                               '#f))
                                                     (_find-deps24104_
                                                      (cons (##direct-structure-ref
                                                             _hd24133_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24132_)
                                                      _deps24112_)
                                                     (_find-deps24104_
                                                      _rest24132_
                                                      _deps24112_))
                                                 (error '"Unexpected module import"
                                                        _hd24133_)))))))))
                     (if (##pair? _rest2411324121_)
                         (let ((_hd2411824154_ (##car _rest2411324121_))
                               (_tl2411924156_ (##cdr _rest2411324121_)))
                           (let* ((_hd24159_ _hd2411824154_)
                                  (_rest24161_ _tl2411924156_))
                             (_K2411724151_ _rest24161_ _hd24159_)))
                         (_else2411524129_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24104_
                          (let ((_$e24106_
                                 (gx#core-context-prelude__opt-lambda13129
                                  _ctx24101_)))
                            (if _$e24106_
                                ((lambda (_pre24109_)
                                   (cons _pre24109_
                                         (##structure-ref
                                          _ctx24101_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24106_)
                                (##structure-ref
                                 _ctx24101_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24040_)
      (let* ((_scm24042_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24040_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24044_ (gx#current-expander-module-library-path))
             (_dirs24053_
              (let ((_$e24046_ (gxc#current-compile-output-dir)))
                (if _$e24046_
                    ((lambda (_g2404824050_) (cons _g2404824050_ _dirs24044_))
                     _$e24046_)
                    _dirs24044_)))
             (_dirs24059_
              (map (lambda (_g2405424056_)
                     (path-expand '"static" _g2405424056_))
                   _dirs24053_)))
        (let _lp24062_ ((_rest24064_ _dirs24059_))
          (let* ((_rest2406524073_ _rest24064_)
                 (_E2406824077_
                  (lambda () (error '"No clause matching" _rest2406524073_)))
                 (_else2406724081_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24040_ '1 gx#expander-context::t '#f)
                     _scm24042_)))
                 (_K2406924089_
                  (lambda (_rest24084_ _dir24085_)
                    (let ((_path24087_ (path-expand _scm24042_ _dir24085_)))
                      (if (file-exists? _path24087_)
                          _path24087_
                          (_lp24062_ _rest24084_))))))
            (if (##pair? _rest2406524073_)
                (let ((_hd2407024092_ (##car _rest2406524073_))
                      (_tl2407124094_ (##cdr _rest2406524073_)))
                  (let* ((_dir24097_ _hd2407024092_)
                         (_rest24099_ _tl2407124094_))
                    (_K2406924089_ _rest24099_ _dir24097_)))
                (_else2406724081_)))))))
  (define gxc#file-empty?
    (lambda (_path24038_)
      (zero? (file-info-size (file-info _path24038_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24035_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24035_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24035_)
               '#!void)
           (gxc#collect-bindings _ctx24035_)
           (gxc#compile-runtime-code _ctx24035_)
           (gxc#compile-meta-code _ctx24035_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24035_)
               '#!void)))
       gx#current-expander-context
       _ctx24035_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24400 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24400) __obj24400))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24033_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24033_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx23992_)
      (letrec ((_compile123994_
                (lambda (_ctx24022_)
                  (let* ((_code24024_
                          (##structure-ref
                           _ctx24022_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24028_
                          (if (gxc#apply-find-runtime-code _code24024_)
                              (let ((_idstr24026_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24022_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24026_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24028_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24022_
                             _rt24028_)
                            (_generate-runtime-code23995_
                             _ctx24022_
                             _code24024_))
                          (if (gxc#current-compile-static)
                              (let ((_path24031_
                                     (gxc#compile-static-output-file
                                      _ctx24022_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24031_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code23996_
                       _ctx24022_
                       _code24024_
                       _rt24028_)))))
               (_generate-runtime-code23995_
                (lambda (_ctx24010_ _code24011_)
                  (let* ((_runtime-code24014_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24011_))
                           gx#current-expander-context
                           _ctx24010_))
                         (_scm024016_
                          (gxc#compile-output-file _ctx24010_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24019_
                               (gxc#compile-static-output-file _ctx24010_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024016_
                                _runtime-code24014_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24019_)
                                (delete-file _scms24019_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024016_
                             '" => "
                             _scms24019_)
                            (copy-file _scm024016_ _scms24019_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024016_))))
                        (gxc#compile-scm-file
                         _scm024016_
                         _runtime-code24014_)))))
               (_generate-loader-code23996_
                (lambda (_ctx24000_ _code24001_ _rt24002_)
                  (let* ((_loader-code24005_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code24001_))
                           gx#current-expander-context
                           _ctx24000_))
                         (_loader-code24007_
                          (if _rt24002_
                              (cons 'begin
                                    (cons _loader-code24005_
                                          (cons (cons 'load-module
                                                      (cons _rt24002_ '()))
                                                '())))
                              _loader-code24005_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx24000_ 'rt '".scm")
                     _loader-code24007_)))))
        (let ((_all-modules23998_
               (cons _ctx23992_ (gxc#lift-nested-modules _ctx23992_))))
          (for-each _compile123994_ _all-modules23998_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx23894_)
      (letrec ((_compile-ssi23896_
                (lambda (_code23962_)
                  (let* ((_path23964_
                          (gxc#compile-output-file _ctx23894_ '#f '".ssi"))
                         (_prelude23975_
                          (let* ((_super23966_
                                  (##structure-ref
                                   _ctx23894_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e23968_
                                  (##structure-ref
                                   _super23966_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e23968_
                                ((lambda (_g2397023972_)
                                   (make-symbol '":" _g2397023972_))
                                 _$e23968_)
                                ':<root>)))
                         (_ns23977_
                          (##structure-ref
                           _ctx23894_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr23979_
                          (symbol->string
                           (##structure-ref
                            _ctx23894_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg23986_
                          (let ((_$e23981_ (string-rindex _idstr23979_ '#\/)))
                            (if _$e23981_
                                ((lambda (_x23984_)
                                   (string->symbol
                                    (substring _idstr23979_ '0 _x23984_)))
                                 _$e23981_)
                                '#f)))
                         (_rt23988_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx23894_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path23964_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path23964_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude23975_)
                           (if _pkg23986_
                               (displayln '"package:" '" " _pkg23986_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns23977_)
                           (newline)
                           (pretty-print _code23962_)
                           (if _rt23988_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt23988_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi23897_
                (lambda (_part23902_)
                  (let* ((_part2390323916_ _part23902_)
                         (_E2390523920_
                          (lambda ()
                            (error '"No clause matching" _part2390323916_)))
                         (_K2390623931_
                          (lambda (_code23923_
                                   _n23924_
                                   _phi23925_
                                   _phi-ctx23926_)
                            (let ((_code23929_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code23923_))
                                    gx#current-expander-context
                                    _phi-ctx23926_
                                    gx#current-expander-phi
                                    _phi23925_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx23894_
                                _n23924_
                                '".scm")
                               _code23929_)))))
                    (if (##pair? _part2390323916_)
                        (let ((_hd2390723934_ (##car _part2390323916_))
                              (_tl2390823936_ (##cdr _part2390323916_)))
                          (let ((_phi-ctx23939_ _hd2390723934_))
                            (if (##pair? _tl2390823936_)
                                (let ((_hd2390923941_ (##car _tl2390823936_))
                                      (_tl2391023943_ (##cdr _tl2390823936_)))
                                  (let ((_phi23946_ _hd2390923941_))
                                    (if (##pair? _tl2391023943_)
                                        (let ((_hd2391123948_
                                               (##car _tl2391023943_))
                                              (_tl2391223950_
                                               (##cdr _tl2391023943_)))
                                          (let ((_n23953_ _hd2391123948_))
                                            (if (##pair? _tl2391223950_)
                                                (let ((_hd2391323955_
                                                       (##car _tl2391223950_))
                                                      (_tl2391423957_
                                                       (##cdr _tl2391223950_)))
                                                  (let ((_code23960_
                                                         _hd2391323955_))
                                                    (if (##null? _tl2391423957_)
                                                        (_K2390623931_
                                                         _code23960_
                                                         _n23953_
                                                         _phi23946_
                                                         _phi-ctx23939_)
                                                        (_E2390523920_))))
                                                (_E2390523920_))))
                                        (_E2390523920_))))
                                (_E2390523920_))))
                        (_E2390523920_))))))
        (let ((_g24411_ (gxc#generate-meta-code _ctx23894_)))
          (begin
            (let ((_g24412_ (values-count _g24411_)))
              (if (not (fx= _g24412_ 2))
                  (error "Context expects 2 values" _g24412_)))
            (let ((_ssi-code23899_ (values-ref _g24411_ 0))
                  (_phi-code23900_ (values-ref _g24411_ 1)))
              (begin
                (_compile-ssi23896_ _ssi-code23899_)
                (for-each _compile-phi23897_ _phi-code23900_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx23877_)
      (let* ((_path23879_ (gxc#compile-output-file _ctx23877_ '#f '".ssxi.ss"))
             (_code23881_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx23877_ '11 gx#module-context::t '#f)))
             (_idstr23883_
              (symbol->string
               (##structure-ref _ctx23877_ '1 gx#expander-context::t '#f)))
             (_pkg23890_
              (let ((_$e23885_ (string-rindex _idstr23883_ '#\/)))
                (if _$e23885_
                    ((lambda (_x23888_)
                       (string->symbol (substring _idstr23883_ '0 _x23888_)))
                     _$e23885_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path23879_)
          (with-output-to-file
           (cons 'path:
                 (cons _path23879_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg23890_ (displayln '"package: " _pkg23890_) '#!void)
               (newline)
               (pretty-print _code23881_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx23870_)
      (let* ((_state23872_
              (let ((__obj24401 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24401 _ctx23870_)
                  __obj24401)))
             (_ssi-code23874_
              (gxc#apply-generate-meta
               (##structure-ref _ctx23870_ '11 gx#module-context::t '#f)
               _state23872_)))
        (values _ssi-code23874_ (gxc#meta-state-end! _state23872_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx23863_)
      (let ((_lifts23865_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code23868_ (gxc#apply-generate-runtime-phi _stx23863_)))
             (if (null? (unbox _lifts23865_))
                 _code23868_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code23868_ '())
                               (reverse (unbox _lifts23865_)))))))
         gxc#current-compile-lift
         _lifts23865_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx23859_)
      (let ((_modules23861_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx23859_ '11 gx#module-context::t '#f)
           _modules23861_)
          (reverse (unbox _modules23861_))))))
  (define gxc#compile-scm-file
    (lambda (_path23855_ _code23856_)
      (begin
        (gxc#verbose '"compile " _path23855_)
        (with-output-to-file
         (cons 'path: (cons _path23855_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code23856_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path23855_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path23855_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e23847_ (gxc#current-compile-debug)))
        (if _$e23847_
            ((lambda (_debug23850_)
               (let ((_$e23852_ _debug23850_))
                 (if (eq? _$e23852_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e23852_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e23852_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug23850_))))))
             _$e23847_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path23829_)
      (let* ((_gsc-args23836_
              (let ((_$e23831_ (gxc#current-compile-gsc-options)))
                (if _$e23831_
                    ((lambda (_opts23834_)
                       (foldr1 cons (cons _path23829_ '()) _opts23834_))
                     _$e23831_)
                    (cons _path23829_ '()))))
             (_gsc-args23838_
              (foldr1 cons _gsc-args23836_ (gxc#gsc-debug-options)))
             (_g24413_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args23838_)))
             (_proc23841_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args23838_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status23843_ (process-status _proc23841_)))
        (if (zero? _status23843_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path23829_
             _status23843_)))))
  (define gxc#compile-output-file
    (lambda (_ctx23801_ _n23802_ _ext23803_)
      (letrec ((_module-relative-path23805_
                (lambda (_ctx23827_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx23827_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory23806_
                (lambda (_ctx23823_)
                  (path-directory
                   (let ((_mpath23825_
                          (##structure-ref
                           _ctx23823_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath23825_)
                         _mpath23825_
                         (last _mpath23825_))))))
               (_section-string23807_
                (lambda (_n23821_)
                  (if (number? _n23821_)
                      (number->string _n23821_)
                      (if (symbol? _n23821_)
                          (symbol->string _n23821_)
                          (if (string? _n23821_)
                              _n23821_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n23821_))))))
               (_file-name23808_
                (lambda (_path23819_)
                  (if _n23802_
                      (string-append
                       _path23819_
                       '"__"
                       (_section-string23807_ _n23802_)
                       _ext23803_)
                      (string-append _path23819_ _ext23803_))))
               (_file-path23809_
                (lambda ()
                  (let ((_$e23814_ (gxc#current-compile-output-dir)))
                    (if _$e23814_
                        ((lambda (_outdir23817_)
                           (path-expand
                            (_file-name23808_
                             (symbol->string
                              (##structure-ref
                               _ctx23801_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir23817_))
                         _$e23814_)
                        (path-expand
                         (_file-name23808_
                          (_module-relative-path23805_ _ctx23801_))
                         (_module-source-directory23806_ _ctx23801_)))))))
        (let ((_path23811_ (_file-path23809_)))
          (begin
            (create-directory* (path-directory _path23811_))
            _path23811_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx23784_)
      (letrec ((_file-name23786_
                (lambda (_idstr23799_)
                  (string-append
                   (gxc#static-module-name _idstr23799_)
                   '".scm")))
               (_file-path23787_
                (lambda ()
                  (let* ((_file23792_
                          (_file-name23786_
                           (symbol->string
                            (##structure-ref
                             _ctx23784_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e23794_ (gxc#current-compile-output-dir)))
                    (if _$e23794_
                        ((lambda (_outdir23797_)
                           (path-expand
                            _file23792_
                            (path-expand '"static" _outdir23797_)))
                         _$e23794_)
                        (path-expand _file23792_ '"static"))))))
        (let ((_path23789_ (_file-path23787_)))
          (begin
            (create-directory* (path-directory _path23789_))
            _path23789_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx23771_ _opts23772_)
      (let ((_$e23774_ (pgetq 'output-file: _opts23772_)))
        (if _$e23774_
            (values _$e23774_)
            (let* ((_mod-str23777_
                    (symbol->string
                     (##structure-ref
                      _ctx23771_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e23779_ (string-rindex _mod-str23777_ '#\/)))
              (if _$e23779_
                  ((lambda (_ix23782_)
                     (substring
                      _mod-str23777_
                      (fx+ _ix23782_ '1)
                      (string-length _mod-str23777_)))
                   _$e23779_)
                  _mod-str23777_))))))
  (define gxc#static-module-name
    (lambda (_idstr23767_)
      (if (string? _idstr23767_)
          (let ((_strs23769_ (string-split _idstr23767_ '#\/)))
            (string-join _strs23769_ '"__"))
          (if (symbol? _idstr23767_)
              (gxc#static-module-name (symbol->string _idstr23767_))
              (error '"Bad module id" _idstr23767_))))))
