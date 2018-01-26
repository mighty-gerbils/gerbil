(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda24378
      (lambda (_srcpath24380_ _opts24381_)
        (begin
          (if (string? _srcpath24380_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24380_))
          (let ((_outdir24383_ (pgetq 'output-dir: _opts24381_))
                (_invoke-gsc?24384_ (pgetq 'invoke-gsc: _opts24381_))
                (_gsc-options24385_ (pgetq 'gsc-options: _opts24381_))
                (_keep-scm?24386_ (pgetq 'keep-scm: _opts24381_))
                (_verbosity24387_ (pgetq 'verbose: _opts24381_))
                (_optimize24388_ (pgetq 'optimize: _opts24381_))
                (_debug24389_ (pgetq 'debug: _opts24381_))
                (_gen-ssxi24390_ (pgetq 'generate-ssxi: _opts24381_))
                (_static24391_ (pgetq 'static: _opts24381_)))
            (begin
              (if _outdir24383_ (create-directory* _outdir24383_) '#!void)
              (if _optimize24388_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24380_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24380_))))
               gxc#current-compile-output-dir
               _outdir24383_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24384_
               gxc#current-compile-gsc-options
               _gsc-options24385_
               gxc#current-compile-keep-scm
               _keep-scm?24386_
               gxc#current-compile-verbose
               _verbosity24387_
               gxc#current-compile-optimize
               _optimize24388_
               gxc#current-compile-debug
               _debug24389_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24390_
               gxc#current-compile-static
               _static24391_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24397_)
          (let ((_opts24399_ '()))
            (gxc#compile-file__opt-lambda24378 _srcpath24397_ _opts24399_))))
      (define gxc#compile-file
        (lambda _g24407_
          (let ((_g24406_ (length _g24407_)))
            (cond ((fx= _g24406_ 1) (apply gxc#compile-file__0 _g24407_))
                  ((fx= _g24406_ 2)
                   (apply gxc#compile-file__opt-lambda24378 _g24407_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24407_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda24364
      (lambda (_srcpath24366_ _opts24367_)
        (gxc#do-compile-exe
         _srcpath24366_
         _opts24367_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24372_)
          (let ((_opts24374_ '()))
            (gxc#compile-exe-stub__opt-lambda24364
             _srcpath24372_
             _opts24374_))))
      (define gxc#compile-exe-stub
        (lambda _g24409_
          (let ((_g24408_ (length _g24409_)))
            (cond ((fx= _g24408_ 1) (apply gxc#compile-exe-stub__0 _g24409_))
                  ((fx= _g24408_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda24364 _g24409_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24409_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda24350
      (lambda (_srcpath24352_ _opts24353_)
        (gxc#do-compile-exe
         _srcpath24352_
         _opts24353_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24358_)
          (let ((_opts24360_ '()))
            (gxc#compile-static-exe__opt-lambda24350
             _srcpath24358_
             _opts24360_))))
      (define gxc#compile-static-exe
        (lambda _g24411_
          (let ((_g24410_ (length _g24411_)))
            (cond ((fx= _g24410_ 1) (apply gxc#compile-static-exe__0 _g24411_))
                  ((fx= _g24410_ 2)
                   (apply gxc#compile-static-exe__opt-lambda24350 _g24411_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24411_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24340_ _opts24341_ _compile-e24342_)
      (begin
        (if (string? _srcpath24340_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24340_))
        (let ((_outdir24344_ (pgetq 'output-dir: _opts24341_))
              (_invoke-gsc?24345_ (pgetq 'invoke-gsc: _opts24341_))
              (_gsc-options24346_ (pgetq 'gsc-options: _opts24341_))
              (_keep-scm?24347_ (pgetq 'keep-scm: _opts24341_))
              (_verbosity24348_ (pgetq 'verbose: _opts24341_)))
          (begin
            (if _outdir24344_ (create-directory* _outdir24344_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24340_)
                 (_compile-e24342_
                  (gx#import-module__0 _srcpath24340_)
                  _opts24341_)))
             gxc#current-compile-output-dir
             _outdir24344_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24345_
             gxc#current-compile-gsc-options
             _gsc-options24346_
             gxc#current-compile-keep-scm
             _keep-scm?24347_
             gxc#current-compile-verbose
             _verbosity24348_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24304_ _opts24305_)
      (letrec ((_generate-stub24307_
                (lambda ()
                  (let* ((_mod-str24333_
                          (symbol->string
                           (##structure-ref
                            _ctx24304_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24335_ (string-append _mod-str24333_ '"__rt"))
                         (_mod-main24337_
                          (gxc#find-runtime-symbol _ctx24304_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24335_
                                         (cons (cons 'quote
                                                     (cons _mod-main24337_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24308_
                (lambda (_output-scm24315_ _output-bin24316_)
                  (let* ((_init-stub24318_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24320_ (gxc#compile-cache-directory))
                         (_init-stub24322_
                          (gxc#compile-cache
                           _init-stub24318_
                           _gxc-cache24320_))
                         (_gsc-args24324_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24316_
                                            (cons _init-stub24322_
                                                  (cons _output-scm24315_
                                                        '()))))))
                         (_g24412_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24324_)))
                         (_proc24327_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24324_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24329_ (process-status _proc24327_)))
                    (if (zero? _status24329_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24315_
                         _output-bin24316_
                         _status24329_))))))
        (let* ((_output-bin24310_
                (gxc#compile-exe-output-file _ctx24304_ _opts24305_))
               (_output-scm24312_ (string-append _output-bin24310_ '".scm")))
          (begin
            (with-output-to-file _output-scm24312_ _generate-stub24307_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24308_ _output-scm24312_ _output-bin24310_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24312_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24236_ _opts24237_)
      (letrec ((_generate-stub24239_
                (lambda ()
                  (let ((_mod-main24302_
                         (gxc#find-runtime-symbol _ctx24236_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main24302_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub24240_
                (lambda (_output-scm24247_ _output-bin24248_)
                  (let* ((_gerbil-home24250_ (getenv '"GERBIL_HOME"))
                         (_gx-version24252_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24250_))
                         (_gx-gambc024254_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24250_))
                         (_gx-gambc-init24256_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24250_))
                         (_gx-gambc-macros24258_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24250_))
                         (_include-gx-gambc-macros24260_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24258_
                           '"\")"))
                         (_bin-scm24262_
                          (gxc#find-static-module-file _ctx24236_))
                         (_deps24264_
                          (gxc#find-runtime-module-deps _ctx24236_))
                         (_deps24266_
                          (map gxc#find-static-module-file _deps24264_))
                         (_deps24271_
                          (filter (lambda (_$obj24268_)
                                    (not (gxc#file-empty? _$obj24268_)))
                                  _deps24266_))
                         (_gxc-cache24273_ (gxc#compile-cache-directory))
                         (_g24413_
                          (gxc#compile-cache
                           _gx-version24252_
                           _gxc-cache24273_))
                         (_gx-gambc024276_
                          (gxc#compile-cache
                           _gx-gambc024254_
                           _gxc-cache24273_))
                         (_gx-gambc-init24278_
                          (gxc#compile-cache
                           _gx-gambc-init24256_
                           _gxc-cache24273_))
                         (_deps24284_
                          (map (lambda (_g2427924281_)
                                 (gxc#compile-cache
                                  _g2427924281_
                                  _gxc-cache24273_))
                               _deps24271_))
                         (_bin-scm24286_
                          (gxc#compile-cache _bin-scm24262_ _gxc-cache24273_))
                         (_gsc-opts24291_
                          (let ((_$e24288_ (pgetq 'gsc-options: _opts24237_)))
                            (if _$e24288_ _$e24288_ '())))
                         (_gsc-args24293_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24248_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros24260_
                                (cons _gx-gambc024276_
                                      (cons _gx-gambc-init24278_
                                            (foldr1 cons
                                                    (cons _bin-scm24286_
                                                          (cons _output-scm24247_
                                                                '()))
                                                    _deps24284_)))))
                    _gsc-opts24291_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24414_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24293_)))
                         (_proc24296_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24293_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24298_ (process-status _proc24296_)))
                    (if (zero? _status24298_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24247_
                         _output-bin24248_
                         _status24298_))))))
        (let* ((_output-bin24242_
                (gxc#compile-exe-output-file _ctx24236_ _opts24237_))
               (_output-scm24244_ (string-append _output-bin24242_ '".scm")))
          (begin
            (with-output-to-file _output-scm24244_ _generate-stub24239_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24240_ _output-scm24244_ _output-bin24242_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24244_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24231_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24233_ (path-expand '"gxc" _cachedir24231_)))
        (begin
          (create-directory* _gxc-cache24233_)
          (path-normalize _gxc-cache24233_)))))
  (define gxc#compile-cache
    (lambda (_file24225_ _gxc-cache24226_)
      (let ((_cachefile24228_
             (path-expand
              (path-strip-directory _file24225_)
              _gxc-cache24226_)))
        (begin
          (if (file-exists? _cachefile24228_)
              (if (file-newer? _file24225_ _cachefile24228_)
                  (begin
                    (delete-file _cachefile24228_)
                    (copy-file _file24225_ _cachefile24228_))
                  '#!void)
              (copy-file _file24225_ _cachefile24228_))
          _cachefile24228_))))
  (define gxc#find-export-binding
    (lambda (_ctx24175_ _id24176_)
      (let ((_$e24222_
             (find (lambda (_e2417724179_)
                     (let* ((_g2418124191_ _e2417724179_)
                            (_E2418424195_
                             (lambda ()
                               (error '"No clause matching" _g2418124191_)))
                            (_else2418324199_ (lambda () '#f))
                            (_K2418524203_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2418124191_
                            (##type-id gx#module-export::t))
                           (let* ((_e2418624206_
                                   (##vector-ref _g2418124191_ '1))
                                  (_e2418724209_
                                   (##vector-ref _g2418124191_ '2))
                                  (_e2418824212_
                                   (##vector-ref _g2418124191_ '3)))
                             (if (##eq? _e2418824212_ '0)
                                 (let ((_e2418924215_
                                        (##vector-ref _g2418124191_ '4)))
                                   (if ((lambda (_g2421724219_)
                                          (eq? _g2421724219_ _id24176_))
                                        _e2418924215_)
                                       (_K2418524203_)
                                       (_else2418324199_)))
                                 (_else2418324199_)))
                           (_else2418324199_))))
                   (##structure-ref _ctx24175_ '9 gx#module-context::t '#f))))
        (if _$e24222_ (gx#core-resolve-module-export _$e24222_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24167_ _id24168_)
      (let ((_$e24170_ (gxc#find-export-binding _ctx24167_ _id24168_)))
        (if _$e24170_
            ((lambda (_bind24173_)
               (begin
                 (if (##structure-instance-of?
                      _bind24173_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24168_))
                 (##structure-ref _bind24173_ '1 gx#binding::t '#f)))
             _$e24170_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24167_ '1 gx#expander-context::t '#f)
             _id24168_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24105_)
      (letrec* ((_ht24107_ (make-hash-table-eq))
                (_find-deps24108_
                 (lambda (_rest24115_ _deps24116_)
                   (let* ((_rest2411724125_ _rest24115_)
                          (_E2412024129_
                           (lambda ()
                             (error '"No clause matching" _rest2411724125_)))
                          (_else2411924133_ (lambda () _deps24116_))
                          (_K2412124155_
                           (lambda (_rest24136_ _hd24137_)
                             (if (##structure-instance-of?
                                  _hd24137_
                                  'gx#module-context::t)
                                 (let ((_id24139_
                                        (##structure-ref
                                         _hd24137_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24140_
                                        (##structure-ref
                                         _hd24137_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24107_ _id24139_ '#f)
                                       (_find-deps24108_
                                        _rest24136_
                                        _deps24116_)
                                       (let ((_$e24142_
                                              (gx#core-context-prelude__opt-lambda13202
                                               _hd24137_)))
                                         (if _$e24142_
                                             ((lambda (_pre24145_)
                                                (let ((_xdeps24147_
                                                       (_find-deps24108_
                                                        (cons _pre24145_
                                                              _imports24140_)
                                                        _deps24116_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24107_
                                                     _id24139_
                                                     _hd24137_)
                                                    (_find-deps24108_
                                                     _rest24136_
                                                     (cons _hd24137_
                                                           _xdeps24147_)))))
                                              _$e24142_)
                                             (let ((_xdeps24149_
                                                    (_find-deps24108_
                                                     _imports24140_
                                                     _deps24116_)))
                                               (begin
                                                 (table-set!
                                                  _ht24107_
                                                  _id24139_
                                                  _hd24137_)
                                                 (_find-deps24108_
                                                  _rest24136_
                                                  (cons _hd24137_
                                                        _xdeps24149_))))))))
                                 (if (##structure-instance-of?
                                      _hd24137_
                                      'gx#prelude-context::t)
                                     (let ((_id24151_
                                            (##structure-ref
                                             _hd24137_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24107_ _id24151_ '#f)
                                           (_find-deps24108_
                                            _rest24136_
                                            _deps24116_)
                                           (let ((_xdeps24153_
                                                  (_find-deps24108_
                                                   (##structure-ref
                                                    _hd24137_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24116_)))
                                             (if (table-ref
                                                  _ht24107_
                                                  _id24151_
                                                  '#f)
                                                 (_find-deps24108_
                                                  _rest24136_
                                                  _xdeps24153_)
                                                 (begin
                                                   (table-set!
                                                    _ht24107_
                                                    _id24151_
                                                    _hd24137_)
                                                   (_find-deps24108_
                                                    _rest24136_
                                                    (cons _hd24137_
                                                          _xdeps24153_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24137_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24137_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24108_
                                              (cons (##direct-structure-ref
                                                     _hd24137_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24136_)
                                              _deps24116_)
                                             (_find-deps24108_
                                              _rest24136_
                                              _deps24116_))
                                         (if (##structure-direct-instance-of?
                                              _hd24137_
                                              'gx#module-export::t)
                                             (_find-deps24108_
                                              (cons (##direct-structure-ref
                                                     _hd24137_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24136_)
                                              _deps24116_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24137_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24137_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24108_
                                                      (cons (##direct-structure-ref
                                                             _hd24137_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24136_)
                                                      _deps24116_)
                                                     (_find-deps24108_
                                                      _rest24136_
                                                      _deps24116_))
                                                 (error '"Unexpected module import"
                                                        _hd24137_)))))))))
                     (if (##pair? _rest2411724125_)
                         (let ((_hd2412224158_ (##car _rest2411724125_))
                               (_tl2412324160_ (##cdr _rest2411724125_)))
                           (let* ((_hd24163_ _hd2412224158_)
                                  (_rest24165_ _tl2412324160_))
                             (_K2412124155_ _rest24165_ _hd24163_)))
                         (_else2411924133_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24108_
                          (let ((_$e24110_
                                 (gx#core-context-prelude__opt-lambda13202
                                  _ctx24105_)))
                            (if _$e24110_
                                ((lambda (_pre24113_)
                                   (cons _pre24113_
                                         (##structure-ref
                                          _ctx24105_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24110_)
                                (##structure-ref
                                 _ctx24105_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24044_)
      (let* ((_scm24046_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24044_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24048_ (gx#current-expander-module-library-path))
             (_dirs24057_
              (let ((_$e24050_ (gxc#current-compile-output-dir)))
                (if _$e24050_
                    ((lambda (_g2405224054_) (cons _g2405224054_ _dirs24048_))
                     _$e24050_)
                    _dirs24048_)))
             (_dirs24063_
              (map (lambda (_g2405824060_)
                     (path-expand '"static" _g2405824060_))
                   _dirs24057_)))
        (let _lp24066_ ((_rest24068_ _dirs24063_))
          (let* ((_rest2406924077_ _rest24068_)
                 (_E2407224081_
                  (lambda () (error '"No clause matching" _rest2406924077_)))
                 (_else2407124085_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24044_ '1 gx#expander-context::t '#f)
                     _scm24046_)))
                 (_K2407324093_
                  (lambda (_rest24088_ _dir24089_)
                    (let ((_path24091_ (path-expand _scm24046_ _dir24089_)))
                      (if (file-exists? _path24091_)
                          _path24091_
                          (_lp24066_ _rest24088_))))))
            (if (##pair? _rest2406924077_)
                (let ((_hd2407424096_ (##car _rest2406924077_))
                      (_tl2407524098_ (##cdr _rest2406924077_)))
                  (let* ((_dir24101_ _hd2407424096_)
                         (_rest24103_ _tl2407524098_))
                    (_K2407324093_ _rest24103_ _dir24101_)))
                (_else2407124085_)))))))
  (define gxc#file-empty?
    (lambda (_path24042_)
      (zero? (file-info-size (file-info _path24042_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24039_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24039_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24039_)
               '#!void)
           (gxc#collect-bindings _ctx24039_)
           (gxc#compile-runtime-code _ctx24039_)
           (gxc#compile-meta-code _ctx24039_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24039_)
               '#!void)))
       gx#current-expander-context
       _ctx24039_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24404 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24404) __obj24404))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24037_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24037_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx23996_)
      (letrec ((_compile123998_
                (lambda (_ctx24026_)
                  (let* ((_code24028_
                          (##structure-ref
                           _ctx24026_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24032_
                          (if (gxc#apply-find-runtime-code _code24028_)
                              (let ((_idstr24030_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24026_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24030_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24032_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24026_
                             _rt24032_)
                            (_generate-runtime-code23999_
                             _ctx24026_
                             _code24028_))
                          (if (gxc#current-compile-static)
                              (let ((_path24035_
                                     (gxc#compile-static-output-file
                                      _ctx24026_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24035_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24000_
                       _ctx24026_
                       _code24028_
                       _rt24032_)))))
               (_generate-runtime-code23999_
                (lambda (_ctx24014_ _code24015_)
                  (let* ((_runtime-code24018_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24015_))
                           gx#current-expander-context
                           _ctx24014_))
                         (_scm024020_
                          (gxc#compile-output-file _ctx24014_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24023_
                               (gxc#compile-static-output-file _ctx24014_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024020_
                                _runtime-code24018_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24023_)
                                (delete-file _scms24023_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024020_
                             '" => "
                             _scms24023_)
                            (copy-file _scm024020_ _scms24023_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024020_))))
                        (gxc#compile-scm-file
                         _scm024020_
                         _runtime-code24018_)))))
               (_generate-loader-code24000_
                (lambda (_ctx24004_ _code24005_ _rt24006_)
                  (let* ((_loader-code24009_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code24005_))
                           gx#current-expander-context
                           _ctx24004_))
                         (_loader-code24011_
                          (if _rt24006_
                              (cons 'begin
                                    (cons _loader-code24009_
                                          (cons (cons 'load-module
                                                      (cons _rt24006_ '()))
                                                '())))
                              _loader-code24009_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx24004_ 'rt '".scm")
                     _loader-code24011_)))))
        (let ((_all-modules24002_
               (cons _ctx23996_ (gxc#lift-nested-modules _ctx23996_))))
          (for-each _compile123998_ _all-modules24002_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx23898_)
      (letrec ((_compile-ssi23900_
                (lambda (_code23966_)
                  (let* ((_path23968_
                          (gxc#compile-output-file _ctx23898_ '#f '".ssi"))
                         (_prelude23979_
                          (let* ((_super23970_
                                  (##structure-ref
                                   _ctx23898_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e23972_
                                  (##structure-ref
                                   _super23970_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e23972_
                                ((lambda (_g2397423976_)
                                   (make-symbol '":" _g2397423976_))
                                 _$e23972_)
                                ':<root>)))
                         (_ns23981_
                          (##structure-ref
                           _ctx23898_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr23983_
                          (symbol->string
                           (##structure-ref
                            _ctx23898_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg23990_
                          (let ((_$e23985_ (string-rindex _idstr23983_ '#\/)))
                            (if _$e23985_
                                ((lambda (_x23988_)
                                   (string->symbol
                                    (substring _idstr23983_ '0 _x23988_)))
                                 _$e23985_)
                                '#f)))
                         (_rt23992_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx23898_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path23968_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path23968_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude23979_)
                           (if _pkg23990_
                               (displayln '"package:" '" " _pkg23990_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns23981_)
                           (newline)
                           (pretty-print _code23966_)
                           (if _rt23992_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt23992_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi23901_
                (lambda (_part23906_)
                  (let* ((_part2390723920_ _part23906_)
                         (_E2390923924_
                          (lambda ()
                            (error '"No clause matching" _part2390723920_)))
                         (_K2391023935_
                          (lambda (_code23927_
                                   _n23928_
                                   _phi23929_
                                   _phi-ctx23930_)
                            (let ((_code23933_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code23927_))
                                    gx#current-expander-context
                                    _phi-ctx23930_
                                    gx#current-expander-phi
                                    _phi23929_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx23898_
                                _n23928_
                                '".scm")
                               _code23933_)))))
                    (if (##pair? _part2390723920_)
                        (let ((_hd2391123938_ (##car _part2390723920_))
                              (_tl2391223940_ (##cdr _part2390723920_)))
                          (let ((_phi-ctx23943_ _hd2391123938_))
                            (if (##pair? _tl2391223940_)
                                (let ((_hd2391323945_ (##car _tl2391223940_))
                                      (_tl2391423947_ (##cdr _tl2391223940_)))
                                  (let ((_phi23950_ _hd2391323945_))
                                    (if (##pair? _tl2391423947_)
                                        (let ((_hd2391523952_
                                               (##car _tl2391423947_))
                                              (_tl2391623954_
                                               (##cdr _tl2391423947_)))
                                          (let ((_n23957_ _hd2391523952_))
                                            (if (##pair? _tl2391623954_)
                                                (let ((_hd2391723959_
                                                       (##car _tl2391623954_))
                                                      (_tl2391823961_
                                                       (##cdr _tl2391623954_)))
                                                  (let ((_code23964_
                                                         _hd2391723959_))
                                                    (if (##null? _tl2391823961_)
                                                        (_K2391023935_
                                                         _code23964_
                                                         _n23957_
                                                         _phi23950_
                                                         _phi-ctx23943_)
                                                        (_E2390923924_))))
                                                (_E2390923924_))))
                                        (_E2390923924_))))
                                (_E2390923924_))))
                        (_E2390923924_))))))
        (let ((_g24415_ (gxc#generate-meta-code _ctx23898_)))
          (begin
            (let ((_g24416_ (values-count _g24415_)))
              (if (not (fx= _g24416_ 2))
                  (error "Context expects 2 values" _g24416_)))
            (let ((_ssi-code23903_ (values-ref _g24415_ 0))
                  (_phi-code23904_ (values-ref _g24415_ 1)))
              (begin
                (_compile-ssi23900_ _ssi-code23903_)
                (for-each _compile-phi23901_ _phi-code23904_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx23881_)
      (let* ((_path23883_ (gxc#compile-output-file _ctx23881_ '#f '".ssxi.ss"))
             (_code23885_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx23881_ '11 gx#module-context::t '#f)))
             (_idstr23887_
              (symbol->string
               (##structure-ref _ctx23881_ '1 gx#expander-context::t '#f)))
             (_pkg23894_
              (let ((_$e23889_ (string-rindex _idstr23887_ '#\/)))
                (if _$e23889_
                    ((lambda (_x23892_)
                       (string->symbol (substring _idstr23887_ '0 _x23892_)))
                     _$e23889_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path23883_)
          (with-output-to-file
           (cons 'path:
                 (cons _path23883_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg23894_ (displayln '"package: " _pkg23894_) '#!void)
               (newline)
               (pretty-print _code23885_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx23874_)
      (let* ((_state23876_
              (let ((__obj24405 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24405 _ctx23874_)
                  __obj24405)))
             (_ssi-code23878_
              (gxc#apply-generate-meta
               (##structure-ref _ctx23874_ '11 gx#module-context::t '#f)
               _state23876_)))
        (values _ssi-code23878_ (gxc#meta-state-end! _state23876_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx23867_)
      (let ((_lifts23869_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code23872_ (gxc#apply-generate-runtime-phi _stx23867_)))
             (if (null? (unbox _lifts23869_))
                 _code23872_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code23872_ '())
                               (reverse (unbox _lifts23869_)))))))
         gxc#current-compile-lift
         _lifts23869_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx23863_)
      (let ((_modules23865_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx23863_ '11 gx#module-context::t '#f)
           _modules23865_)
          (reverse (unbox _modules23865_))))))
  (define gxc#compile-scm-file
    (lambda (_path23859_ _code23860_)
      (begin
        (gxc#verbose '"compile " _path23859_)
        (with-output-to-file
         (cons 'path: (cons _path23859_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code23860_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path23859_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path23859_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e23851_ (gxc#current-compile-debug)))
        (if _$e23851_
            ((lambda (_debug23854_)
               (let ((_$e23856_ _debug23854_))
                 (if (eq? _$e23856_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e23856_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e23856_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug23854_))))))
             _$e23851_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path23833_)
      (let* ((_gsc-args23840_
              (let ((_$e23835_ (gxc#current-compile-gsc-options)))
                (if _$e23835_
                    ((lambda (_opts23838_)
                       (foldr1 cons (cons _path23833_ '()) _opts23838_))
                     _$e23835_)
                    (cons _path23833_ '()))))
             (_gsc-args23842_
              (foldr1 cons _gsc-args23840_ (gxc#gsc-debug-options)))
             (_g24417_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args23842_)))
             (_proc23845_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args23842_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status23847_ (process-status _proc23845_)))
        (if (zero? _status23847_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path23833_
             _status23847_)))))
  (define gxc#compile-output-file
    (lambda (_ctx23805_ _n23806_ _ext23807_)
      (letrec ((_module-relative-path23809_
                (lambda (_ctx23831_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx23831_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory23810_
                (lambda (_ctx23827_)
                  (path-directory
                   (let ((_mpath23829_
                          (##structure-ref
                           _ctx23827_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath23829_)
                         _mpath23829_
                         (last _mpath23829_))))))
               (_section-string23811_
                (lambda (_n23825_)
                  (if (number? _n23825_)
                      (number->string _n23825_)
                      (if (symbol? _n23825_)
                          (symbol->string _n23825_)
                          (if (string? _n23825_)
                              _n23825_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n23825_))))))
               (_file-name23812_
                (lambda (_path23823_)
                  (if _n23806_
                      (string-append
                       _path23823_
                       '"__"
                       (_section-string23811_ _n23806_)
                       _ext23807_)
                      (string-append _path23823_ _ext23807_))))
               (_file-path23813_
                (lambda ()
                  (let ((_$e23818_ (gxc#current-compile-output-dir)))
                    (if _$e23818_
                        ((lambda (_outdir23821_)
                           (path-expand
                            (_file-name23812_
                             (symbol->string
                              (##structure-ref
                               _ctx23805_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir23821_))
                         _$e23818_)
                        (path-expand
                         (_file-name23812_
                          (_module-relative-path23809_ _ctx23805_))
                         (_module-source-directory23810_ _ctx23805_)))))))
        (let ((_path23815_ (_file-path23813_)))
          (begin
            (create-directory* (path-directory _path23815_))
            _path23815_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx23788_)
      (letrec ((_file-name23790_
                (lambda (_idstr23803_)
                  (string-append
                   (gxc#static-module-name _idstr23803_)
                   '".scm")))
               (_file-path23791_
                (lambda ()
                  (let* ((_file23796_
                          (_file-name23790_
                           (symbol->string
                            (##structure-ref
                             _ctx23788_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e23798_ (gxc#current-compile-output-dir)))
                    (if _$e23798_
                        ((lambda (_outdir23801_)
                           (path-expand
                            _file23796_
                            (path-expand '"static" _outdir23801_)))
                         _$e23798_)
                        (path-expand _file23796_ '"static"))))))
        (let ((_path23793_ (_file-path23791_)))
          (begin
            (create-directory* (path-directory _path23793_))
            _path23793_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx23775_ _opts23776_)
      (let ((_$e23778_ (pgetq 'output-file: _opts23776_)))
        (if _$e23778_
            (values _$e23778_)
            (let* ((_mod-str23781_
                    (symbol->string
                     (##structure-ref
                      _ctx23775_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e23783_ (string-rindex _mod-str23781_ '#\/)))
              (if _$e23783_
                  ((lambda (_ix23786_)
                     (substring
                      _mod-str23781_
                      (fx+ _ix23786_ '1)
                      (string-length _mod-str23781_)))
                   _$e23783_)
                  _mod-str23781_))))))
  (define gxc#static-module-name
    (lambda (_idstr23771_)
      (if (string? _idstr23771_)
          (let ((_strs23773_ (string-split _idstr23771_ '#\/)))
            (string-join _strs23773_ '"__"))
          (if (symbol? _idstr23771_)
              (gxc#static-module-name (symbol->string _idstr23771_))
              (error '"Bad module id" _idstr23771_))))))
