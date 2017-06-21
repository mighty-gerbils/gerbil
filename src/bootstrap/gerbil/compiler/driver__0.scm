(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20320
      (lambda (_srcpath20322_ _opts20323_)
        (begin
          (if (string? _srcpath20322_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20322_))
          (let ((_outdir20325_ (pgetq 'output-dir: _opts20323_))
                (_invoke-gsc?20326_ (pgetq 'invoke-gsc: _opts20323_))
                (_gsc-options20327_ (pgetq 'gsc-options: _opts20323_))
                (_keep-scm?20328_ (pgetq 'keep-scm: _opts20323_))
                (_verbosity20329_ (pgetq 'verbose: _opts20323_))
                (_optimize20330_ (pgetq 'optimize: _opts20323_))
                (_gen-ssxi20331_ (pgetq 'generate-ssxi: _opts20323_))
                (_static20332_ (pgetq 'static: _opts20323_)))
            (begin
              (if _outdir20325_ (create-directory* _outdir20325_) '#!void)
              (if _optimize20330_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20322_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20322_))))
               gxc#current-compile-output-dir
               _outdir20325_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20326_
               gxc#current-compile-gsc-options
               _gsc-options20327_
               gxc#current-compile-keep-scm
               _keep-scm?20328_
               gxc#current-compile-verbose
               _verbosity20329_
               gxc#current-compile-optimize
               _optimize20330_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20331_
               gxc#current-compile-static
               _static20332_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20338_)
          (let ((_opts20340_ '()))
            (gxc#compile-file__opt-lambda20320 _srcpath20338_ _opts20340_))))
      (define gxc#compile-file
        (lambda _g20348_
          (let ((_g20347_ (length _g20348_)))
            (cond ((fx= _g20347_ 1) (apply gxc#compile-file__0 _g20348_))
                  ((fx= _g20347_ 2)
                   (apply gxc#compile-file__opt-lambda20320 _g20348_))
                  (else (error "No clause matching arguments" _g20348_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20306
      (lambda (_srcpath20308_ _opts20309_)
        (gxc#do-compile-exe
         _srcpath20308_
         _opts20309_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20314_)
          (let ((_opts20316_ '()))
            (gxc#compile-exe-stub__opt-lambda20306
             _srcpath20314_
             _opts20316_))))
      (define gxc#compile-exe-stub
        (lambda _g20350_
          (let ((_g20349_ (length _g20350_)))
            (cond ((fx= _g20349_ 1) (apply gxc#compile-exe-stub__0 _g20350_))
                  ((fx= _g20349_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20306 _g20350_))
                  (else (error "No clause matching arguments" _g20350_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20292
      (lambda (_srcpath20294_ _opts20295_)
        (gxc#do-compile-exe
         _srcpath20294_
         _opts20295_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20300_)
          (let ((_opts20302_ '()))
            (gxc#compile-static-exe__opt-lambda20292
             _srcpath20300_
             _opts20302_))))
      (define gxc#compile-static-exe
        (lambda _g20352_
          (let ((_g20351_ (length _g20352_)))
            (cond ((fx= _g20351_ 1) (apply gxc#compile-static-exe__0 _g20352_))
                  ((fx= _g20351_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20292 _g20352_))
                  (else (error "No clause matching arguments" _g20352_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20282_ _opts20283_ _compile-e20284_)
      (begin
        (if (string? _srcpath20282_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20282_))
        (let ((_outdir20286_ (pgetq 'output-dir: _opts20283_))
              (_invoke-gsc?20287_ (pgetq 'invoke-gsc: _opts20283_))
              (_gsc-options20288_ (pgetq 'gsc-options: _opts20283_))
              (_keep-scm?20289_ (pgetq 'keep-scm: _opts20283_))
              (_verbosity20290_ (pgetq 'verbose: _opts20283_)))
          (begin
            (if _outdir20286_ (create-directory* _outdir20286_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20282_)
                 (_compile-e20284_
                  (gx#import-module__0 _srcpath20282_)
                  _opts20283_)))
             gxc#current-compile-output-dir
             _outdir20286_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20287_
             gxc#current-compile-gsc-options
             _gsc-options20288_
             gxc#current-compile-keep-scm
             _keep-scm?20289_
             gxc#current-compile-verbose
             _verbosity20290_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20250_ _opts20251_)
      (let ((_generate-stub20253_
             (lambda ()
               (let ((_mod-str20275_
                      (symbol->string
                       (##structure-ref
                        _ctx20250_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20277_ (string-append _mod-str20275_ '"__rt")))
                   (let ((_mod-main20279_
                          (gxc#find-runtime-symbol _ctx20250_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20277_
                                            (cons (cons 'quote
                                                        (cons _mod-main20279_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20254_
               (lambda (_output-scm20261_ _output-bin20262_)
                 (let ((_init-stub20264_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args20266_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin20262_
                                            (cons _init-stub20264_
                                                  (cons _output-scm20261_
                                                        '())))))))
                     (let ((_g20353_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args20266_))))
                       (let ((_proc20269_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args20266_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status20271_ (process-status _proc20269_)))
                           (let ()
                             (if (zero? _status20271_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm20261_
                                  _output-bin20262_
                                  _status20271_)))))))))))
          (let ((_output-bin20256_
                 (gxc#compile-exe-output-file _ctx20250_ _opts20251_)))
            (let ((_output-scm20258_
                   (string-append _output-bin20256_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20258_ _generate-stub20253_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20254_ _output-scm20258_ _output-bin20256_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20258_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx20199_ _opts20200_)
      (let ((_generate-stub20202_
             (lambda ()
               (let ((_mod-main20248_
                      (gxc#find-runtime-symbol _ctx20199_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20248_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub20203_
               (lambda (_output-scm20210_ _output-bin20211_)
                 (let ((_gerbil-home20213_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020215_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20213_)))
                     (let ((_gx-gambc-init20217_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20213_)))
                       (let ((_gx-gambc-macros20219_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20213_)))
                         (let ((_include-gx-gambc-macros20221_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20219_
                                 '"\")")))
                           (let ((_bin-scm20223_
                                  (gxc#find-static-module-file _ctx20199_)))
                             (let ((_deps20225_
                                    (gxc#find-runtime-module-deps _ctx20199_)))
                               (let ((_deps20227_
                                      (map gxc#find-static-module-file
                                           _deps20225_)))
                                 (let ((_deps20232_
                                        (filter (lambda (_$obj20229_)
                                                  (not (gxc#file-empty?
                                                        _$obj20229_)))
                                                _deps20227_)))
                                   (let ((_gsc-opts20237_
                                          (let ((_$e20234_
                                                 (pgetq 'gsc-options:
                                                        _opts20200_)))
                                            (if _$e20234_ _$e20234_ '()))))
                                     (let ((_gsc-args20239_
                                            (cons '"-exe"
                                                  (cons '"-o"
                                                        (cons _output-bin20211_
                                                              (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros20221_
                                          (cons _gx-gambc020215_
                                                (cons _gx-gambc-init20217_
                                                      (foldr1 cons
                                                              (cons _bin-scm20223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm20210_ '()))
                      _deps20232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _gsc-opts20237_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_g20354_
                                              (gxc#verbose
                                               '"invoke gsc "
                                               (cons 'gsc _gsc-args20239_))))
                                         (let ((_proc20242_
                                                (open-process
                                                 (cons 'path:
                                                       (cons '"gsc"
                                                             (cons 'arguments:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _gsc-args20239_
                                 (cons 'stdout-redirection:
                                       (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_status20244_
                                                  (process-status
                                                   _proc20242_)))
                                             (let ()
                                               (if (zero? _status20244_)
                                                   '#!void
                                                   (gxc#raise-compile-error
                                                    '"Compilation error; gsc exit with nonzero status"
                                                    _output-scm20210_
                                                    _output-bin20211_
                                                    _status20244_))))))))))))))))))))
          (let ((_output-bin20205_
                 (gxc#compile-exe-output-file _ctx20199_ _opts20200_)))
            (let ((_output-scm20207_
                   (string-append _output-bin20205_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20207_ _generate-stub20202_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20203_ _output-scm20207_ _output-bin20205_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20207_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx20149_ _id20150_)
      (let ((_$e20196_
             (find (lambda (_e2015120153_)
                     (let ((_g2015520165_ _e2015120153_))
                       (let ((_E2015820169_
                              (lambda ()
                                (error '"No clause matching" _g2015520165_))))
                         (let ((_else2015720173_ (lambda () '#f)))
                           (let ((_K2015920177_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g2015520165_
                                  (##type-id gx#module-export::t))
                                 (let ((_e2016020180_
                                        (##vector-ref _g2015520165_ '1)))
                                   (let ((_e2016120183_
                                          (##vector-ref _g2015520165_ '2)))
                                     (let ((_e2016220186_
                                            (##vector-ref _g2015520165_ '3)))
                                       (if (##eq? _e2016220186_ '0)
                                           (let ((_e2016320189_
                                                  (##vector-ref
                                                   _g2015520165_
                                                   '4)))
                                             (if ((lambda (_g2019120193_)
                                                    (eq? _g2019120193_
                                                         _id20150_))
                                                  _e2016320189_)
                                                 (_K2015920177_)
                                                 (_else2015720173_)))
                                           (_else2015720173_)))))
                                 (_else2015720173_)))))))
                   (##structure-ref _ctx20149_ '9 gx#module-context::t '#f))))
        (if _$e20196_ (gx#core-resolve-module-export _$e20196_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx20141_ _id20142_)
      (let ((_$e20144_ (gxc#find-export-binding _ctx20141_ _id20142_)))
        (if _$e20144_
            ((lambda (_bind20147_)
               (begin
                 (if (##structure-instance-of?
                      _bind20147_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id20142_))
                 (##structure-ref _bind20147_ '1 gx#binding::t '#f)))
             _$e20144_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx20141_ '1 gx#expander-context::t '#f)
             _id20142_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx20079_)
      (let ((_ht20081_ (make-hash-table-eq)))
        (letrec ((_find-deps20082_
                  (lambda (_rest20089_ _deps20090_)
                    (let ((_rest2009120099_ _rest20089_))
                      (let ((_E2009420103_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest2009120099_))))
                        (let ((_else2009320107_ (lambda () _deps20090_)))
                          (let ((_K2009520129_
                                 (lambda (_rest20110_ _hd20111_)
                                   (if (##structure-instance-of?
                                        _hd20111_
                                        'gx#module-context::t)
                                       (let ((_id20113_
                                              (##structure-ref
                                               _hd20111_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports20114_
                                              (##structure-ref
                                               _hd20111_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht20081_
                                              _id20113_
                                              '#f)
                                             (_find-deps20082_
                                              _rest20110_
                                              _deps20090_)
                                             (let ((_$e20116_
                                                    (gx#core-context-prelude__opt-lambda11357
                                                     _hd20111_)))
                                               (if _$e20116_
                                                   ((lambda (_pre20119_)
                                                      (let ((_xdeps20121_
                                                             (_find-deps20082_
                                                              (cons _pre20119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports20114_)
                      _deps20090_)))
                (begin
                  (table-set! _ht20081_ _id20113_ _hd20111_)
                  (_find-deps20082_
                   _rest20110_
                   (cons _hd20111_ _xdeps20121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e20116_)
                                                   (let ((_xdeps20123_
                                                          (_find-deps20082_
                                                           _imports20114_
                                                           _deps20090_)))
                                                     (begin
                                                       (table-set!
                                                        _ht20081_
                                                        _id20113_
                                                        _hd20111_)
                                                       (_find-deps20082_
                                                        _rest20110_
                                                        (cons _hd20111_
                                                              _xdeps20123_))))))))
                                       (if (##structure-instance-of?
                                            _hd20111_
                                            'gx#prelude-context::t)
                                           (let ((_id20125_
                                                  (##structure-ref
                                                   _hd20111_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht20081_
                                                  _id20125_
                                                  '#f)
                                                 (_find-deps20082_
                                                  _rest20110_
                                                  _deps20090_)
                                                 (let ((_xdeps20127_
                                                        (_find-deps20082_
                                                         (##structure-ref
                                                          _hd20111_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps20090_)))
                                                   (if (table-ref
                                                        _ht20081_
                                                        _id20125_
                                                        '#f)
                                                       (_find-deps20082_
                                                        _rest20110_
                                                        _xdeps20127_)
                                                       (begin
                                                         (table-set!
                                                          _ht20081_
                                                          _id20125_
                                                          _hd20111_)
                                                         (_find-deps20082_
                                                          _rest20110_
                                                          (cons _hd20111_
                                                                _xdeps20127_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd20111_
                                                'gx#module-import::t)
                                               (if (fxzero? (##direct-structure-ref
                                                             _hd20111_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps20082_
                                                    (cons (##direct-structure-ref
                                                           _hd20111_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest20110_)
                                                    _deps20090_)
                                                   (_find-deps20082_
                                                    _rest20110_
                                                    _deps20090_))
                                               (if (##structure-direct-instance-of?
                                                    _hd20111_
                                                    'gx#module-export::t)
                                                   (_find-deps20082_
                                                    (cons (##direct-structure-ref
                                                           _hd20111_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest20110_)
                                                    _deps20090_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd20111_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd20111_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps20082_
                    (cons (##direct-structure-ref
                           _hd20111_
                           '1
                           gx#import-set::t
                           '#f)
                          _rest20110_)
                    _deps20090_)
                   (_find-deps20082_ _rest20110_ _deps20090_))
               (error '"Unexpected module import" _hd20111_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest2009120099_)
                                (let ((_hd2009620132_ (##car _rest2009120099_))
                                      (_tl2009720134_
                                       (##cdr _rest2009120099_)))
                                  (let ((_hd20137_ _hd2009620132_))
                                    (let ((_rest20139_ _tl2009720134_))
                                      (_K2009520129_ _rest20139_ _hd20137_))))
                                (_else2009320107_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps20082_
                            (let ((_$e20084_
                                   (gx#core-context-prelude__opt-lambda11357
                                    _ctx20079_)))
                              (if _$e20084_
                                  ((lambda (_pre20087_)
                                     (cons _pre20087_
                                           (##structure-ref
                                            _ctx20079_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e20084_)
                                  (##structure-ref
                                   _ctx20079_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20018_)
      (let ((_scm20020_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx20018_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs20022_ (gx#current-expander-module-library-path)))
          (let ((_dirs20031_
                 (let ((_$e20024_ (gxc#current-compile-output-dir)))
                   (if _$e20024_
                       ((lambda (_g2002620028_)
                          (cons _g2002620028_ _dirs20022_))
                        _$e20024_)
                       _dirs20022_))))
            (let ((_dirs20037_
                   (map (lambda (_g2003220034_)
                          (path-expand '"static" _g2003220034_))
                        _dirs20031_)))
              (let ()
                ((letrec ((_lp20040_
                           (lambda (_rest20042_)
                             (let ((_rest2004320051_ _rest20042_))
                               (let ((_E2004620055_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest2004320051_))))
                                 (let ((_else2004520059_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx20018_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm20020_))))
                                   (let ((_K2004720067_
                                          (lambda (_rest20062_ _dir20063_)
                                            (let ((_path20065_
                                                   (path-expand
                                                    _scm20020_
                                                    _dir20063_)))
                                              (if (file-exists? _path20065_)
                                                  _path20065_
                                                  (_lp20040_ _rest20062_))))))
                                     (if (##pair? _rest2004320051_)
                                         (let ((_hd2004820070_
                                                (##car _rest2004320051_))
                                               (_tl2004920072_
                                                (##cdr _rest2004320051_)))
                                           (let ((_dir20075_ _hd2004820070_))
                                             (let ((_rest20077_
                                                    _tl2004920072_))
                                               (_K2004720067_
                                                _rest20077_
                                                _dir20075_))))
                                         (_else2004520059_)))))))))
                   _lp20040_)
                 _dirs20037_))))))))
  (define gxc#file-empty?
    (lambda (_path20016_)
      (zero? (file-info-size (file-info _path20016_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20013_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20013_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20013_)
               '#!void)
           (gxc#collect-bindings _ctx20013_)
           (gxc#compile-runtime-code _ctx20013_)
           (gxc#compile-meta-code _ctx20013_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20013_)
               '#!void)))
       gx#current-expander-context
       _ctx20013_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20345 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20345) __obj20345))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx20011_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20011_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19970_)
      (let ((_generate-runtime-code19973_
             (lambda (_ctx19988_ _code19989_)
               (let ((_runtime-code19992_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19989_))
                       gx#current-expander-context
                       _ctx19988_)))
                 (let ((_scm019994_
                        (gxc#compile-output-file _ctx19988_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms19997_
                                (gxc#compile-static-output-file _ctx19988_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm019994_
                                 _runtime-code19992_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms19997_)
                                 (delete-file _scms19997_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm019994_
                              '" => "
                              _scms19997_)
                             (copy-file _scm019994_ _scms19997_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm019994_))))
                         (gxc#compile-scm-file
                          _scm019994_
                          _runtime-code19992_))))))))
        (let ((_generate-loader-code19974_
               (lambda (_ctx19978_ _code19979_ _rt19980_)
                 (let ((_loader-code19983_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19979_))
                         gx#current-expander-context
                         _ctx19978_)))
                   (let ((_loader-code19985_
                          (if _rt19980_
                              (cons 'begin
                                    (cons _loader-code19983_
                                          (cons (cons 'load-module
                                                      (cons _rt19980_ '()))
                                                '())))
                              _loader-code19983_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19978_ 'rt '".scm")
                        _loader-code19985_)))))))
          (let ((_compile119972_
                 (lambda (_ctx20000_)
                   (let ((_code20002_
                          (##structure-ref
                           _ctx20000_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt20006_
                            (if (gxc#apply-find-runtime-code _code20002_)
                                (let ((_idstr20004_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx20000_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr20004_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt20006_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx20000_
                                  _rt20006_)
                                 (_generate-runtime-code19973_
                                  _ctx20000_
                                  _code20002_))
                               (if (gxc#current-compile-static)
                                   (let ((_path20009_
                                          (gxc#compile-static-output-file
                                           _ctx20000_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path20009_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code19974_
                            _ctx20000_
                            _code20002_
                            _rt20006_))))))))
            (let ((_all-modules19976_
                   (cons _ctx19970_ (gxc#lift-nested-modules _ctx19970_))))
              (for-each _compile119972_ _all-modules19976_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19872_)
      (let ((_compile-ssi19874_
             (lambda (_code19940_)
               (let ((_path19942_
                      (gxc#compile-output-file _ctx19872_ '#f '".ssi")))
                 (let ((_prelude19953_
                        (let ((_super19944_
                               (##structure-ref
                                _ctx19872_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19946_
                                 (##structure-ref
                                  _super19944_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19946_
                                ((lambda (_g1994819950_)
                                   (make-symbol '":" _g1994819950_))
                                 _$e19946_)
                                ':<root>)))))
                   (let ((_ns19955_
                          (##structure-ref
                           _ctx19872_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19957_
                            (symbol->string
                             (##structure-ref
                              _ctx19872_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19964_
                              (let ((_$e19959_
                                     (string-rindex _idstr19957_ '#\/)))
                                (if _$e19959_
                                    ((lambda (_x19962_)
                                       (string->symbol
                                        (substring _idstr19957_ '0 _x19962_)))
                                     _$e19959_)
                                    '#f))))
                         (let ((_rt19966_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19872_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19942_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19942_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19953_)
                                    (if _pkg19964_
                                        (displayln '"package:" '" " _pkg19964_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19955_)
                                    (newline)
                                    (pretty-print _code19940_)
                                    (if _rt19966_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19966_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19875_
               (lambda (_part19880_)
                 (let ((_part1988119894_ _part19880_))
                   (let ((_E1988319898_
                          (lambda ()
                            (error '"No clause matching" _part1988119894_))))
                     (let ((_K1988419909_
                            (lambda (_code19901_
                                     _n19902_
                                     _phi19903_
                                     _phi-ctx19904_)
                              (let ((_code19907_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19901_))
                                      gx#current-expander-context
                                      _phi-ctx19904_
                                      gx#current-expander-phi
                                      _phi19903_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19872_
                                  _n19902_
                                  '".scm")
                                 _code19907_)))))
                       (if (##pair? _part1988119894_)
                           (let ((_hd1988519912_ (##car _part1988119894_))
                                 (_tl1988619914_ (##cdr _part1988119894_)))
                             (let ((_phi-ctx19917_ _hd1988519912_))
                               (if (##pair? _tl1988619914_)
                                   (let ((_hd1988719919_
                                          (##car _tl1988619914_))
                                         (_tl1988819921_
                                          (##cdr _tl1988619914_)))
                                     (let ((_phi19924_ _hd1988719919_))
                                       (if (##pair? _tl1988819921_)
                                           (let ((_hd1988919926_
                                                  (##car _tl1988819921_))
                                                 (_tl1989019928_
                                                  (##cdr _tl1988819921_)))
                                             (let ((_n19931_ _hd1988919926_))
                                               (if (##pair? _tl1989019928_)
                                                   (let ((_hd1989119933_
                                                          (##car _tl1989019928_))
                                                         (_tl1989219935_
                                                          (##cdr _tl1989019928_)))
                                                     (let ((_code19938_
                                                            _hd1989119933_))
                                                       (if (##null? _tl1989219935_)
                                                           (_K1988419909_
                                                            _code19938_
                                                            _n19931_
                                                            _phi19924_
                                                            _phi-ctx19917_)
                                                           (_E1988319898_))))
                                                   (_E1988319898_))))
                                           (_E1988319898_))))
                                   (_E1988319898_))))
                           (_E1988319898_))))))))
          (let ((_g20355_ (gxc#generate-meta-code _ctx19872_)))
            (begin
              (let ((_g20356_ (values-count _g20355_)))
                (if (not (fx= _g20356_ 2))
                    (error "Context expects 2 values" _g20356_)))
              (let ((_ssi-code19877_ (values-ref _g20355_ 0))
                    (_phi-code19878_ (values-ref _g20355_ 1)))
                (begin
                  (_compile-ssi19874_ _ssi-code19877_)
                  (for-each _compile-phi19875_ _phi-code19878_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19855_)
      (let ((_path19857_ (gxc#compile-output-file _ctx19855_ '#f '".ssxi.ss")))
        (let ((_code19859_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19855_ '11 gx#module-context::t '#f))))
          (let ((_idstr19861_
                 (symbol->string
                  (##structure-ref _ctx19855_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19868_
                   (let ((_$e19863_ (string-rindex _idstr19861_ '#\/)))
                     (if _$e19863_
                         ((lambda (_x19866_)
                            (string->symbol
                             (substring _idstr19861_ '0 _x19866_)))
                          _$e19863_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19857_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19857_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19868_
                           (displayln '"package: " _pkg19868_)
                           '#!void)
                       (newline)
                       (pretty-print _code19859_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19848_)
      (let ((_state19850_
             (let ((__obj20346 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20346 _ctx19848_)
                 __obj20346))))
        (let ((_ssi-code19852_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19848_ '11 gx#module-context::t '#f)
                _state19850_)))
          (let ()
            (values _ssi-code19852_ (gxc#meta-state-end! _state19850_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19841_)
      (let ((_lifts19843_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19846_ (gxc#apply-generate-runtime-phi _stx19841_)))
             (if (null? (unbox _lifts19843_))
                 _code19846_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19846_ '())
                               (reverse (unbox _lifts19843_)))))))
         gxc#current-compile-lift
         _lifts19843_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19837_)
      (let ((_modules19839_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19837_ '11 gx#module-context::t '#f)
           _modules19839_)
          (reverse (unbox _modules19839_))))))
  (define gxc#compile-scm-file
    (lambda (_path19833_ _code19834_)
      (begin
        (gxc#verbose '"compile " _path19833_)
        (with-output-to-file
         (cons 'path: (cons _path19833_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19834_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19833_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19833_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19819_)
      (let ((_gsc-args19826_
             (let ((_$e19821_ (gxc#current-compile-gsc-options)))
               (if _$e19821_
                   ((lambda (_opts19824_)
                      (foldr1 cons (cons _path19819_ '()) _opts19824_))
                    _$e19821_)
                   (cons _path19819_ '())))))
        (let ((_proc19828_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19826_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19830_ (process-status _proc19828_)))
            (let ()
              (if (zero? _status19830_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19819_
                   _status19830_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19791_ _n19792_ _ext19793_)
      (let ((_module-relative-path19795_
             (lambda (_ctx19817_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19817_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19796_
               (lambda (_ctx19813_)
                 (path-directory
                  (let ((_mpath19815_
                         (##structure-ref
                          _ctx19813_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19815_)
                        _mpath19815_
                        (last _mpath19815_)))))))
          (let ((_section-string19797_
                 (lambda (_n19811_)
                   (if (number? _n19811_)
                       (number->string _n19811_)
                       (if (symbol? _n19811_)
                           (symbol->string _n19811_)
                           (if (string? _n19811_)
                               _n19811_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19811_)))))))
            (let ((_file-name19798_
                   (lambda (_path19809_)
                     (if _n19792_
                         (string-append
                          _path19809_
                          '"__"
                          (_section-string19797_ _n19792_)
                          _ext19793_)
                         (string-append _path19809_ _ext19793_)))))
              (let ((_file-path19799_
                     (lambda ()
                       (let ((_$e19804_ (gxc#current-compile-output-dir)))
                         (if _$e19804_
                             ((lambda (_outdir19807_)
                                (path-expand
                                 (_file-name19798_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19791_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19807_))
                              _$e19804_)
                             (path-expand
                              (_file-name19798_
                               (_module-relative-path19795_ _ctx19791_))
                              (_module-source-directory19796_ _ctx19791_)))))))
                (let ((_path19801_ (_file-path19799_)))
                  (begin
                    (create-directory* (path-directory _path19801_))
                    _path19801_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19774_)
      (let ((_file-name19776_
             (lambda (_idstr19789_)
               (string-append (gxc#static-module-name _idstr19789_) '".scm"))))
        (let ((_file-path19777_
               (lambda ()
                 (let ((_file19782_
                        (_file-name19776_
                         (symbol->string
                          (##structure-ref
                           _ctx19774_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19784_ (gxc#current-compile-output-dir)))
                     (if _$e19784_
                         ((lambda (_outdir19787_)
                            (path-expand
                             _file19782_
                             (path-expand '"static" _outdir19787_)))
                          _$e19784_)
                         (path-expand _file19782_ '"static")))))))
          (let ((_path19779_ (_file-path19777_)))
            (begin
              (create-directory* (path-directory _path19779_))
              _path19779_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19761_ _opts19762_)
      (let ((_$e19764_ (pgetq 'output-file: _opts19762_)))
        (if _$e19764_
            (values _$e19764_)
            (let ((_mod-str19767_
                   (symbol->string
                    (##structure-ref
                     _ctx19761_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19769_ (string-rindex _mod-str19767_ '#\/)))
                (if _$e19769_
                    ((lambda (_ix19772_)
                       (substring
                        _mod-str19767_
                        (fx+ _ix19772_ '1)
                        (string-length _mod-str19767_)))
                     _$e19769_)
                    _mod-str19767_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19757_)
      (if (string? _idstr19757_)
          (let ((_strs19759_ (string-split _idstr19757_ '#\/)))
            (string-join _strs19759_ '"__"))
          (if (symbol? _idstr19757_)
              (gxc#static-module-name (symbol->string _idstr19757_))
              (error '"Bad module id" _idstr19757_))))))
