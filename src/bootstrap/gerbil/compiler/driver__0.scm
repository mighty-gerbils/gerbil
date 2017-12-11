(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda21174
      (lambda (_srcpath21176_ _opts21177_)
        (begin
          (if (string? _srcpath21176_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath21176_))
          (let ((_outdir21179_ (pgetq 'output-dir: _opts21177_))
                (_invoke-gsc?21180_ (pgetq 'invoke-gsc: _opts21177_))
                (_gsc-options21181_ (pgetq 'gsc-options: _opts21177_))
                (_keep-scm?21182_ (pgetq 'keep-scm: _opts21177_))
                (_verbosity21183_ (pgetq 'verbose: _opts21177_))
                (_optimize21184_ (pgetq 'optimize: _opts21177_))
                (_debug21185_ (pgetq 'debug: _opts21177_))
                (_gen-ssxi21186_ (pgetq 'generate-ssxi: _opts21177_))
                (_static21187_ (pgetq 'static: _opts21177_)))
            (begin
              (if _outdir21179_ (create-directory* _outdir21179_) '#!void)
              (if _optimize21184_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath21176_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath21176_))))
               gxc#current-compile-output-dir
               _outdir21179_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?21180_
               gxc#current-compile-gsc-options
               _gsc-options21181_
               gxc#current-compile-keep-scm
               _keep-scm?21182_
               gxc#current-compile-verbose
               _verbosity21183_
               gxc#current-compile-optimize
               _optimize21184_
               gxc#current-compile-debug
               _debug21185_
               gxc#current-compile-generate-ssxi
               _gen-ssxi21186_
               gxc#current-compile-static
               _static21187_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath21193_)
          (let ((_opts21195_ '()))
            (gxc#compile-file__opt-lambda21174 _srcpath21193_ _opts21195_))))
      (define gxc#compile-file
        (lambda _g21203_
          (let ((_g21202_ (length _g21203_)))
            (cond ((fx= _g21202_ 1) (apply gxc#compile-file__0 _g21203_))
                  ((fx= _g21202_ 2)
                   (apply gxc#compile-file__opt-lambda21174 _g21203_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g21203_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda21160
      (lambda (_srcpath21162_ _opts21163_)
        (gxc#do-compile-exe
         _srcpath21162_
         _opts21163_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath21168_)
          (let ((_opts21170_ '()))
            (gxc#compile-exe-stub__opt-lambda21160
             _srcpath21168_
             _opts21170_))))
      (define gxc#compile-exe-stub
        (lambda _g21205_
          (let ((_g21204_ (length _g21205_)))
            (cond ((fx= _g21204_ 1) (apply gxc#compile-exe-stub__0 _g21205_))
                  ((fx= _g21204_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda21160 _g21205_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g21205_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda21146
      (lambda (_srcpath21148_ _opts21149_)
        (gxc#do-compile-exe
         _srcpath21148_
         _opts21149_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath21154_)
          (let ((_opts21156_ '()))
            (gxc#compile-static-exe__opt-lambda21146
             _srcpath21154_
             _opts21156_))))
      (define gxc#compile-static-exe
        (lambda _g21207_
          (let ((_g21206_ (length _g21207_)))
            (cond ((fx= _g21206_ 1) (apply gxc#compile-static-exe__0 _g21207_))
                  ((fx= _g21206_ 2)
                   (apply gxc#compile-static-exe__opt-lambda21146 _g21207_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g21207_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath21136_ _opts21137_ _compile-e21138_)
      (begin
        (if (string? _srcpath21136_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath21136_))
        (let ((_outdir21140_ (pgetq 'output-dir: _opts21137_))
              (_invoke-gsc?21141_ (pgetq 'invoke-gsc: _opts21137_))
              (_gsc-options21142_ (pgetq 'gsc-options: _opts21137_))
              (_keep-scm?21143_ (pgetq 'keep-scm: _opts21137_))
              (_verbosity21144_ (pgetq 'verbose: _opts21137_)))
          (begin
            (if _outdir21140_ (create-directory* _outdir21140_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath21136_)
                 (_compile-e21138_
                  (gx#import-module__0 _srcpath21136_)
                  _opts21137_)))
             gxc#current-compile-output-dir
             _outdir21140_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?21141_
             gxc#current-compile-gsc-options
             _gsc-options21142_
             gxc#current-compile-keep-scm
             _keep-scm?21143_
             gxc#current-compile-verbose
             _verbosity21144_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx21100_ _opts21101_)
      (letrec ((_generate-stub21103_
                (lambda ()
                  (let* ((_mod-str21129_
                          (symbol->string
                           (##structure-ref
                            _ctx21100_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt21131_ (string-append _mod-str21129_ '"__rt"))
                         (_mod-main21133_
                          (gxc#find-runtime-symbol _ctx21100_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt21131_
                                         (cons (cons 'quote
                                                     (cons _mod-main21133_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub21104_
                (lambda (_output-scm21111_ _output-bin21112_)
                  (let* ((_init-stub21114_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache21116_ (gxc#compile-cache-directory))
                         (_init-stub21118_
                          (gxc#compile-cache
                           _init-stub21114_
                           _gxc-cache21116_))
                         (_gsc-args21120_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21112_
                                            (cons _init-stub21118_
                                                  (cons _output-scm21111_
                                                        '()))))))
                         (_g21208_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21120_)))
                         (_proc21123_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21120_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21125_ (process-status _proc21123_)))
                    (if (zero? _status21125_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21111_
                         _output-bin21112_
                         _status21125_))))))
        (let* ((_output-bin21106_
                (gxc#compile-exe-output-file _ctx21100_ _opts21101_))
               (_output-scm21108_ (string-append _output-bin21106_ '".scm")))
          (begin
            (with-output-to-file _output-scm21108_ _generate-stub21103_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21104_ _output-scm21108_ _output-bin21106_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21108_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx21032_ _opts21033_)
      (letrec ((_generate-stub21035_
                (lambda ()
                  (let ((_mod-main21098_
                         (gxc#find-runtime-symbol _ctx21032_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main21098_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub21036_
                (lambda (_output-scm21043_ _output-bin21044_)
                  (let* ((_gerbil-home21046_ (getenv '"GERBIL_HOME"))
                         (_gx-version21048_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home21046_))
                         (_gx-gambc021050_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home21046_))
                         (_gx-gambc-init21052_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home21046_))
                         (_gx-gambc-macros21054_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home21046_))
                         (_include-gx-gambc-macros21056_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros21054_
                           '"\")"))
                         (_bin-scm21058_
                          (gxc#find-static-module-file _ctx21032_))
                         (_deps21060_
                          (gxc#find-runtime-module-deps _ctx21032_))
                         (_deps21062_
                          (map gxc#find-static-module-file _deps21060_))
                         (_deps21067_
                          (filter (lambda (_$obj21064_)
                                    (not (gxc#file-empty? _$obj21064_)))
                                  _deps21062_))
                         (_gxc-cache21069_ (gxc#compile-cache-directory))
                         (_g21209_
                          (gxc#compile-cache
                           _gx-version21048_
                           _gxc-cache21069_))
                         (_gx-gambc021072_
                          (gxc#compile-cache
                           _gx-gambc021050_
                           _gxc-cache21069_))
                         (_gx-gambc-init21074_
                          (gxc#compile-cache
                           _gx-gambc-init21052_
                           _gxc-cache21069_))
                         (_deps21080_
                          (map (lambda (_g2107521077_)
                                 (gxc#compile-cache
                                  _g2107521077_
                                  _gxc-cache21069_))
                               _deps21067_))
                         (_bin-scm21082_
                          (gxc#compile-cache _bin-scm21058_ _gxc-cache21069_))
                         (_gsc-opts21087_
                          (let ((_$e21084_ (pgetq 'gsc-options: _opts21033_)))
                            (if _$e21084_ _$e21084_ '())))
                         (_gsc-args21089_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21044_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros21056_
                                (cons _gx-gambc021072_
                                      (cons _gx-gambc-init21074_
                                            (foldr1 cons
                                                    (cons _bin-scm21082_
                                                          (cons _output-scm21043_
                                                                '()))
                                                    _deps21080_)))))
                    _gsc-opts21087_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g21210_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21089_)))
                         (_proc21092_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21089_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21094_ (process-status _proc21092_)))
                    (if (zero? _status21094_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21043_
                         _output-bin21044_
                         _status21094_))))))
        (let* ((_output-bin21038_
                (gxc#compile-exe-output-file _ctx21032_ _opts21033_))
               (_output-scm21040_ (string-append _output-bin21038_ '".scm")))
          (begin
            (with-output-to-file _output-scm21040_ _generate-stub21035_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21036_ _output-scm21040_ _output-bin21038_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21040_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir21027_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache21029_ (path-expand '"gxc" _cachedir21027_)))
        (begin
          (create-directory* _gxc-cache21029_)
          (path-normalize _gxc-cache21029_)))))
  (define gxc#compile-cache
    (lambda (_file21021_ _gxc-cache21022_)
      (let ((_cachefile21024_
             (path-expand
              (path-strip-directory _file21021_)
              _gxc-cache21022_)))
        (begin
          (if (file-exists? _cachefile21024_)
              (if (file-newer? _file21021_ _cachefile21024_)
                  (begin
                    (delete-file _cachefile21024_)
                    (copy-file _file21021_ _cachefile21024_))
                  '#!void)
              (copy-file _file21021_ _cachefile21024_))
          _cachefile21024_))))
  (define gxc#find-export-binding
    (lambda (_ctx20971_ _id20972_)
      (let ((_$e21018_
             (find (lambda (_e2097320975_)
                     (let* ((_g2097720987_ _e2097320975_)
                            (_E2098020991_
                             (lambda ()
                               (error '"No clause matching" _g2097720987_)))
                            (_else2097920995_ (lambda () '#f))
                            (_K2098120999_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2097720987_
                            (##type-id gx#module-export::t))
                           (let* ((_e2098221002_
                                   (##vector-ref _g2097720987_ '1))
                                  (_e2098321005_
                                   (##vector-ref _g2097720987_ '2))
                                  (_e2098421008_
                                   (##vector-ref _g2097720987_ '3)))
                             (if (##eq? _e2098421008_ '0)
                                 (let ((_e2098521011_
                                        (##vector-ref _g2097720987_ '4)))
                                   (if ((lambda (_g2101321015_)
                                          (eq? _g2101321015_ _id20972_))
                                        _e2098521011_)
                                       (_K2098120999_)
                                       (_else2097920995_)))
                                 (_else2097920995_)))
                           (_else2097920995_))))
                   (##structure-ref _ctx20971_ '9 gx#module-context::t '#f))))
        (if _$e21018_ (gx#core-resolve-module-export _$e21018_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx20963_ _id20964_)
      (let ((_$e20966_ (gxc#find-export-binding _ctx20963_ _id20964_)))
        (if _$e20966_
            ((lambda (_bind20969_)
               (begin
                 (if (##structure-instance-of?
                      _bind20969_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id20964_))
                 (##structure-ref _bind20969_ '1 gx#binding::t '#f)))
             _$e20966_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx20963_ '1 gx#expander-context::t '#f)
             _id20964_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx20901_)
      (letrec* ((_ht20903_ (make-hash-table-eq))
                (_find-deps20904_
                 (lambda (_rest20911_ _deps20912_)
                   (let* ((_rest2091320921_ _rest20911_)
                          (_E2091620925_
                           (lambda ()
                             (error '"No clause matching" _rest2091320921_)))
                          (_else2091520929_ (lambda () _deps20912_))
                          (_K2091720951_
                           (lambda (_rest20932_ _hd20933_)
                             (if (##structure-instance-of?
                                  _hd20933_
                                  'gx#module-context::t)
                                 (let ((_id20935_
                                        (##structure-ref
                                         _hd20933_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports20936_
                                        (##structure-ref
                                         _hd20933_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht20903_ _id20935_ '#f)
                                       (_find-deps20904_
                                        _rest20932_
                                        _deps20912_)
                                       (let ((_$e20938_
                                              (gx#core-context-prelude__opt-lambda11409
                                               _hd20933_)))
                                         (if _$e20938_
                                             ((lambda (_pre20941_)
                                                (let ((_xdeps20943_
                                                       (_find-deps20904_
                                                        (cons _pre20941_
                                                              _imports20936_)
                                                        _deps20912_)))
                                                  (begin
                                                    (table-set!
                                                     _ht20903_
                                                     _id20935_
                                                     _hd20933_)
                                                    (_find-deps20904_
                                                     _rest20932_
                                                     (cons _hd20933_
                                                           _xdeps20943_)))))
                                              _$e20938_)
                                             (let ((_xdeps20945_
                                                    (_find-deps20904_
                                                     _imports20936_
                                                     _deps20912_)))
                                               (begin
                                                 (table-set!
                                                  _ht20903_
                                                  _id20935_
                                                  _hd20933_)
                                                 (_find-deps20904_
                                                  _rest20932_
                                                  (cons _hd20933_
                                                        _xdeps20945_))))))))
                                 (if (##structure-instance-of?
                                      _hd20933_
                                      'gx#prelude-context::t)
                                     (let ((_id20947_
                                            (##structure-ref
                                             _hd20933_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht20903_ _id20947_ '#f)
                                           (_find-deps20904_
                                            _rest20932_
                                            _deps20912_)
                                           (let ((_xdeps20949_
                                                  (_find-deps20904_
                                                   (##structure-ref
                                                    _hd20933_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps20912_)))
                                             (if (table-ref
                                                  _ht20903_
                                                  _id20947_
                                                  '#f)
                                                 (_find-deps20904_
                                                  _rest20932_
                                                  _xdeps20949_)
                                                 (begin
                                                   (table-set!
                                                    _ht20903_
                                                    _id20947_
                                                    _hd20933_)
                                                   (_find-deps20904_
                                                    _rest20932_
                                                    (cons _hd20933_
                                                          _xdeps20949_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd20933_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd20933_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps20904_
                                              (cons (##direct-structure-ref
                                                     _hd20933_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest20932_)
                                              _deps20912_)
                                             (_find-deps20904_
                                              _rest20932_
                                              _deps20912_))
                                         (if (##structure-direct-instance-of?
                                              _hd20933_
                                              'gx#module-export::t)
                                             (_find-deps20904_
                                              (cons (##direct-structure-ref
                                                     _hd20933_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest20932_)
                                              _deps20912_)
                                             (if (##structure-direct-instance-of?
                                                  _hd20933_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd20933_
                                                               '3
                                                               gx#module-import::t
                                                               '#f))
                                                     (_find-deps20904_
                                                      (cons (##direct-structure-ref
                                                             _hd20933_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest20932_)
                                                      _deps20912_)
                                                     (_find-deps20904_
                                                      _rest20932_
                                                      _deps20912_))
                                                 (error '"Unexpected module import"
                                                        _hd20933_)))))))))
                     (if (##pair? _rest2091320921_)
                         (let ((_hd2091820954_ (##car _rest2091320921_))
                               (_tl2091920956_ (##cdr _rest2091320921_)))
                           (let* ((_hd20959_ _hd2091820954_)
                                  (_rest20961_ _tl2091920956_))
                             (_K2091720951_ _rest20961_ _hd20959_)))
                         (_else2091520929_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps20904_
                          (let ((_$e20906_
                                 (gx#core-context-prelude__opt-lambda11409
                                  _ctx20901_)))
                            (if _$e20906_
                                ((lambda (_pre20909_)
                                   (cons _pre20909_
                                         (##structure-ref
                                          _ctx20901_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e20906_)
                                (##structure-ref
                                 _ctx20901_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20840_)
      (let* ((_scm20842_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx20840_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs20844_ (gx#current-expander-module-library-path))
             (_dirs20853_
              (let ((_$e20846_ (gxc#current-compile-output-dir)))
                (if _$e20846_
                    ((lambda (_g2084820850_) (cons _g2084820850_ _dirs20844_))
                     _$e20846_)
                    _dirs20844_)))
             (_dirs20859_
              (map (lambda (_g2085420856_)
                     (path-expand '"static" _g2085420856_))
                   _dirs20853_)))
        (let _lp20862_ ((_rest20864_ _dirs20859_))
          (let* ((_rest2086520873_ _rest20864_)
                 (_E2086820877_
                  (lambda () (error '"No clause matching" _rest2086520873_)))
                 (_else2086720881_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx20840_ '1 gx#expander-context::t '#f)
                     _scm20842_)))
                 (_K2086920889_
                  (lambda (_rest20884_ _dir20885_)
                    (let ((_path20887_ (path-expand _scm20842_ _dir20885_)))
                      (if (file-exists? _path20887_)
                          _path20887_
                          (_lp20862_ _rest20884_))))))
            (if (##pair? _rest2086520873_)
                (let ((_hd2087020892_ (##car _rest2086520873_))
                      (_tl2087120894_ (##cdr _rest2086520873_)))
                  (let* ((_dir20897_ _hd2087020892_)
                         (_rest20899_ _tl2087120894_))
                    (_K2086920889_ _rest20899_ _dir20897_)))
                (_else2086720881_)))))))
  (define gxc#file-empty?
    (lambda (_path20838_)
      (zero? (file-info-size (file-info _path20838_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20835_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20835_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20835_)
               '#!void)
           (gxc#collect-bindings _ctx20835_)
           (gxc#compile-runtime-code _ctx20835_)
           (gxc#compile-meta-code _ctx20835_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20835_)
               '#!void)))
       gx#current-expander-context
       _ctx20835_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj21200 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj21200) __obj21200))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx20833_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20833_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx20792_)
      (letrec ((_compile120794_
                (lambda (_ctx20822_)
                  (let* ((_code20824_
                          (##structure-ref
                           _ctx20822_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt20828_
                          (if (gxc#apply-find-runtime-code _code20824_)
                              (let ((_idstr20826_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx20822_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr20826_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt20828_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx20822_
                             _rt20828_)
                            (_generate-runtime-code20795_
                             _ctx20822_
                             _code20824_))
                          (if (gxc#current-compile-static)
                              (let ((_path20831_
                                     (gxc#compile-static-output-file
                                      _ctx20822_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path20831_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code20796_
                       _ctx20822_
                       _code20824_
                       _rt20828_)))))
               (_generate-runtime-code20795_
                (lambda (_ctx20810_ _code20811_)
                  (let* ((_runtime-code20814_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code20811_))
                           gx#current-expander-context
                           _ctx20810_))
                         (_scm020816_
                          (gxc#compile-output-file _ctx20810_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms20819_
                               (gxc#compile-static-output-file _ctx20810_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm020816_
                                _runtime-code20814_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms20819_)
                                (delete-file _scms20819_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm020816_
                             '" => "
                             _scms20819_)
                            (copy-file _scm020816_ _scms20819_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm020816_))))
                        (gxc#compile-scm-file
                         _scm020816_
                         _runtime-code20814_)))))
               (_generate-loader-code20796_
                (lambda (_ctx20800_ _code20801_ _rt20802_)
                  (let* ((_loader-code20805_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code20801_))
                           gx#current-expander-context
                           _ctx20800_))
                         (_loader-code20807_
                          (if _rt20802_
                              (cons 'begin
                                    (cons _loader-code20805_
                                          (cons (cons 'load-module
                                                      (cons _rt20802_ '()))
                                                '())))
                              _loader-code20805_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx20800_ 'rt '".scm")
                     _loader-code20807_)))))
        (let ((_all-modules20798_
               (cons _ctx20792_ (gxc#lift-nested-modules _ctx20792_))))
          (for-each _compile120794_ _all-modules20798_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx20694_)
      (letrec ((_compile-ssi20696_
                (lambda (_code20762_)
                  (let* ((_path20764_
                          (gxc#compile-output-file _ctx20694_ '#f '".ssi"))
                         (_prelude20775_
                          (let* ((_super20766_
                                  (##structure-ref
                                   _ctx20694_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e20768_
                                  (##structure-ref
                                   _super20766_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e20768_
                                ((lambda (_g2077020772_)
                                   (make-symbol '":" _g2077020772_))
                                 _$e20768_)
                                ':<root>)))
                         (_ns20777_
                          (##structure-ref
                           _ctx20694_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr20779_
                          (symbol->string
                           (##structure-ref
                            _ctx20694_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg20786_
                          (let ((_$e20781_ (string-rindex _idstr20779_ '#\/)))
                            (if _$e20781_
                                ((lambda (_x20784_)
                                   (string->symbol
                                    (substring _idstr20779_ '0 _x20784_)))
                                 _$e20781_)
                                '#f)))
                         (_rt20788_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx20694_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path20764_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path20764_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude20775_)
                           (if _pkg20786_
                               (displayln '"package:" '" " _pkg20786_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns20777_)
                           (newline)
                           (pretty-print _code20762_)
                           (if _rt20788_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt20788_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi20697_
                (lambda (_part20702_)
                  (let* ((_part2070320716_ _part20702_)
                         (_E2070520720_
                          (lambda ()
                            (error '"No clause matching" _part2070320716_)))
                         (_K2070620731_
                          (lambda (_code20723_
                                   _n20724_
                                   _phi20725_
                                   _phi-ctx20726_)
                            (let ((_code20729_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code20723_))
                                    gx#current-expander-context
                                    _phi-ctx20726_
                                    gx#current-expander-phi
                                    _phi20725_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx20694_
                                _n20724_
                                '".scm")
                               _code20729_)))))
                    (if (##pair? _part2070320716_)
                        (let ((_hd2070720734_ (##car _part2070320716_))
                              (_tl2070820736_ (##cdr _part2070320716_)))
                          (let ((_phi-ctx20739_ _hd2070720734_))
                            (if (##pair? _tl2070820736_)
                                (let ((_hd2070920741_ (##car _tl2070820736_))
                                      (_tl2071020743_ (##cdr _tl2070820736_)))
                                  (let ((_phi20746_ _hd2070920741_))
                                    (if (##pair? _tl2071020743_)
                                        (let ((_hd2071120748_
                                               (##car _tl2071020743_))
                                              (_tl2071220750_
                                               (##cdr _tl2071020743_)))
                                          (let ((_n20753_ _hd2071120748_))
                                            (if (##pair? _tl2071220750_)
                                                (let ((_hd2071320755_
                                                       (##car _tl2071220750_))
                                                      (_tl2071420757_
                                                       (##cdr _tl2071220750_)))
                                                  (let ((_code20760_
                                                         _hd2071320755_))
                                                    (if (##null? _tl2071420757_)
                                                        (_K2070620731_
                                                         _code20760_
                                                         _n20753_
                                                         _phi20746_
                                                         _phi-ctx20739_)
                                                        (_E2070520720_))))
                                                (_E2070520720_))))
                                        (_E2070520720_))))
                                (_E2070520720_))))
                        (_E2070520720_))))))
        (let ((_g21211_ (gxc#generate-meta-code _ctx20694_)))
          (begin
            (let ((_g21212_ (values-count _g21211_)))
              (if (not (fx= _g21212_ 2))
                  (error "Context expects 2 values" _g21212_)))
            (let ((_ssi-code20699_ (values-ref _g21211_ 0))
                  (_phi-code20700_ (values-ref _g21211_ 1)))
              (begin
                (_compile-ssi20696_ _ssi-code20699_)
                (for-each _compile-phi20697_ _phi-code20700_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx20677_)
      (let* ((_path20679_ (gxc#compile-output-file _ctx20677_ '#f '".ssxi.ss"))
             (_code20681_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx20677_ '11 gx#module-context::t '#f)))
             (_idstr20683_
              (symbol->string
               (##structure-ref _ctx20677_ '1 gx#expander-context::t '#f)))
             (_pkg20690_
              (let ((_$e20685_ (string-rindex _idstr20683_ '#\/)))
                (if _$e20685_
                    ((lambda (_x20688_)
                       (string->symbol (substring _idstr20683_ '0 _x20688_)))
                     _$e20685_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path20679_)
          (with-output-to-file
           (cons 'path:
                 (cons _path20679_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg20690_ (displayln '"package: " _pkg20690_) '#!void)
               (newline)
               (pretty-print _code20681_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx20670_)
      (let* ((_state20672_
              (let ((__obj21201 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj21201 _ctx20670_)
                  __obj21201)))
             (_ssi-code20674_
              (gxc#apply-generate-meta
               (##structure-ref _ctx20670_ '11 gx#module-context::t '#f)
               _state20672_)))
        (values _ssi-code20674_ (gxc#meta-state-end! _state20672_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx20663_)
      (let ((_lifts20665_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code20668_ (gxc#apply-generate-runtime-phi _stx20663_)))
             (if (null? (unbox _lifts20665_))
                 _code20668_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code20668_ '())
                               (reverse (unbox _lifts20665_)))))))
         gxc#current-compile-lift
         _lifts20665_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx20659_)
      (let ((_modules20661_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx20659_ '11 gx#module-context::t '#f)
           _modules20661_)
          (reverse (unbox _modules20661_))))))
  (define gxc#compile-scm-file
    (lambda (_path20655_ _code20656_)
      (begin
        (gxc#verbose '"compile " _path20655_)
        (with-output-to-file
         (cons 'path: (cons _path20655_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code20656_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path20655_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path20655_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e20647_ (gxc#current-compile-debug)))
        (if _$e20647_
            ((lambda (_debug20650_)
               (let ((_$e20652_ _debug20650_))
                 (if (eq? _$e20652_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e20652_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e20652_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug20650_))))))
             _$e20647_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path20629_)
      (let* ((_gsc-args20636_
              (let ((_$e20631_ (gxc#current-compile-gsc-options)))
                (if _$e20631_
                    ((lambda (_opts20634_)
                       (foldr1 cons (cons _path20629_ '()) _opts20634_))
                     _$e20631_)
                    (cons _path20629_ '()))))
             (_gsc-args20638_
              (foldr1 cons _gsc-args20636_ (gxc#gsc-debug-options)))
             (_g21213_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args20638_)))
             (_proc20641_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args20638_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status20643_ (process-status _proc20641_)))
        (if (zero? _status20643_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path20629_
             _status20643_)))))
  (define gxc#compile-output-file
    (lambda (_ctx20601_ _n20602_ _ext20603_)
      (letrec ((_module-relative-path20605_
                (lambda (_ctx20627_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx20627_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory20606_
                (lambda (_ctx20623_)
                  (path-directory
                   (let ((_mpath20625_
                          (##structure-ref
                           _ctx20623_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath20625_)
                         _mpath20625_
                         (last _mpath20625_))))))
               (_section-string20607_
                (lambda (_n20621_)
                  (if (number? _n20621_)
                      (number->string _n20621_)
                      (if (symbol? _n20621_)
                          (symbol->string _n20621_)
                          (if (string? _n20621_)
                              _n20621_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n20621_))))))
               (_file-name20608_
                (lambda (_path20619_)
                  (if _n20602_
                      (string-append
                       _path20619_
                       '"__"
                       (_section-string20607_ _n20602_)
                       _ext20603_)
                      (string-append _path20619_ _ext20603_))))
               (_file-path20609_
                (lambda ()
                  (let ((_$e20614_ (gxc#current-compile-output-dir)))
                    (if _$e20614_
                        ((lambda (_outdir20617_)
                           (path-expand
                            (_file-name20608_
                             (symbol->string
                              (##structure-ref
                               _ctx20601_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir20617_))
                         _$e20614_)
                        (path-expand
                         (_file-name20608_
                          (_module-relative-path20605_ _ctx20601_))
                         (_module-source-directory20606_ _ctx20601_)))))))
        (let ((_path20611_ (_file-path20609_)))
          (begin
            (create-directory* (path-directory _path20611_))
            _path20611_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx20584_)
      (letrec ((_file-name20586_
                (lambda (_idstr20599_)
                  (string-append
                   (gxc#static-module-name _idstr20599_)
                   '".scm")))
               (_file-path20587_
                (lambda ()
                  (let* ((_file20592_
                          (_file-name20586_
                           (symbol->string
                            (##structure-ref
                             _ctx20584_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e20594_ (gxc#current-compile-output-dir)))
                    (if _$e20594_
                        ((lambda (_outdir20597_)
                           (path-expand
                            _file20592_
                            (path-expand '"static" _outdir20597_)))
                         _$e20594_)
                        (path-expand _file20592_ '"static"))))))
        (let ((_path20589_ (_file-path20587_)))
          (begin
            (create-directory* (path-directory _path20589_))
            _path20589_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx20571_ _opts20572_)
      (let ((_$e20574_ (pgetq 'output-file: _opts20572_)))
        (if _$e20574_
            (values _$e20574_)
            (let* ((_mod-str20577_
                    (symbol->string
                     (##structure-ref
                      _ctx20571_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e20579_ (string-rindex _mod-str20577_ '#\/)))
              (if _$e20579_
                  ((lambda (_ix20582_)
                     (substring
                      _mod-str20577_
                      (fx+ _ix20582_ '1)
                      (string-length _mod-str20577_)))
                   _$e20579_)
                  _mod-str20577_))))))
  (define gxc#static-module-name
    (lambda (_idstr20567_)
      (if (string? _idstr20567_)
          (let ((_strs20569_ (string-split _idstr20567_ '#\/)))
            (string-join _strs20569_ '"__"))
          (if (symbol? _idstr20567_)
              (gxc#static-module-name (symbol->string _idstr20567_))
              (error '"Bad module id" _idstr20567_))))))
