(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda21274
      (lambda (_srcpath21276_ _opts21277_)
        (begin
          (if (string? _srcpath21276_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath21276_))
          (let ((_outdir21279_ (pgetq 'output-dir: _opts21277_))
                (_invoke-gsc?21280_ (pgetq 'invoke-gsc: _opts21277_))
                (_gsc-options21281_ (pgetq 'gsc-options: _opts21277_))
                (_keep-scm?21282_ (pgetq 'keep-scm: _opts21277_))
                (_verbosity21283_ (pgetq 'verbose: _opts21277_))
                (_optimize21284_ (pgetq 'optimize: _opts21277_))
                (_debug21285_ (pgetq 'debug: _opts21277_))
                (_gen-ssxi21286_ (pgetq 'generate-ssxi: _opts21277_))
                (_static21287_ (pgetq 'static: _opts21277_)))
            (begin
              (if _outdir21279_ (create-directory* _outdir21279_) '#!void)
              (if _optimize21284_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath21276_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath21276_))))
               gxc#current-compile-output-dir
               _outdir21279_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?21280_
               gxc#current-compile-gsc-options
               _gsc-options21281_
               gxc#current-compile-keep-scm
               _keep-scm?21282_
               gxc#current-compile-verbose
               _verbosity21283_
               gxc#current-compile-optimize
               _optimize21284_
               gxc#current-compile-debug
               _debug21285_
               gxc#current-compile-generate-ssxi
               _gen-ssxi21286_
               gxc#current-compile-static
               _static21287_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath21293_)
          (let ((_opts21295_ '()))
            (gxc#compile-file__opt-lambda21274 _srcpath21293_ _opts21295_))))
      (define gxc#compile-file
        (lambda _g21303_
          (let ((_g21302_ (length _g21303_)))
            (cond ((fx= _g21302_ 1) (apply gxc#compile-file__0 _g21303_))
                  ((fx= _g21302_ 2)
                   (apply gxc#compile-file__opt-lambda21274 _g21303_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g21303_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda21260
      (lambda (_srcpath21262_ _opts21263_)
        (gxc#do-compile-exe
         _srcpath21262_
         _opts21263_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath21268_)
          (let ((_opts21270_ '()))
            (gxc#compile-exe-stub__opt-lambda21260
             _srcpath21268_
             _opts21270_))))
      (define gxc#compile-exe-stub
        (lambda _g21305_
          (let ((_g21304_ (length _g21305_)))
            (cond ((fx= _g21304_ 1) (apply gxc#compile-exe-stub__0 _g21305_))
                  ((fx= _g21304_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda21260 _g21305_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g21305_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda21246
      (lambda (_srcpath21248_ _opts21249_)
        (gxc#do-compile-exe
         _srcpath21248_
         _opts21249_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath21254_)
          (let ((_opts21256_ '()))
            (gxc#compile-static-exe__opt-lambda21246
             _srcpath21254_
             _opts21256_))))
      (define gxc#compile-static-exe
        (lambda _g21307_
          (let ((_g21306_ (length _g21307_)))
            (cond ((fx= _g21306_ 1) (apply gxc#compile-static-exe__0 _g21307_))
                  ((fx= _g21306_ 2)
                   (apply gxc#compile-static-exe__opt-lambda21246 _g21307_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g21307_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath21236_ _opts21237_ _compile-e21238_)
      (begin
        (if (string? _srcpath21236_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath21236_))
        (let ((_outdir21240_ (pgetq 'output-dir: _opts21237_))
              (_invoke-gsc?21241_ (pgetq 'invoke-gsc: _opts21237_))
              (_gsc-options21242_ (pgetq 'gsc-options: _opts21237_))
              (_keep-scm?21243_ (pgetq 'keep-scm: _opts21237_))
              (_verbosity21244_ (pgetq 'verbose: _opts21237_)))
          (begin
            (if _outdir21240_ (create-directory* _outdir21240_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath21236_)
                 (_compile-e21238_
                  (gx#import-module__0 _srcpath21236_)
                  _opts21237_)))
             gxc#current-compile-output-dir
             _outdir21240_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?21241_
             gxc#current-compile-gsc-options
             _gsc-options21242_
             gxc#current-compile-keep-scm
             _keep-scm?21243_
             gxc#current-compile-verbose
             _verbosity21244_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx21200_ _opts21201_)
      (letrec ((_generate-stub21203_
                (lambda ()
                  (let* ((_mod-str21229_
                          (symbol->string
                           (##structure-ref
                            _ctx21200_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt21231_ (string-append _mod-str21229_ '"__rt"))
                         (_mod-main21233_
                          (gxc#find-runtime-symbol _ctx21200_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt21231_
                                         (cons (cons 'quote
                                                     (cons _mod-main21233_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub21204_
                (lambda (_output-scm21211_ _output-bin21212_)
                  (let* ((_init-stub21214_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache21216_ (gxc#compile-cache-directory))
                         (_init-stub21218_
                          (gxc#compile-cache
                           _init-stub21214_
                           _gxc-cache21216_))
                         (_gsc-args21220_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21212_
                                            (cons _init-stub21218_
                                                  (cons _output-scm21211_
                                                        '()))))))
                         (_g21308_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21220_)))
                         (_proc21223_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21220_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21225_ (process-status _proc21223_)))
                    (if (zero? _status21225_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21211_
                         _output-bin21212_
                         _status21225_))))))
        (let* ((_output-bin21206_
                (gxc#compile-exe-output-file _ctx21200_ _opts21201_))
               (_output-scm21208_ (string-append _output-bin21206_ '".scm")))
          (begin
            (with-output-to-file _output-scm21208_ _generate-stub21203_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21204_ _output-scm21208_ _output-bin21206_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21208_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx21132_ _opts21133_)
      (letrec ((_generate-stub21135_
                (lambda ()
                  (let ((_mod-main21198_
                         (gxc#find-runtime-symbol _ctx21132_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main21198_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub21136_
                (lambda (_output-scm21143_ _output-bin21144_)
                  (let* ((_gerbil-home21146_ (getenv '"GERBIL_HOME"))
                         (_gx-version21148_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home21146_))
                         (_gx-gambc021150_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home21146_))
                         (_gx-gambc-init21152_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home21146_))
                         (_gx-gambc-macros21154_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home21146_))
                         (_include-gx-gambc-macros21156_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros21154_
                           '"\")"))
                         (_bin-scm21158_
                          (gxc#find-static-module-file _ctx21132_))
                         (_deps21160_
                          (gxc#find-runtime-module-deps _ctx21132_))
                         (_deps21162_
                          (map gxc#find-static-module-file _deps21160_))
                         (_deps21167_
                          (filter (lambda (_$obj21164_)
                                    (not (gxc#file-empty? _$obj21164_)))
                                  _deps21162_))
                         (_gxc-cache21169_ (gxc#compile-cache-directory))
                         (_g21309_
                          (gxc#compile-cache
                           _gx-version21148_
                           _gxc-cache21169_))
                         (_gx-gambc021172_
                          (gxc#compile-cache
                           _gx-gambc021150_
                           _gxc-cache21169_))
                         (_gx-gambc-init21174_
                          (gxc#compile-cache
                           _gx-gambc-init21152_
                           _gxc-cache21169_))
                         (_deps21180_
                          (map (lambda (_g2117521177_)
                                 (gxc#compile-cache
                                  _g2117521177_
                                  _gxc-cache21169_))
                               _deps21167_))
                         (_bin-scm21182_
                          (gxc#compile-cache _bin-scm21158_ _gxc-cache21169_))
                         (_gsc-opts21187_
                          (let ((_$e21184_ (pgetq 'gsc-options: _opts21133_)))
                            (if _$e21184_ _$e21184_ '())))
                         (_gsc-args21189_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21144_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros21156_
                                (cons _gx-gambc021172_
                                      (cons _gx-gambc-init21174_
                                            (foldr1 cons
                                                    (cons _bin-scm21182_
                                                          (cons _output-scm21143_
                                                                '()))
                                                    _deps21180_)))))
                    _gsc-opts21187_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g21310_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21189_)))
                         (_proc21192_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21189_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21194_ (process-status _proc21192_)))
                    (if (zero? _status21194_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21143_
                         _output-bin21144_
                         _status21194_))))))
        (let* ((_output-bin21138_
                (gxc#compile-exe-output-file _ctx21132_ _opts21133_))
               (_output-scm21140_ (string-append _output-bin21138_ '".scm")))
          (begin
            (with-output-to-file _output-scm21140_ _generate-stub21135_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21136_ _output-scm21140_ _output-bin21138_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21140_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir21127_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache21129_ (path-expand '"gxc" _cachedir21127_)))
        (begin
          (create-directory* _gxc-cache21129_)
          (path-normalize _gxc-cache21129_)))))
  (define gxc#compile-cache
    (lambda (_file21121_ _gxc-cache21122_)
      (let ((_cachefile21124_
             (path-expand
              (path-strip-directory _file21121_)
              _gxc-cache21122_)))
        (begin
          (if (file-exists? _cachefile21124_)
              (if (file-newer? _file21121_ _cachefile21124_)
                  (begin
                    (delete-file _cachefile21124_)
                    (copy-file _file21121_ _cachefile21124_))
                  '#!void)
              (copy-file _file21121_ _cachefile21124_))
          _cachefile21124_))))
  (define gxc#find-export-binding
    (lambda (_ctx21071_ _id21072_)
      (let ((_$e21118_
             (find (lambda (_e2107321075_)
                     (let* ((_g2107721087_ _e2107321075_)
                            (_E2108021091_
                             (lambda ()
                               (error '"No clause matching" _g2107721087_)))
                            (_else2107921095_ (lambda () '#f))
                            (_K2108121099_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2107721087_
                            (##type-id gx#module-export::t))
                           (let* ((_e2108221102_
                                   (##vector-ref _g2107721087_ '1))
                                  (_e2108321105_
                                   (##vector-ref _g2107721087_ '2))
                                  (_e2108421108_
                                   (##vector-ref _g2107721087_ '3)))
                             (if (##eq? _e2108421108_ '0)
                                 (let ((_e2108521111_
                                        (##vector-ref _g2107721087_ '4)))
                                   (if ((lambda (_g2111321115_)
                                          (eq? _g2111321115_ _id21072_))
                                        _e2108521111_)
                                       (_K2108121099_)
                                       (_else2107921095_)))
                                 (_else2107921095_)))
                           (_else2107921095_))))
                   (##structure-ref _ctx21071_ '9 gx#module-context::t '#f))))
        (if _$e21118_ (gx#core-resolve-module-export _$e21118_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx21063_ _id21064_)
      (let ((_$e21066_ (gxc#find-export-binding _ctx21063_ _id21064_)))
        (if _$e21066_
            ((lambda (_bind21069_)
               (begin
                 (if (##structure-instance-of?
                      _bind21069_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id21064_))
                 (##structure-ref _bind21069_ '1 gx#binding::t '#f)))
             _$e21066_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx21063_ '1 gx#expander-context::t '#f)
             _id21064_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx21001_)
      (letrec* ((_ht21003_ (make-hash-table-eq))
                (_find-deps21004_
                 (lambda (_rest21011_ _deps21012_)
                   (let* ((_rest2101321021_ _rest21011_)
                          (_E2101621025_
                           (lambda ()
                             (error '"No clause matching" _rest2101321021_)))
                          (_else2101521029_ (lambda () _deps21012_))
                          (_K2101721051_
                           (lambda (_rest21032_ _hd21033_)
                             (if (##structure-instance-of?
                                  _hd21033_
                                  'gx#module-context::t)
                                 (let ((_id21035_
                                        (##structure-ref
                                         _hd21033_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports21036_
                                        (##structure-ref
                                         _hd21033_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht21003_ _id21035_ '#f)
                                       (_find-deps21004_
                                        _rest21032_
                                        _deps21012_)
                                       (let ((_$e21038_
                                              (gx#core-context-prelude__opt-lambda11555
                                               _hd21033_)))
                                         (if _$e21038_
                                             ((lambda (_pre21041_)
                                                (let ((_xdeps21043_
                                                       (_find-deps21004_
                                                        (cons _pre21041_
                                                              _imports21036_)
                                                        _deps21012_)))
                                                  (begin
                                                    (table-set!
                                                     _ht21003_
                                                     _id21035_
                                                     _hd21033_)
                                                    (_find-deps21004_
                                                     _rest21032_
                                                     (cons _hd21033_
                                                           _xdeps21043_)))))
                                              _$e21038_)
                                             (let ((_xdeps21045_
                                                    (_find-deps21004_
                                                     _imports21036_
                                                     _deps21012_)))
                                               (begin
                                                 (table-set!
                                                  _ht21003_
                                                  _id21035_
                                                  _hd21033_)
                                                 (_find-deps21004_
                                                  _rest21032_
                                                  (cons _hd21033_
                                                        _xdeps21045_))))))))
                                 (if (##structure-instance-of?
                                      _hd21033_
                                      'gx#prelude-context::t)
                                     (let ((_id21047_
                                            (##structure-ref
                                             _hd21033_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht21003_ _id21047_ '#f)
                                           (_find-deps21004_
                                            _rest21032_
                                            _deps21012_)
                                           (let ((_xdeps21049_
                                                  (_find-deps21004_
                                                   (##structure-ref
                                                    _hd21033_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps21012_)))
                                             (if (table-ref
                                                  _ht21003_
                                                  _id21047_
                                                  '#f)
                                                 (_find-deps21004_
                                                  _rest21032_
                                                  _xdeps21049_)
                                                 (begin
                                                   (table-set!
                                                    _ht21003_
                                                    _id21047_
                                                    _hd21033_)
                                                   (_find-deps21004_
                                                    _rest21032_
                                                    (cons _hd21033_
                                                          _xdeps21049_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd21033_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd21033_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps21004_
                                              (cons (##direct-structure-ref
                                                     _hd21033_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest21032_)
                                              _deps21012_)
                                             (_find-deps21004_
                                              _rest21032_
                                              _deps21012_))
                                         (if (##structure-direct-instance-of?
                                              _hd21033_
                                              'gx#module-export::t)
                                             (_find-deps21004_
                                              (cons (##direct-structure-ref
                                                     _hd21033_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest21032_)
                                              _deps21012_)
                                             (if (##structure-direct-instance-of?
                                                  _hd21033_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd21033_
                                                               '3
                                                               gx#module-import::t
                                                               '#f))
                                                     (_find-deps21004_
                                                      (cons (##direct-structure-ref
                                                             _hd21033_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest21032_)
                                                      _deps21012_)
                                                     (_find-deps21004_
                                                      _rest21032_
                                                      _deps21012_))
                                                 (error '"Unexpected module import"
                                                        _hd21033_)))))))))
                     (if (##pair? _rest2101321021_)
                         (let ((_hd2101821054_ (##car _rest2101321021_))
                               (_tl2101921056_ (##cdr _rest2101321021_)))
                           (let* ((_hd21059_ _hd2101821054_)
                                  (_rest21061_ _tl2101921056_))
                             (_K2101721051_ _rest21061_ _hd21059_)))
                         (_else2101521029_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps21004_
                          (let ((_$e21006_
                                 (gx#core-context-prelude__opt-lambda11555
                                  _ctx21001_)))
                            (if _$e21006_
                                ((lambda (_pre21009_)
                                   (cons _pre21009_
                                         (##structure-ref
                                          _ctx21001_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e21006_)
                                (##structure-ref
                                 _ctx21001_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20940_)
      (let* ((_scm20942_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx20940_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs20944_ (gx#current-expander-module-library-path))
             (_dirs20953_
              (let ((_$e20946_ (gxc#current-compile-output-dir)))
                (if _$e20946_
                    ((lambda (_g2094820950_) (cons _g2094820950_ _dirs20944_))
                     _$e20946_)
                    _dirs20944_)))
             (_dirs20959_
              (map (lambda (_g2095420956_)
                     (path-expand '"static" _g2095420956_))
                   _dirs20953_)))
        (let _lp20962_ ((_rest20964_ _dirs20959_))
          (let* ((_rest2096520973_ _rest20964_)
                 (_E2096820977_
                  (lambda () (error '"No clause matching" _rest2096520973_)))
                 (_else2096720981_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx20940_ '1 gx#expander-context::t '#f)
                     _scm20942_)))
                 (_K2096920989_
                  (lambda (_rest20984_ _dir20985_)
                    (let ((_path20987_ (path-expand _scm20942_ _dir20985_)))
                      (if (file-exists? _path20987_)
                          _path20987_
                          (_lp20962_ _rest20984_))))))
            (if (##pair? _rest2096520973_)
                (let ((_hd2097020992_ (##car _rest2096520973_))
                      (_tl2097120994_ (##cdr _rest2096520973_)))
                  (let* ((_dir20997_ _hd2097020992_)
                         (_rest20999_ _tl2097120994_))
                    (_K2096920989_ _rest20999_ _dir20997_)))
                (_else2096720981_)))))))
  (define gxc#file-empty?
    (lambda (_path20938_)
      (zero? (file-info-size (file-info _path20938_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20935_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20935_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20935_)
               '#!void)
           (gxc#collect-bindings _ctx20935_)
           (gxc#compile-runtime-code _ctx20935_)
           (gxc#compile-meta-code _ctx20935_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20935_)
               '#!void)))
       gx#current-expander-context
       _ctx20935_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj21300 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj21300) __obj21300))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx20933_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20933_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx20892_)
      (letrec ((_compile120894_
                (lambda (_ctx20922_)
                  (let* ((_code20924_
                          (##structure-ref
                           _ctx20922_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt20928_
                          (if (gxc#apply-find-runtime-code _code20924_)
                              (let ((_idstr20926_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx20922_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr20926_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt20928_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx20922_
                             _rt20928_)
                            (_generate-runtime-code20895_
                             _ctx20922_
                             _code20924_))
                          (if (gxc#current-compile-static)
                              (let ((_path20931_
                                     (gxc#compile-static-output-file
                                      _ctx20922_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path20931_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code20896_
                       _ctx20922_
                       _code20924_
                       _rt20928_)))))
               (_generate-runtime-code20895_
                (lambda (_ctx20910_ _code20911_)
                  (let* ((_runtime-code20914_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code20911_))
                           gx#current-expander-context
                           _ctx20910_))
                         (_scm020916_
                          (gxc#compile-output-file _ctx20910_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms20919_
                               (gxc#compile-static-output-file _ctx20910_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm020916_
                                _runtime-code20914_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms20919_)
                                (delete-file _scms20919_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm020916_
                             '" => "
                             _scms20919_)
                            (copy-file _scm020916_ _scms20919_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm020916_))))
                        (gxc#compile-scm-file
                         _scm020916_
                         _runtime-code20914_)))))
               (_generate-loader-code20896_
                (lambda (_ctx20900_ _code20901_ _rt20902_)
                  (let* ((_loader-code20905_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code20901_))
                           gx#current-expander-context
                           _ctx20900_))
                         (_loader-code20907_
                          (if _rt20902_
                              (cons 'begin
                                    (cons _loader-code20905_
                                          (cons (cons 'load-module
                                                      (cons _rt20902_ '()))
                                                '())))
                              _loader-code20905_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx20900_ 'rt '".scm")
                     _loader-code20907_)))))
        (let ((_all-modules20898_
               (cons _ctx20892_ (gxc#lift-nested-modules _ctx20892_))))
          (for-each _compile120894_ _all-modules20898_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx20794_)
      (letrec ((_compile-ssi20796_
                (lambda (_code20862_)
                  (let* ((_path20864_
                          (gxc#compile-output-file _ctx20794_ '#f '".ssi"))
                         (_prelude20875_
                          (let* ((_super20866_
                                  (##structure-ref
                                   _ctx20794_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e20868_
                                  (##structure-ref
                                   _super20866_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e20868_
                                ((lambda (_g2087020872_)
                                   (make-symbol '":" _g2087020872_))
                                 _$e20868_)
                                ':<root>)))
                         (_ns20877_
                          (##structure-ref
                           _ctx20794_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr20879_
                          (symbol->string
                           (##structure-ref
                            _ctx20794_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg20886_
                          (let ((_$e20881_ (string-rindex _idstr20879_ '#\/)))
                            (if _$e20881_
                                ((lambda (_x20884_)
                                   (string->symbol
                                    (substring _idstr20879_ '0 _x20884_)))
                                 _$e20881_)
                                '#f)))
                         (_rt20888_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx20794_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path20864_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path20864_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude20875_)
                           (if _pkg20886_
                               (displayln '"package:" '" " _pkg20886_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns20877_)
                           (newline)
                           (pretty-print _code20862_)
                           (if _rt20888_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt20888_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi20797_
                (lambda (_part20802_)
                  (let* ((_part2080320816_ _part20802_)
                         (_E2080520820_
                          (lambda ()
                            (error '"No clause matching" _part2080320816_)))
                         (_K2080620831_
                          (lambda (_code20823_
                                   _n20824_
                                   _phi20825_
                                   _phi-ctx20826_)
                            (let ((_code20829_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code20823_))
                                    gx#current-expander-context
                                    _phi-ctx20826_
                                    gx#current-expander-phi
                                    _phi20825_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx20794_
                                _n20824_
                                '".scm")
                               _code20829_)))))
                    (if (##pair? _part2080320816_)
                        (let ((_hd2080720834_ (##car _part2080320816_))
                              (_tl2080820836_ (##cdr _part2080320816_)))
                          (let ((_phi-ctx20839_ _hd2080720834_))
                            (if (##pair? _tl2080820836_)
                                (let ((_hd2080920841_ (##car _tl2080820836_))
                                      (_tl2081020843_ (##cdr _tl2080820836_)))
                                  (let ((_phi20846_ _hd2080920841_))
                                    (if (##pair? _tl2081020843_)
                                        (let ((_hd2081120848_
                                               (##car _tl2081020843_))
                                              (_tl2081220850_
                                               (##cdr _tl2081020843_)))
                                          (let ((_n20853_ _hd2081120848_))
                                            (if (##pair? _tl2081220850_)
                                                (let ((_hd2081320855_
                                                       (##car _tl2081220850_))
                                                      (_tl2081420857_
                                                       (##cdr _tl2081220850_)))
                                                  (let ((_code20860_
                                                         _hd2081320855_))
                                                    (if (##null? _tl2081420857_)
                                                        (_K2080620831_
                                                         _code20860_
                                                         _n20853_
                                                         _phi20846_
                                                         _phi-ctx20839_)
                                                        (_E2080520820_))))
                                                (_E2080520820_))))
                                        (_E2080520820_))))
                                (_E2080520820_))))
                        (_E2080520820_))))))
        (let ((_g21311_ (gxc#generate-meta-code _ctx20794_)))
          (begin
            (let ((_g21312_ (values-count _g21311_)))
              (if (not (fx= _g21312_ 2))
                  (error "Context expects 2 values" _g21312_)))
            (let ((_ssi-code20799_ (values-ref _g21311_ 0))
                  (_phi-code20800_ (values-ref _g21311_ 1)))
              (begin
                (_compile-ssi20796_ _ssi-code20799_)
                (for-each _compile-phi20797_ _phi-code20800_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx20777_)
      (let* ((_path20779_ (gxc#compile-output-file _ctx20777_ '#f '".ssxi.ss"))
             (_code20781_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx20777_ '11 gx#module-context::t '#f)))
             (_idstr20783_
              (symbol->string
               (##structure-ref _ctx20777_ '1 gx#expander-context::t '#f)))
             (_pkg20790_
              (let ((_$e20785_ (string-rindex _idstr20783_ '#\/)))
                (if _$e20785_
                    ((lambda (_x20788_)
                       (string->symbol (substring _idstr20783_ '0 _x20788_)))
                     _$e20785_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path20779_)
          (with-output-to-file
           (cons 'path:
                 (cons _path20779_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg20790_ (displayln '"package: " _pkg20790_) '#!void)
               (newline)
               (pretty-print _code20781_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx20770_)
      (let* ((_state20772_
              (let ((__obj21301 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj21301 _ctx20770_)
                  __obj21301)))
             (_ssi-code20774_
              (gxc#apply-generate-meta
               (##structure-ref _ctx20770_ '11 gx#module-context::t '#f)
               _state20772_)))
        (values _ssi-code20774_ (gxc#meta-state-end! _state20772_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx20763_)
      (let ((_lifts20765_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code20768_ (gxc#apply-generate-runtime-phi _stx20763_)))
             (if (null? (unbox _lifts20765_))
                 _code20768_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code20768_ '())
                               (reverse (unbox _lifts20765_)))))))
         gxc#current-compile-lift
         _lifts20765_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx20759_)
      (let ((_modules20761_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx20759_ '11 gx#module-context::t '#f)
           _modules20761_)
          (reverse (unbox _modules20761_))))))
  (define gxc#compile-scm-file
    (lambda (_path20755_ _code20756_)
      (begin
        (gxc#verbose '"compile " _path20755_)
        (with-output-to-file
         (cons 'path: (cons _path20755_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code20756_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path20755_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path20755_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e20747_ (gxc#current-compile-debug)))
        (if _$e20747_
            ((lambda (_debug20750_)
               (let ((_$e20752_ _debug20750_))
                 (if (eq? _$e20752_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e20752_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e20752_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug20750_))))))
             _$e20747_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path20729_)
      (let* ((_gsc-args20736_
              (let ((_$e20731_ (gxc#current-compile-gsc-options)))
                (if _$e20731_
                    ((lambda (_opts20734_)
                       (foldr1 cons (cons _path20729_ '()) _opts20734_))
                     _$e20731_)
                    (cons _path20729_ '()))))
             (_gsc-args20738_
              (foldr1 cons _gsc-args20736_ (gxc#gsc-debug-options)))
             (_g21313_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args20738_)))
             (_proc20741_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args20738_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status20743_ (process-status _proc20741_)))
        (if (zero? _status20743_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path20729_
             _status20743_)))))
  (define gxc#compile-output-file
    (lambda (_ctx20701_ _n20702_ _ext20703_)
      (letrec ((_module-relative-path20705_
                (lambda (_ctx20727_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx20727_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory20706_
                (lambda (_ctx20723_)
                  (path-directory
                   (let ((_mpath20725_
                          (##structure-ref
                           _ctx20723_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath20725_)
                         _mpath20725_
                         (last _mpath20725_))))))
               (_section-string20707_
                (lambda (_n20721_)
                  (if (number? _n20721_)
                      (number->string _n20721_)
                      (if (symbol? _n20721_)
                          (symbol->string _n20721_)
                          (if (string? _n20721_)
                              _n20721_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n20721_))))))
               (_file-name20708_
                (lambda (_path20719_)
                  (if _n20702_
                      (string-append
                       _path20719_
                       '"__"
                       (_section-string20707_ _n20702_)
                       _ext20703_)
                      (string-append _path20719_ _ext20703_))))
               (_file-path20709_
                (lambda ()
                  (let ((_$e20714_ (gxc#current-compile-output-dir)))
                    (if _$e20714_
                        ((lambda (_outdir20717_)
                           (path-expand
                            (_file-name20708_
                             (symbol->string
                              (##structure-ref
                               _ctx20701_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir20717_))
                         _$e20714_)
                        (path-expand
                         (_file-name20708_
                          (_module-relative-path20705_ _ctx20701_))
                         (_module-source-directory20706_ _ctx20701_)))))))
        (let ((_path20711_ (_file-path20709_)))
          (begin
            (create-directory* (path-directory _path20711_))
            _path20711_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx20684_)
      (letrec ((_file-name20686_
                (lambda (_idstr20699_)
                  (string-append
                   (gxc#static-module-name _idstr20699_)
                   '".scm")))
               (_file-path20687_
                (lambda ()
                  (let* ((_file20692_
                          (_file-name20686_
                           (symbol->string
                            (##structure-ref
                             _ctx20684_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e20694_ (gxc#current-compile-output-dir)))
                    (if _$e20694_
                        ((lambda (_outdir20697_)
                           (path-expand
                            _file20692_
                            (path-expand '"static" _outdir20697_)))
                         _$e20694_)
                        (path-expand _file20692_ '"static"))))))
        (let ((_path20689_ (_file-path20687_)))
          (begin
            (create-directory* (path-directory _path20689_))
            _path20689_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx20671_ _opts20672_)
      (let ((_$e20674_ (pgetq 'output-file: _opts20672_)))
        (if _$e20674_
            (values _$e20674_)
            (let* ((_mod-str20677_
                    (symbol->string
                     (##structure-ref
                      _ctx20671_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e20679_ (string-rindex _mod-str20677_ '#\/)))
              (if _$e20679_
                  ((lambda (_ix20682_)
                     (substring
                      _mod-str20677_
                      (fx+ _ix20682_ '1)
                      (string-length _mod-str20677_)))
                   _$e20679_)
                  _mod-str20677_))))))
  (define gxc#static-module-name
    (lambda (_idstr20667_)
      (if (string? _idstr20667_)
          (let ((_strs20669_ (string-split _idstr20667_ '#\/)))
            (string-join _strs20669_ '"__"))
          (if (symbol? _idstr20667_)
              (gxc#static-module-name (symbol->string _idstr20667_))
              (error '"Bad module id" _idstr20667_))))))
