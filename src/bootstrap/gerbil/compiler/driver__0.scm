(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20476
      (lambda (_srcpath20478_ _opts20479_)
        (begin
          (if (string? _srcpath20478_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20478_))
          (let ((_outdir20481_ (pgetq 'output-dir: _opts20479_))
                (_invoke-gsc?20482_ (pgetq 'invoke-gsc: _opts20479_))
                (_gsc-options20483_ (pgetq 'gsc-options: _opts20479_))
                (_keep-scm?20484_ (pgetq 'keep-scm: _opts20479_))
                (_verbosity20485_ (pgetq 'verbose: _opts20479_))
                (_optimize20486_ (pgetq 'optimize: _opts20479_))
                (_gen-ssxi20487_ (pgetq 'generate-ssxi: _opts20479_))
                (_static20488_ (pgetq 'static: _opts20479_)))
            (begin
              (if _outdir20481_ (create-directory* _outdir20481_) '#!void)
              (if _optimize20486_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20478_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20478_))))
               gxc#current-compile-output-dir
               _outdir20481_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20482_
               gxc#current-compile-gsc-options
               _gsc-options20483_
               gxc#current-compile-keep-scm
               _keep-scm?20484_
               gxc#current-compile-verbose
               _verbosity20485_
               gxc#current-compile-optimize
               _optimize20486_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20487_
               gxc#current-compile-static
               _static20488_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20494_)
          (let ((_opts20496_ '()))
            (gxc#compile-file__opt-lambda20476 _srcpath20494_ _opts20496_))))
      (define gxc#compile-file
        (lambda _g20504_
          (let ((_g20503_ (length _g20504_)))
            (cond ((fx= _g20503_ 1) (apply gxc#compile-file__0 _g20504_))
                  ((fx= _g20503_ 2)
                   (apply gxc#compile-file__opt-lambda20476 _g20504_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g20504_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20462
      (lambda (_srcpath20464_ _opts20465_)
        (gxc#do-compile-exe
         _srcpath20464_
         _opts20465_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20470_)
          (let ((_opts20472_ '()))
            (gxc#compile-exe-stub__opt-lambda20462
             _srcpath20470_
             _opts20472_))))
      (define gxc#compile-exe-stub
        (lambda _g20506_
          (let ((_g20505_ (length _g20506_)))
            (cond ((fx= _g20505_ 1) (apply gxc#compile-exe-stub__0 _g20506_))
                  ((fx= _g20505_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20462 _g20506_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g20506_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20448
      (lambda (_srcpath20450_ _opts20451_)
        (gxc#do-compile-exe
         _srcpath20450_
         _opts20451_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20456_)
          (let ((_opts20458_ '()))
            (gxc#compile-static-exe__opt-lambda20448
             _srcpath20456_
             _opts20458_))))
      (define gxc#compile-static-exe
        (lambda _g20508_
          (let ((_g20507_ (length _g20508_)))
            (cond ((fx= _g20507_ 1) (apply gxc#compile-static-exe__0 _g20508_))
                  ((fx= _g20507_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20448 _g20508_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g20508_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20438_ _opts20439_ _compile-e20440_)
      (begin
        (if (string? _srcpath20438_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20438_))
        (let ((_outdir20442_ (pgetq 'output-dir: _opts20439_))
              (_invoke-gsc?20443_ (pgetq 'invoke-gsc: _opts20439_))
              (_gsc-options20444_ (pgetq 'gsc-options: _opts20439_))
              (_keep-scm?20445_ (pgetq 'keep-scm: _opts20439_))
              (_verbosity20446_ (pgetq 'verbose: _opts20439_)))
          (begin
            (if _outdir20442_ (create-directory* _outdir20442_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20438_)
                 (_compile-e20440_
                  (gx#import-module__0 _srcpath20438_)
                  _opts20439_)))
             gxc#current-compile-output-dir
             _outdir20442_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20443_
             gxc#current-compile-gsc-options
             _gsc-options20444_
             gxc#current-compile-keep-scm
             _keep-scm?20445_
             gxc#current-compile-verbose
             _verbosity20446_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20402_ _opts20403_)
      (let ((_generate-stub20405_
             (lambda ()
               (let ((_mod-str20431_
                      (symbol->string
                       (##structure-ref
                        _ctx20402_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20433_ (string-append _mod-str20431_ '"__rt")))
                   (let ((_mod-main20435_
                          (gxc#find-runtime-symbol _ctx20402_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20433_
                                            (cons (cons 'quote
                                                        (cons _mod-main20435_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20406_
               (lambda (_output-scm20413_ _output-bin20414_)
                 (let ((_init-stub20416_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gxc-cache20418_ (gxc#compile-cache-directory)))
                     (let ((_init-stub20420_
                            (gxc#compile-cache
                             _init-stub20416_
                             _gxc-cache20418_)))
                       (let ((_gsc-args20422_
                              (cons '"-exe"
                                    (cons '"-o"
                                          (cons _output-bin20414_
                                                (cons _init-stub20420_
                                                      (cons _output-scm20413_
                                                            '())))))))
                         (let ((_g20509_
                                (gxc#verbose
                                 '"invoke gsc "
                                 (cons 'gsc _gsc-args20422_))))
                           (let ((_proc20425_
                                  (open-process
                                   (cons 'path:
                                         (cons '"gsc"
                                               (cons 'arguments:
                                                     (cons _gsc-args20422_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (let ((_status20427_
                                    (process-status _proc20425_)))
                               (let ()
                                 (if (zero? _status20427_)
                                     '#!void
                                     (gxc#raise-compile-error
                                      '"Compilation error; gsc exit with nonzero status"
                                      _output-scm20413_
                                      _output-bin20414_
                                      _status20427_)))))))))))))
          (let ((_output-bin20408_
                 (gxc#compile-exe-output-file _ctx20402_ _opts20403_)))
            (let ((_output-scm20410_
                   (string-append _output-bin20408_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20410_ _generate-stub20405_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20406_ _output-scm20410_ _output-bin20408_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20410_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx20337_ _opts20338_)
      (let ((_generate-stub20340_
             (lambda ()
               (let ((_mod-main20400_
                      (gxc#find-runtime-symbol _ctx20337_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20400_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub20341_
               (lambda (_output-scm20348_ _output-bin20349_)
                 (let ((_gerbil-home20351_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020353_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20351_)))
                     (let ((_gx-gambc-init20355_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20351_)))
                       (let ((_gx-gambc-macros20357_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20351_)))
                         (let ((_include-gx-gambc-macros20359_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20357_
                                 '"\")")))
                           (let ((_bin-scm20361_
                                  (gxc#find-static-module-file _ctx20337_)))
                             (let ((_deps20363_
                                    (gxc#find-runtime-module-deps _ctx20337_)))
                               (let ((_deps20365_
                                      (map gxc#find-static-module-file
                                           _deps20363_)))
                                 (let ((_deps20370_
                                        (filter (lambda (_$obj20367_)
                                                  (not (gxc#file-empty?
                                                        _$obj20367_)))
                                                _deps20365_)))
                                   (let ((_gxc-cache20372_
                                          (gxc#compile-cache-directory)))
                                     (let ((_gx-gambc020374_
                                            (gxc#compile-cache
                                             _gx-gambc020353_
                                             _gxc-cache20372_)))
                                       (let ((_gx-gambc-init20376_
                                              (gxc#compile-cache
                                               _gx-gambc-init20355_
                                               _gxc-cache20372_)))
                                         (let ((_deps20382_
                                                (map (lambda (_g2037720379_)
                                                       (gxc#compile-cache
                                                        _g2037720379_
                                                        _gxc-cache20372_))
                                                     _deps20370_)))
                                           (let ((_bin-scm20384_
                                                  (gxc#compile-cache
                                                   _bin-scm20361_
                                                   _gxc-cache20372_)))
                                             (let ((_gsc-opts20389_
                                                    (let ((_$e20386_
                                                           (pgetq 'gsc-options:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opts20338_)))
              (if _$e20386_ _$e20386_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_gsc-args20391_
                                                      (cons '"-exe"
                                                            (cons '"-o"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _output-bin20349_
                                (foldr1 cons
                                        (cons '"-e"
                                              (cons _include-gx-gambc-macros20359_
                                                    (cons _gx-gambc020374_
                                                          (cons _gx-gambc-init20376_
                                                                (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _bin-scm20384_
                                      (cons _output-scm20348_ '()))
                                _deps20382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _gsc-opts20389_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g20510_
                                                        (gxc#verbose
                                                         '"invoke gsc "
                                                         (cons 'gsc
                                                               _gsc-args20391_))))
                                                   (let ((_proc20394_
                                                          (open-process
                                                           (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '"gsc"
                               (cons 'arguments:
                                     (cons _gsc-args20391_
                                           (cons 'stdout-redirection:
                                                 (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_status20396_
                                                            (process-status
                                                             _proc20394_)))
                                                       (let ()
                                                         (if (zero? _status20396_)
                                                             '#!void
                                                             (gxc#raise-compile-error
                                                              '"Compilation error; gsc exit with nonzero status"
                                                              _output-scm20348_
                                                              _output-bin20349_
                                                              _status20396_)))))))))))))))))))))))))
          (let ((_output-bin20343_
                 (gxc#compile-exe-output-file _ctx20337_ _opts20338_)))
            (let ((_output-scm20345_
                   (string-append _output-bin20343_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20345_ _generate-stub20340_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20341_ _output-scm20345_ _output-bin20343_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20345_))))))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let ((_cachedir20332_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil")))
        (let ((_gxc-cache20334_ (path-expand '"gxc" _cachedir20332_)))
          (let ()
            (begin
              (create-directory* _gxc-cache20334_)
              (path-normalize _gxc-cache20334_)))))))
  (define gxc#compile-cache
    (lambda (_file20326_ _gxc-cache20327_)
      (let ((_cachefile20329_
             (path-expand
              (path-strip-directory _file20326_)
              _gxc-cache20327_)))
        (begin
          (if (file-exists? _cachefile20329_)
              (if (file-newer? _file20326_ _cachefile20329_)
                  (begin
                    (delete-file _cachefile20329_)
                    (copy-file _file20326_ _cachefile20329_))
                  '#!void)
              (copy-file _file20326_ _cachefile20329_))
          _cachefile20329_))))
  (define gxc#find-export-binding
    (lambda (_ctx20276_ _id20277_)
      (let ((_$e20323_
             (find (lambda (_e2027820280_)
                     (let ((_g2028220292_ _e2027820280_))
                       (let ((_E2028520296_
                              (lambda ()
                                (error '"No clause matching" _g2028220292_))))
                         (let ((_else2028420300_ (lambda () '#f)))
                           (let ((_K2028620304_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g2028220292_
                                  (##type-id gx#module-export::t))
                                 (let ((_e2028720307_
                                        (##vector-ref _g2028220292_ '1)))
                                   (let ((_e2028820310_
                                          (##vector-ref _g2028220292_ '2)))
                                     (let ((_e2028920313_
                                            (##vector-ref _g2028220292_ '3)))
                                       (if (##eq? _e2028920313_ '0)
                                           (let ((_e2029020316_
                                                  (##vector-ref
                                                   _g2028220292_
                                                   '4)))
                                             (if ((lambda (_g2031820320_)
                                                    (eq? _g2031820320_
                                                         _id20277_))
                                                  _e2029020316_)
                                                 (_K2028620304_)
                                                 (_else2028420300_)))
                                           (_else2028420300_)))))
                                 (_else2028420300_)))))))
                   (##structure-ref _ctx20276_ '9 gx#module-context::t '#f))))
        (if _$e20323_ (gx#core-resolve-module-export _$e20323_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx20268_ _id20269_)
      (let ((_$e20271_ (gxc#find-export-binding _ctx20268_ _id20269_)))
        (if _$e20271_
            ((lambda (_bind20274_)
               (begin
                 (if (##structure-instance-of?
                      _bind20274_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id20269_))
                 (##structure-ref _bind20274_ '1 gx#binding::t '#f)))
             _$e20271_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx20268_ '1 gx#expander-context::t '#f)
             _id20269_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx20206_)
      (let ((_ht20208_ (make-hash-table-eq)))
        (letrec ((_find-deps20209_
                  (lambda (_rest20216_ _deps20217_)
                    (let ((_rest2021820226_ _rest20216_))
                      (let ((_E2022120230_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest2021820226_))))
                        (let ((_else2022020234_ (lambda () _deps20217_)))
                          (let ((_K2022220256_
                                 (lambda (_rest20237_ _hd20238_)
                                   (if (##structure-instance-of?
                                        _hd20238_
                                        'gx#module-context::t)
                                       (let ((_id20240_
                                              (##structure-ref
                                               _hd20238_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports20241_
                                              (##structure-ref
                                               _hd20238_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht20208_
                                              _id20240_
                                              '#f)
                                             (_find-deps20209_
                                              _rest20237_
                                              _deps20217_)
                                             (let ((_$e20243_
                                                    (gx#core-context-prelude__opt-lambda11357
                                                     _hd20238_)))
                                               (if _$e20243_
                                                   ((lambda (_pre20246_)
                                                      (let ((_xdeps20248_
                                                             (_find-deps20209_
                                                              (cons _pre20246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports20241_)
                      _deps20217_)))
                (begin
                  (table-set! _ht20208_ _id20240_ _hd20238_)
                  (_find-deps20209_
                   _rest20237_
                   (cons _hd20238_ _xdeps20248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e20243_)
                                                   (let ((_xdeps20250_
                                                          (_find-deps20209_
                                                           _imports20241_
                                                           _deps20217_)))
                                                     (begin
                                                       (table-set!
                                                        _ht20208_
                                                        _id20240_
                                                        _hd20238_)
                                                       (_find-deps20209_
                                                        _rest20237_
                                                        (cons _hd20238_
                                                              _xdeps20250_))))))))
                                       (if (##structure-instance-of?
                                            _hd20238_
                                            'gx#prelude-context::t)
                                           (let ((_id20252_
                                                  (##structure-ref
                                                   _hd20238_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht20208_
                                                  _id20252_
                                                  '#f)
                                                 (_find-deps20209_
                                                  _rest20237_
                                                  _deps20217_)
                                                 (let ((_xdeps20254_
                                                        (_find-deps20209_
                                                         (##structure-ref
                                                          _hd20238_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps20217_)))
                                                   (if (table-ref
                                                        _ht20208_
                                                        _id20252_
                                                        '#f)
                                                       (_find-deps20209_
                                                        _rest20237_
                                                        _xdeps20254_)
                                                       (begin
                                                         (table-set!
                                                          _ht20208_
                                                          _id20252_
                                                          _hd20238_)
                                                         (_find-deps20209_
                                                          _rest20237_
                                                          (cons _hd20238_
                                                                _xdeps20254_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd20238_
                                                'gx#module-import::t)
                                               (if (fxzero? (##direct-structure-ref
                                                             _hd20238_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps20209_
                                                    (cons (##direct-structure-ref
                                                           _hd20238_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest20237_)
                                                    _deps20217_)
                                                   (_find-deps20209_
                                                    _rest20237_
                                                    _deps20217_))
                                               (if (##structure-direct-instance-of?
                                                    _hd20238_
                                                    'gx#module-export::t)
                                                   (_find-deps20209_
                                                    (cons (##direct-structure-ref
                                                           _hd20238_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest20237_)
                                                    _deps20217_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd20238_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd20238_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps20209_
                    (cons (##direct-structure-ref
                           _hd20238_
                           '1
                           gx#import-set::t
                           '#f)
                          _rest20237_)
                    _deps20217_)
                   (_find-deps20209_ _rest20237_ _deps20217_))
               (error '"Unexpected module import" _hd20238_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest2021820226_)
                                (let ((_hd2022320259_ (##car _rest2021820226_))
                                      (_tl2022420261_
                                       (##cdr _rest2021820226_)))
                                  (let ((_hd20264_ _hd2022320259_))
                                    (let ((_rest20266_ _tl2022420261_))
                                      (_K2022220256_ _rest20266_ _hd20264_))))
                                (_else2022020234_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps20209_
                            (let ((_$e20211_
                                   (gx#core-context-prelude__opt-lambda11357
                                    _ctx20206_)))
                              (if _$e20211_
                                  ((lambda (_pre20214_)
                                     (cons _pre20214_
                                           (##structure-ref
                                            _ctx20206_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e20211_)
                                  (##structure-ref
                                   _ctx20206_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20145_)
      (let ((_scm20147_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx20145_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs20149_ (gx#current-expander-module-library-path)))
          (let ((_dirs20158_
                 (let ((_$e20151_ (gxc#current-compile-output-dir)))
                   (if _$e20151_
                       ((lambda (_g2015320155_)
                          (cons _g2015320155_ _dirs20149_))
                        _$e20151_)
                       _dirs20149_))))
            (let ((_dirs20164_
                   (map (lambda (_g2015920161_)
                          (path-expand '"static" _g2015920161_))
                        _dirs20158_)))
              (let ()
                ((letrec ((_lp20167_
                           (lambda (_rest20169_)
                             (let ((_rest2017020178_ _rest20169_))
                               (let ((_E2017320182_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest2017020178_))))
                                 (let ((_else2017220186_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx20145_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm20147_))))
                                   (let ((_K2017420194_
                                          (lambda (_rest20189_ _dir20190_)
                                            (let ((_path20192_
                                                   (path-expand
                                                    _scm20147_
                                                    _dir20190_)))
                                              (if (file-exists? _path20192_)
                                                  _path20192_
                                                  (_lp20167_ _rest20189_))))))
                                     (if (##pair? _rest2017020178_)
                                         (let ((_hd2017520197_
                                                (##car _rest2017020178_))
                                               (_tl2017620199_
                                                (##cdr _rest2017020178_)))
                                           (let ((_dir20202_ _hd2017520197_))
                                             (let ((_rest20204_
                                                    _tl2017620199_))
                                               (_K2017420194_
                                                _rest20204_
                                                _dir20202_))))
                                         (_else2017220186_)))))))))
                   _lp20167_)
                 _dirs20164_))))))))
  (define gxc#file-empty?
    (lambda (_path20143_)
      (zero? (file-info-size (file-info _path20143_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20140_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20140_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20140_)
               '#!void)
           (gxc#collect-bindings _ctx20140_)
           (gxc#compile-runtime-code _ctx20140_)
           (gxc#compile-meta-code _ctx20140_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20140_)
               '#!void)))
       gx#current-expander-context
       _ctx20140_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20501 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20501) __obj20501))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx20138_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20138_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx20097_)
      (let ((_generate-runtime-code20100_
             (lambda (_ctx20115_ _code20116_)
               (let ((_runtime-code20119_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code20116_))
                       gx#current-expander-context
                       _ctx20115_)))
                 (let ((_scm020121_
                        (gxc#compile-output-file _ctx20115_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms20124_
                                (gxc#compile-static-output-file _ctx20115_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm020121_
                                 _runtime-code20119_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms20124_)
                                 (delete-file _scms20124_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm020121_
                              '" => "
                              _scms20124_)
                             (copy-file _scm020121_ _scms20124_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm020121_))))
                         (gxc#compile-scm-file
                          _scm020121_
                          _runtime-code20119_))))))))
        (let ((_generate-loader-code20101_
               (lambda (_ctx20105_ _code20106_ _rt20107_)
                 (let ((_loader-code20110_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code20106_))
                         gx#current-expander-context
                         _ctx20105_)))
                   (let ((_loader-code20112_
                          (if _rt20107_
                              (cons 'begin
                                    (cons _loader-code20110_
                                          (cons (cons 'load-module
                                                      (cons _rt20107_ '()))
                                                '())))
                              _loader-code20110_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx20105_ 'rt '".scm")
                        _loader-code20112_)))))))
          (let ((_compile120099_
                 (lambda (_ctx20127_)
                   (let ((_code20129_
                          (##structure-ref
                           _ctx20127_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt20133_
                            (if (gxc#apply-find-runtime-code _code20129_)
                                (let ((_idstr20131_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx20127_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr20131_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt20133_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx20127_
                                  _rt20133_)
                                 (_generate-runtime-code20100_
                                  _ctx20127_
                                  _code20129_))
                               (if (gxc#current-compile-static)
                                   (let ((_path20136_
                                          (gxc#compile-static-output-file
                                           _ctx20127_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path20136_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code20101_
                            _ctx20127_
                            _code20129_
                            _rt20133_))))))))
            (let ((_all-modules20103_
                   (cons _ctx20097_ (gxc#lift-nested-modules _ctx20097_))))
              (for-each _compile120099_ _all-modules20103_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19999_)
      (let ((_compile-ssi20001_
             (lambda (_code20067_)
               (let ((_path20069_
                      (gxc#compile-output-file _ctx19999_ '#f '".ssi")))
                 (let ((_prelude20080_
                        (let ((_super20071_
                               (##structure-ref
                                _ctx19999_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e20073_
                                 (##structure-ref
                                  _super20071_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e20073_
                                ((lambda (_g2007520077_)
                                   (make-symbol '":" _g2007520077_))
                                 _$e20073_)
                                ':<root>)))))
                   (let ((_ns20082_
                          (##structure-ref
                           _ctx19999_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr20084_
                            (symbol->string
                             (##structure-ref
                              _ctx19999_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg20091_
                              (let ((_$e20086_
                                     (string-rindex _idstr20084_ '#\/)))
                                (if _$e20086_
                                    ((lambda (_x20089_)
                                       (string->symbol
                                        (substring _idstr20084_ '0 _x20089_)))
                                     _$e20086_)
                                    '#f))))
                         (let ((_rt20093_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19999_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path20069_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path20069_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude20080_)
                                    (if _pkg20091_
                                        (displayln '"package:" '" " _pkg20091_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns20082_)
                                    (newline)
                                    (pretty-print _code20067_)
                                    (if _rt20093_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt20093_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi20002_
               (lambda (_part20007_)
                 (let ((_part2000820021_ _part20007_))
                   (let ((_E2001020025_
                          (lambda ()
                            (error '"No clause matching" _part2000820021_))))
                     (let ((_K2001120036_
                            (lambda (_code20028_
                                     _n20029_
                                     _phi20030_
                                     _phi-ctx20031_)
                              (let ((_code20034_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code20028_))
                                      gx#current-expander-context
                                      _phi-ctx20031_
                                      gx#current-expander-phi
                                      _phi20030_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19999_
                                  _n20029_
                                  '".scm")
                                 _code20034_)))))
                       (if (##pair? _part2000820021_)
                           (let ((_hd2001220039_ (##car _part2000820021_))
                                 (_tl2001320041_ (##cdr _part2000820021_)))
                             (let ((_phi-ctx20044_ _hd2001220039_))
                               (if (##pair? _tl2001320041_)
                                   (let ((_hd2001420046_
                                          (##car _tl2001320041_))
                                         (_tl2001520048_
                                          (##cdr _tl2001320041_)))
                                     (let ((_phi20051_ _hd2001420046_))
                                       (if (##pair? _tl2001520048_)
                                           (let ((_hd2001620053_
                                                  (##car _tl2001520048_))
                                                 (_tl2001720055_
                                                  (##cdr _tl2001520048_)))
                                             (let ((_n20058_ _hd2001620053_))
                                               (if (##pair? _tl2001720055_)
                                                   (let ((_hd2001820060_
                                                          (##car _tl2001720055_))
                                                         (_tl2001920062_
                                                          (##cdr _tl2001720055_)))
                                                     (let ((_code20065_
                                                            _hd2001820060_))
                                                       (if (##null? _tl2001920062_)
                                                           (_K2001120036_
                                                            _code20065_
                                                            _n20058_
                                                            _phi20051_
                                                            _phi-ctx20044_)
                                                           (_E2001020025_))))
                                                   (_E2001020025_))))
                                           (_E2001020025_))))
                                   (_E2001020025_))))
                           (_E2001020025_))))))))
          (let ((_g20511_ (gxc#generate-meta-code _ctx19999_)))
            (begin
              (let ((_g20512_ (values-count _g20511_)))
                (if (not (fx= _g20512_ 2))
                    (error "Context expects 2 values" _g20512_)))
              (let ((_ssi-code20004_ (values-ref _g20511_ 0))
                    (_phi-code20005_ (values-ref _g20511_ 1)))
                (begin
                  (_compile-ssi20001_ _ssi-code20004_)
                  (for-each _compile-phi20002_ _phi-code20005_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19982_)
      (let ((_path19984_ (gxc#compile-output-file _ctx19982_ '#f '".ssxi.ss")))
        (let ((_code19986_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19982_ '11 gx#module-context::t '#f))))
          (let ((_idstr19988_
                 (symbol->string
                  (##structure-ref _ctx19982_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19995_
                   (let ((_$e19990_ (string-rindex _idstr19988_ '#\/)))
                     (if _$e19990_
                         ((lambda (_x19993_)
                            (string->symbol
                             (substring _idstr19988_ '0 _x19993_)))
                          _$e19990_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19984_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19984_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19995_
                           (displayln '"package: " _pkg19995_)
                           '#!void)
                       (newline)
                       (pretty-print _code19986_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19975_)
      (let ((_state19977_
             (let ((__obj20502 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20502 _ctx19975_)
                 __obj20502))))
        (let ((_ssi-code19979_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19975_ '11 gx#module-context::t '#f)
                _state19977_)))
          (let ()
            (values _ssi-code19979_ (gxc#meta-state-end! _state19977_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19968_)
      (let ((_lifts19970_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19973_ (gxc#apply-generate-runtime-phi _stx19968_)))
             (if (null? (unbox _lifts19970_))
                 _code19973_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19973_ '())
                               (reverse (unbox _lifts19970_)))))))
         gxc#current-compile-lift
         _lifts19970_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19964_)
      (let ((_modules19966_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19964_ '11 gx#module-context::t '#f)
           _modules19966_)
          (reverse (unbox _modules19966_))))))
  (define gxc#compile-scm-file
    (lambda (_path19960_ _code19961_)
      (begin
        (gxc#verbose '"compile " _path19960_)
        (with-output-to-file
         (cons 'path: (cons _path19960_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19961_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19960_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19960_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19946_)
      (let ((_gsc-args19953_
             (let ((_$e19948_ (gxc#current-compile-gsc-options)))
               (if _$e19948_
                   ((lambda (_opts19951_)
                      (foldr1 cons (cons _path19946_ '()) _opts19951_))
                    _$e19948_)
                   (cons _path19946_ '())))))
        (let ((_proc19955_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19953_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19957_ (process-status _proc19955_)))
            (let ()
              (if (zero? _status19957_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19946_
                   _status19957_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19918_ _n19919_ _ext19920_)
      (let ((_module-relative-path19922_
             (lambda (_ctx19944_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19944_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19923_
               (lambda (_ctx19940_)
                 (path-directory
                  (let ((_mpath19942_
                         (##structure-ref
                          _ctx19940_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19942_)
                        _mpath19942_
                        (last _mpath19942_)))))))
          (let ((_section-string19924_
                 (lambda (_n19938_)
                   (if (number? _n19938_)
                       (number->string _n19938_)
                       (if (symbol? _n19938_)
                           (symbol->string _n19938_)
                           (if (string? _n19938_)
                               _n19938_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19938_)))))))
            (let ((_file-name19925_
                   (lambda (_path19936_)
                     (if _n19919_
                         (string-append
                          _path19936_
                          '"__"
                          (_section-string19924_ _n19919_)
                          _ext19920_)
                         (string-append _path19936_ _ext19920_)))))
              (let ((_file-path19926_
                     (lambda ()
                       (let ((_$e19931_ (gxc#current-compile-output-dir)))
                         (if _$e19931_
                             ((lambda (_outdir19934_)
                                (path-expand
                                 (_file-name19925_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19918_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19934_))
                              _$e19931_)
                             (path-expand
                              (_file-name19925_
                               (_module-relative-path19922_ _ctx19918_))
                              (_module-source-directory19923_ _ctx19918_)))))))
                (let ((_path19928_ (_file-path19926_)))
                  (begin
                    (create-directory* (path-directory _path19928_))
                    _path19928_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19901_)
      (let ((_file-name19903_
             (lambda (_idstr19916_)
               (string-append (gxc#static-module-name _idstr19916_) '".scm"))))
        (let ((_file-path19904_
               (lambda ()
                 (let ((_file19909_
                        (_file-name19903_
                         (symbol->string
                          (##structure-ref
                           _ctx19901_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19911_ (gxc#current-compile-output-dir)))
                     (if _$e19911_
                         ((lambda (_outdir19914_)
                            (path-expand
                             _file19909_
                             (path-expand '"static" _outdir19914_)))
                          _$e19911_)
                         (path-expand _file19909_ '"static")))))))
          (let ((_path19906_ (_file-path19904_)))
            (begin
              (create-directory* (path-directory _path19906_))
              _path19906_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19888_ _opts19889_)
      (let ((_$e19891_ (pgetq 'output-file: _opts19889_)))
        (if _$e19891_
            (values _$e19891_)
            (let ((_mod-str19894_
                   (symbol->string
                    (##structure-ref
                     _ctx19888_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19896_ (string-rindex _mod-str19894_ '#\/)))
                (if _$e19896_
                    ((lambda (_ix19899_)
                       (substring
                        _mod-str19894_
                        (fx+ _ix19899_ '1)
                        (string-length _mod-str19894_)))
                     _$e19896_)
                    _mod-str19894_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19884_)
      (if (string? _idstr19884_)
          (let ((_strs19886_ (string-split _idstr19884_ '#\/)))
            (string-join _strs19886_ '"__"))
          (if (symbol? _idstr19884_)
              (gxc#static-module-name (symbol->string _idstr19884_))
              (error '"Bad module id" _idstr19884_))))))
