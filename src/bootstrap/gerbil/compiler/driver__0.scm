(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20326
      (lambda (_srcpath20328_ _opts20329_)
        (begin
          (if (string? _srcpath20328_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20328_))
          (let ((_outdir20331_ (pgetq 'output-dir: _opts20329_))
                (_invoke-gsc?20332_ (pgetq 'invoke-gsc: _opts20329_))
                (_gsc-options20333_ (pgetq 'gsc-options: _opts20329_))
                (_keep-scm?20334_ (pgetq 'keep-scm: _opts20329_))
                (_verbosity20335_ (pgetq 'verbose: _opts20329_))
                (_optimize20336_ (pgetq 'optimize: _opts20329_))
                (_gen-ssxi20337_ (pgetq 'generate-ssxi: _opts20329_))
                (_static20338_ (pgetq 'static: _opts20329_)))
            (begin
              (if _outdir20331_ (create-directory* _outdir20331_) '#!void)
              (if _optimize20336_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20328_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20328_))))
               gxc#current-compile-output-dir
               _outdir20331_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20332_
               gxc#current-compile-gsc-options
               _gsc-options20333_
               gxc#current-compile-keep-scm
               _keep-scm?20334_
               gxc#current-compile-verbose
               _verbosity20335_
               gxc#current-compile-optimize
               _optimize20336_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20337_
               gxc#current-compile-static
               _static20338_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20344_)
          (let ((_opts20346_ '()))
            (gxc#compile-file__opt-lambda20326 _srcpath20344_ _opts20346_))))
      (define gxc#compile-file
        (lambda _g20354_
          (let ((_g20353_ (length _g20354_)))
            (cond ((fx= _g20353_ 1) (apply gxc#compile-file__0 _g20354_))
                  ((fx= _g20353_ 2)
                   (apply gxc#compile-file__opt-lambda20326 _g20354_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g20354_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20312
      (lambda (_srcpath20314_ _opts20315_)
        (gxc#do-compile-exe
         _srcpath20314_
         _opts20315_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20320_)
          (let ((_opts20322_ '()))
            (gxc#compile-exe-stub__opt-lambda20312
             _srcpath20320_
             _opts20322_))))
      (define gxc#compile-exe-stub
        (lambda _g20356_
          (let ((_g20355_ (length _g20356_)))
            (cond ((fx= _g20355_ 1) (apply gxc#compile-exe-stub__0 _g20356_))
                  ((fx= _g20355_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20312 _g20356_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g20356_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20298
      (lambda (_srcpath20300_ _opts20301_)
        (gxc#do-compile-exe
         _srcpath20300_
         _opts20301_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20306_)
          (let ((_opts20308_ '()))
            (gxc#compile-static-exe__opt-lambda20298
             _srcpath20306_
             _opts20308_))))
      (define gxc#compile-static-exe
        (lambda _g20358_
          (let ((_g20357_ (length _g20358_)))
            (cond ((fx= _g20357_ 1) (apply gxc#compile-static-exe__0 _g20358_))
                  ((fx= _g20357_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20298 _g20358_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g20358_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20288_ _opts20289_ _compile-e20290_)
      (begin
        (if (string? _srcpath20288_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20288_))
        (let ((_outdir20292_ (pgetq 'output-dir: _opts20289_))
              (_invoke-gsc?20293_ (pgetq 'invoke-gsc: _opts20289_))
              (_gsc-options20294_ (pgetq 'gsc-options: _opts20289_))
              (_keep-scm?20295_ (pgetq 'keep-scm: _opts20289_))
              (_verbosity20296_ (pgetq 'verbose: _opts20289_)))
          (begin
            (if _outdir20292_ (create-directory* _outdir20292_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20288_)
                 (_compile-e20290_
                  (gx#import-module__0 _srcpath20288_)
                  _opts20289_)))
             gxc#current-compile-output-dir
             _outdir20292_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20293_
             gxc#current-compile-gsc-options
             _gsc-options20294_
             gxc#current-compile-keep-scm
             _keep-scm?20295_
             gxc#current-compile-verbose
             _verbosity20296_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20256_ _opts20257_)
      (let ((_generate-stub20259_
             (lambda ()
               (let ((_mod-str20281_
                      (symbol->string
                       (##structure-ref
                        _ctx20256_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20283_ (string-append _mod-str20281_ '"__rt")))
                   (let ((_mod-main20285_
                          (gxc#find-runtime-symbol _ctx20256_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20283_
                                            (cons (cons 'quote
                                                        (cons _mod-main20285_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20260_
               (lambda (_output-scm20267_ _output-bin20268_)
                 (let ((_init-stub20270_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args20272_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin20268_
                                            (cons _init-stub20270_
                                                  (cons _output-scm20267_
                                                        '())))))))
                     (let ((_g20359_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args20272_))))
                       (let ((_proc20275_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args20272_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status20277_ (process-status _proc20275_)))
                           (let ()
                             (if (zero? _status20277_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm20267_
                                  _output-bin20268_
                                  _status20277_)))))))))))
          (let ((_output-bin20262_
                 (gxc#compile-exe-output-file _ctx20256_ _opts20257_)))
            (let ((_output-scm20264_
                   (string-append _output-bin20262_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20264_ _generate-stub20259_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20260_ _output-scm20264_ _output-bin20262_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20264_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx20205_ _opts20206_)
      (let ((_generate-stub20208_
             (lambda ()
               (let ((_mod-main20254_
                      (gxc#find-runtime-symbol _ctx20205_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20254_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub20209_
               (lambda (_output-scm20216_ _output-bin20217_)
                 (let ((_gerbil-home20219_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020221_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20219_)))
                     (let ((_gx-gambc-init20223_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20219_)))
                       (let ((_gx-gambc-macros20225_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20219_)))
                         (let ((_include-gx-gambc-macros20227_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20225_
                                 '"\")")))
                           (let ((_bin-scm20229_
                                  (gxc#find-static-module-file _ctx20205_)))
                             (let ((_deps20231_
                                    (gxc#find-runtime-module-deps _ctx20205_)))
                               (let ((_deps20233_
                                      (map gxc#find-static-module-file
                                           _deps20231_)))
                                 (let ((_deps20238_
                                        (filter (lambda (_$obj20235_)
                                                  (not (gxc#file-empty?
                                                        _$obj20235_)))
                                                _deps20233_)))
                                   (let ((_gsc-opts20243_
                                          (let ((_$e20240_
                                                 (pgetq 'gsc-options:
                                                        _opts20206_)))
                                            (if _$e20240_ _$e20240_ '()))))
                                     (let ((_gsc-args20245_
                                            (cons '"-exe"
                                                  (cons '"-o"
                                                        (cons _output-bin20217_
                                                              (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros20227_
                                          (cons _gx-gambc020221_
                                                (cons _gx-gambc-init20223_
                                                      (foldr1 cons
                                                              (cons _bin-scm20229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm20216_ '()))
                      _deps20238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _gsc-opts20243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_g20360_
                                              (gxc#verbose
                                               '"invoke gsc "
                                               (cons 'gsc _gsc-args20245_))))
                                         (let ((_proc20248_
                                                (open-process
                                                 (cons 'path:
                                                       (cons '"gsc"
                                                             (cons 'arguments:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _gsc-args20245_
                                 (cons 'stdout-redirection:
                                       (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_status20250_
                                                  (process-status
                                                   _proc20248_)))
                                             (let ()
                                               (if (zero? _status20250_)
                                                   '#!void
                                                   (gxc#raise-compile-error
                                                    '"Compilation error; gsc exit with nonzero status"
                                                    _output-scm20216_
                                                    _output-bin20217_
                                                    _status20250_))))))))))))))))))))
          (let ((_output-bin20211_
                 (gxc#compile-exe-output-file _ctx20205_ _opts20206_)))
            (let ((_output-scm20213_
                   (string-append _output-bin20211_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20213_ _generate-stub20208_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20209_ _output-scm20213_ _output-bin20211_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20213_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx20155_ _id20156_)
      (let ((_$e20202_
             (find (lambda (_e2015720159_)
                     (let ((_g2016120171_ _e2015720159_))
                       (let ((_E2016420175_
                              (lambda ()
                                (error '"No clause matching" _g2016120171_))))
                         (let ((_else2016320179_ (lambda () '#f)))
                           (let ((_K2016520183_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g2016120171_
                                  (##type-id gx#module-export::t))
                                 (let ((_e2016620186_
                                        (##vector-ref _g2016120171_ '1)))
                                   (let ((_e2016720189_
                                          (##vector-ref _g2016120171_ '2)))
                                     (let ((_e2016820192_
                                            (##vector-ref _g2016120171_ '3)))
                                       (if (##eq? _e2016820192_ '0)
                                           (let ((_e2016920195_
                                                  (##vector-ref
                                                   _g2016120171_
                                                   '4)))
                                             (if ((lambda (_g2019720199_)
                                                    (eq? _g2019720199_
                                                         _id20156_))
                                                  _e2016920195_)
                                                 (_K2016520183_)
                                                 (_else2016320179_)))
                                           (_else2016320179_)))))
                                 (_else2016320179_)))))))
                   (##structure-ref _ctx20155_ '9 gx#module-context::t '#f))))
        (if _$e20202_ (gx#core-resolve-module-export _$e20202_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx20147_ _id20148_)
      (let ((_$e20150_ (gxc#find-export-binding _ctx20147_ _id20148_)))
        (if _$e20150_
            ((lambda (_bind20153_)
               (begin
                 (if (##structure-instance-of?
                      _bind20153_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id20148_))
                 (##structure-ref _bind20153_ '1 gx#binding::t '#f)))
             _$e20150_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx20147_ '1 gx#expander-context::t '#f)
             _id20148_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx20085_)
      (let ((_ht20087_ (make-hash-table-eq)))
        (letrec ((_find-deps20088_
                  (lambda (_rest20095_ _deps20096_)
                    (let ((_rest2009720105_ _rest20095_))
                      (let ((_E2010020109_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest2009720105_))))
                        (let ((_else2009920113_ (lambda () _deps20096_)))
                          (let ((_K2010120135_
                                 (lambda (_rest20116_ _hd20117_)
                                   (if (##structure-instance-of?
                                        _hd20117_
                                        'gx#module-context::t)
                                       (let ((_id20119_
                                              (##structure-ref
                                               _hd20117_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports20120_
                                              (##structure-ref
                                               _hd20117_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht20087_
                                              _id20119_
                                              '#f)
                                             (_find-deps20088_
                                              _rest20116_
                                              _deps20096_)
                                             (let ((_$e20122_
                                                    (gx#core-context-prelude__opt-lambda11357
                                                     _hd20117_)))
                                               (if _$e20122_
                                                   ((lambda (_pre20125_)
                                                      (let ((_xdeps20127_
                                                             (_find-deps20088_
                                                              (cons _pre20125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports20120_)
                      _deps20096_)))
                (begin
                  (table-set! _ht20087_ _id20119_ _hd20117_)
                  (_find-deps20088_
                   _rest20116_
                   (cons _hd20117_ _xdeps20127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e20122_)
                                                   (let ((_xdeps20129_
                                                          (_find-deps20088_
                                                           _imports20120_
                                                           _deps20096_)))
                                                     (begin
                                                       (table-set!
                                                        _ht20087_
                                                        _id20119_
                                                        _hd20117_)
                                                       (_find-deps20088_
                                                        _rest20116_
                                                        (cons _hd20117_
                                                              _xdeps20129_))))))))
                                       (if (##structure-instance-of?
                                            _hd20117_
                                            'gx#prelude-context::t)
                                           (let ((_id20131_
                                                  (##structure-ref
                                                   _hd20117_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht20087_
                                                  _id20131_
                                                  '#f)
                                                 (_find-deps20088_
                                                  _rest20116_
                                                  _deps20096_)
                                                 (let ((_xdeps20133_
                                                        (_find-deps20088_
                                                         (##structure-ref
                                                          _hd20117_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps20096_)))
                                                   (if (table-ref
                                                        _ht20087_
                                                        _id20131_
                                                        '#f)
                                                       (_find-deps20088_
                                                        _rest20116_
                                                        _xdeps20133_)
                                                       (begin
                                                         (table-set!
                                                          _ht20087_
                                                          _id20131_
                                                          _hd20117_)
                                                         (_find-deps20088_
                                                          _rest20116_
                                                          (cons _hd20117_
                                                                _xdeps20133_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd20117_
                                                'gx#module-import::t)
                                               (if (fxzero? (##direct-structure-ref
                                                             _hd20117_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps20088_
                                                    (cons (##direct-structure-ref
                                                           _hd20117_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest20116_)
                                                    _deps20096_)
                                                   (_find-deps20088_
                                                    _rest20116_
                                                    _deps20096_))
                                               (if (##structure-direct-instance-of?
                                                    _hd20117_
                                                    'gx#module-export::t)
                                                   (_find-deps20088_
                                                    (cons (##direct-structure-ref
                                                           _hd20117_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest20116_)
                                                    _deps20096_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd20117_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd20117_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps20088_
                    (cons (##direct-structure-ref
                           _hd20117_
                           '1
                           gx#import-set::t
                           '#f)
                          _rest20116_)
                    _deps20096_)
                   (_find-deps20088_ _rest20116_ _deps20096_))
               (error '"Unexpected module import" _hd20117_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest2009720105_)
                                (let ((_hd2010220138_ (##car _rest2009720105_))
                                      (_tl2010320140_
                                       (##cdr _rest2009720105_)))
                                  (let ((_hd20143_ _hd2010220138_))
                                    (let ((_rest20145_ _tl2010320140_))
                                      (_K2010120135_ _rest20145_ _hd20143_))))
                                (_else2009920113_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps20088_
                            (let ((_$e20090_
                                   (gx#core-context-prelude__opt-lambda11357
                                    _ctx20085_)))
                              (if _$e20090_
                                  ((lambda (_pre20093_)
                                     (cons _pre20093_
                                           (##structure-ref
                                            _ctx20085_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e20090_)
                                  (##structure-ref
                                   _ctx20085_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20024_)
      (let ((_scm20026_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx20024_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs20028_ (gx#current-expander-module-library-path)))
          (let ((_dirs20037_
                 (let ((_$e20030_ (gxc#current-compile-output-dir)))
                   (if _$e20030_
                       ((lambda (_g2003220034_)
                          (cons _g2003220034_ _dirs20028_))
                        _$e20030_)
                       _dirs20028_))))
            (let ((_dirs20043_
                   (map (lambda (_g2003820040_)
                          (path-expand '"static" _g2003820040_))
                        _dirs20037_)))
              (let ()
                ((letrec ((_lp20046_
                           (lambda (_rest20048_)
                             (let ((_rest2004920057_ _rest20048_))
                               (let ((_E2005220061_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest2004920057_))))
                                 (let ((_else2005120065_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx20024_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm20026_))))
                                   (let ((_K2005320073_
                                          (lambda (_rest20068_ _dir20069_)
                                            (let ((_path20071_
                                                   (path-expand
                                                    _scm20026_
                                                    _dir20069_)))
                                              (if (file-exists? _path20071_)
                                                  _path20071_
                                                  (_lp20046_ _rest20068_))))))
                                     (if (##pair? _rest2004920057_)
                                         (let ((_hd2005420076_
                                                (##car _rest2004920057_))
                                               (_tl2005520078_
                                                (##cdr _rest2004920057_)))
                                           (let ((_dir20081_ _hd2005420076_))
                                             (let ((_rest20083_
                                                    _tl2005520078_))
                                               (_K2005320073_
                                                _rest20083_
                                                _dir20081_))))
                                         (_else2005120065_)))))))))
                   _lp20046_)
                 _dirs20043_))))))))
  (define gxc#file-empty?
    (lambda (_path20022_)
      (zero? (file-info-size (file-info _path20022_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20019_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20019_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20019_)
               '#!void)
           (gxc#collect-bindings _ctx20019_)
           (gxc#compile-runtime-code _ctx20019_)
           (gxc#compile-meta-code _ctx20019_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20019_)
               '#!void)))
       gx#current-expander-context
       _ctx20019_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20351 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20351) __obj20351))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx20017_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20017_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19976_)
      (let ((_generate-runtime-code19979_
             (lambda (_ctx19994_ _code19995_)
               (let ((_runtime-code19998_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19995_))
                       gx#current-expander-context
                       _ctx19994_)))
                 (let ((_scm020000_
                        (gxc#compile-output-file _ctx19994_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms20003_
                                (gxc#compile-static-output-file _ctx19994_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm020000_
                                 _runtime-code19998_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms20003_)
                                 (delete-file _scms20003_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm020000_
                              '" => "
                              _scms20003_)
                             (copy-file _scm020000_ _scms20003_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm020000_))))
                         (gxc#compile-scm-file
                          _scm020000_
                          _runtime-code19998_))))))))
        (let ((_generate-loader-code19980_
               (lambda (_ctx19984_ _code19985_ _rt19986_)
                 (let ((_loader-code19989_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19985_))
                         gx#current-expander-context
                         _ctx19984_)))
                   (let ((_loader-code19991_
                          (if _rt19986_
                              (cons 'begin
                                    (cons _loader-code19989_
                                          (cons (cons 'load-module
                                                      (cons _rt19986_ '()))
                                                '())))
                              _loader-code19989_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19984_ 'rt '".scm")
                        _loader-code19991_)))))))
          (let ((_compile119978_
                 (lambda (_ctx20006_)
                   (let ((_code20008_
                          (##structure-ref
                           _ctx20006_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt20012_
                            (if (gxc#apply-find-runtime-code _code20008_)
                                (let ((_idstr20010_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx20006_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr20010_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt20012_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx20006_
                                  _rt20012_)
                                 (_generate-runtime-code19979_
                                  _ctx20006_
                                  _code20008_))
                               (if (gxc#current-compile-static)
                                   (let ((_path20015_
                                          (gxc#compile-static-output-file
                                           _ctx20006_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path20015_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code19980_
                            _ctx20006_
                            _code20008_
                            _rt20012_))))))))
            (let ((_all-modules19982_
                   (cons _ctx19976_ (gxc#lift-nested-modules _ctx19976_))))
              (for-each _compile119978_ _all-modules19982_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19878_)
      (let ((_compile-ssi19880_
             (lambda (_code19946_)
               (let ((_path19948_
                      (gxc#compile-output-file _ctx19878_ '#f '".ssi")))
                 (let ((_prelude19959_
                        (let ((_super19950_
                               (##structure-ref
                                _ctx19878_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19952_
                                 (##structure-ref
                                  _super19950_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19952_
                                ((lambda (_g1995419956_)
                                   (make-symbol '":" _g1995419956_))
                                 _$e19952_)
                                ':<root>)))))
                   (let ((_ns19961_
                          (##structure-ref
                           _ctx19878_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19963_
                            (symbol->string
                             (##structure-ref
                              _ctx19878_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19970_
                              (let ((_$e19965_
                                     (string-rindex _idstr19963_ '#\/)))
                                (if _$e19965_
                                    ((lambda (_x19968_)
                                       (string->symbol
                                        (substring _idstr19963_ '0 _x19968_)))
                                     _$e19965_)
                                    '#f))))
                         (let ((_rt19972_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19878_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19948_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19948_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19959_)
                                    (if _pkg19970_
                                        (displayln '"package:" '" " _pkg19970_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19961_)
                                    (newline)
                                    (pretty-print _code19946_)
                                    (if _rt19972_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19972_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19881_
               (lambda (_part19886_)
                 (let ((_part1988719900_ _part19886_))
                   (let ((_E1988919904_
                          (lambda ()
                            (error '"No clause matching" _part1988719900_))))
                     (let ((_K1989019915_
                            (lambda (_code19907_
                                     _n19908_
                                     _phi19909_
                                     _phi-ctx19910_)
                              (let ((_code19913_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19907_))
                                      gx#current-expander-context
                                      _phi-ctx19910_
                                      gx#current-expander-phi
                                      _phi19909_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19878_
                                  _n19908_
                                  '".scm")
                                 _code19913_)))))
                       (if (##pair? _part1988719900_)
                           (let ((_hd1989119918_ (##car _part1988719900_))
                                 (_tl1989219920_ (##cdr _part1988719900_)))
                             (let ((_phi-ctx19923_ _hd1989119918_))
                               (if (##pair? _tl1989219920_)
                                   (let ((_hd1989319925_
                                          (##car _tl1989219920_))
                                         (_tl1989419927_
                                          (##cdr _tl1989219920_)))
                                     (let ((_phi19930_ _hd1989319925_))
                                       (if (##pair? _tl1989419927_)
                                           (let ((_hd1989519932_
                                                  (##car _tl1989419927_))
                                                 (_tl1989619934_
                                                  (##cdr _tl1989419927_)))
                                             (let ((_n19937_ _hd1989519932_))
                                               (if (##pair? _tl1989619934_)
                                                   (let ((_hd1989719939_
                                                          (##car _tl1989619934_))
                                                         (_tl1989819941_
                                                          (##cdr _tl1989619934_)))
                                                     (let ((_code19944_
                                                            _hd1989719939_))
                                                       (if (##null? _tl1989819941_)
                                                           (_K1989019915_
                                                            _code19944_
                                                            _n19937_
                                                            _phi19930_
                                                            _phi-ctx19923_)
                                                           (_E1988919904_))))
                                                   (_E1988919904_))))
                                           (_E1988919904_))))
                                   (_E1988919904_))))
                           (_E1988919904_))))))))
          (let ((_g20361_ (gxc#generate-meta-code _ctx19878_)))
            (begin
              (let ((_g20362_ (values-count _g20361_)))
                (if (not (fx= _g20362_ 2))
                    (error "Context expects 2 values" _g20362_)))
              (let ((_ssi-code19883_ (values-ref _g20361_ 0))
                    (_phi-code19884_ (values-ref _g20361_ 1)))
                (begin
                  (_compile-ssi19880_ _ssi-code19883_)
                  (for-each _compile-phi19881_ _phi-code19884_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19861_)
      (let ((_path19863_ (gxc#compile-output-file _ctx19861_ '#f '".ssxi.ss")))
        (let ((_code19865_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19861_ '11 gx#module-context::t '#f))))
          (let ((_idstr19867_
                 (symbol->string
                  (##structure-ref _ctx19861_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19874_
                   (let ((_$e19869_ (string-rindex _idstr19867_ '#\/)))
                     (if _$e19869_
                         ((lambda (_x19872_)
                            (string->symbol
                             (substring _idstr19867_ '0 _x19872_)))
                          _$e19869_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19863_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19863_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19874_
                           (displayln '"package: " _pkg19874_)
                           '#!void)
                       (newline)
                       (pretty-print _code19865_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19854_)
      (let ((_state19856_
             (let ((__obj20352 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20352 _ctx19854_)
                 __obj20352))))
        (let ((_ssi-code19858_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19854_ '11 gx#module-context::t '#f)
                _state19856_)))
          (let ()
            (values _ssi-code19858_ (gxc#meta-state-end! _state19856_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19847_)
      (let ((_lifts19849_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19852_ (gxc#apply-generate-runtime-phi _stx19847_)))
             (if (null? (unbox _lifts19849_))
                 _code19852_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19852_ '())
                               (reverse (unbox _lifts19849_)))))))
         gxc#current-compile-lift
         _lifts19849_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19843_)
      (let ((_modules19845_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19843_ '11 gx#module-context::t '#f)
           _modules19845_)
          (reverse (unbox _modules19845_))))))
  (define gxc#compile-scm-file
    (lambda (_path19839_ _code19840_)
      (begin
        (gxc#verbose '"compile " _path19839_)
        (with-output-to-file
         (cons 'path: (cons _path19839_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19840_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19839_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19839_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19825_)
      (let ((_gsc-args19832_
             (let ((_$e19827_ (gxc#current-compile-gsc-options)))
               (if _$e19827_
                   ((lambda (_opts19830_)
                      (foldr1 cons (cons _path19825_ '()) _opts19830_))
                    _$e19827_)
                   (cons _path19825_ '())))))
        (let ((_proc19834_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19832_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19836_ (process-status _proc19834_)))
            (let ()
              (if (zero? _status19836_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19825_
                   _status19836_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19797_ _n19798_ _ext19799_)
      (let ((_module-relative-path19801_
             (lambda (_ctx19823_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19823_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19802_
               (lambda (_ctx19819_)
                 (path-directory
                  (let ((_mpath19821_
                         (##structure-ref
                          _ctx19819_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19821_)
                        _mpath19821_
                        (last _mpath19821_)))))))
          (let ((_section-string19803_
                 (lambda (_n19817_)
                   (if (number? _n19817_)
                       (number->string _n19817_)
                       (if (symbol? _n19817_)
                           (symbol->string _n19817_)
                           (if (string? _n19817_)
                               _n19817_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19817_)))))))
            (let ((_file-name19804_
                   (lambda (_path19815_)
                     (if _n19798_
                         (string-append
                          _path19815_
                          '"__"
                          (_section-string19803_ _n19798_)
                          _ext19799_)
                         (string-append _path19815_ _ext19799_)))))
              (let ((_file-path19805_
                     (lambda ()
                       (let ((_$e19810_ (gxc#current-compile-output-dir)))
                         (if _$e19810_
                             ((lambda (_outdir19813_)
                                (path-expand
                                 (_file-name19804_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19797_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19813_))
                              _$e19810_)
                             (path-expand
                              (_file-name19804_
                               (_module-relative-path19801_ _ctx19797_))
                              (_module-source-directory19802_ _ctx19797_)))))))
                (let ((_path19807_ (_file-path19805_)))
                  (begin
                    (create-directory* (path-directory _path19807_))
                    _path19807_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19780_)
      (let ((_file-name19782_
             (lambda (_idstr19795_)
               (string-append (gxc#static-module-name _idstr19795_) '".scm"))))
        (let ((_file-path19783_
               (lambda ()
                 (let ((_file19788_
                        (_file-name19782_
                         (symbol->string
                          (##structure-ref
                           _ctx19780_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19790_ (gxc#current-compile-output-dir)))
                     (if _$e19790_
                         ((lambda (_outdir19793_)
                            (path-expand
                             _file19788_
                             (path-expand '"static" _outdir19793_)))
                          _$e19790_)
                         (path-expand _file19788_ '"static")))))))
          (let ((_path19785_ (_file-path19783_)))
            (begin
              (create-directory* (path-directory _path19785_))
              _path19785_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19767_ _opts19768_)
      (let ((_$e19770_ (pgetq 'output-file: _opts19768_)))
        (if _$e19770_
            (values _$e19770_)
            (let ((_mod-str19773_
                   (symbol->string
                    (##structure-ref
                     _ctx19767_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19775_ (string-rindex _mod-str19773_ '#\/)))
                (if _$e19775_
                    ((lambda (_ix19778_)
                       (substring
                        _mod-str19773_
                        (fx+ _ix19778_ '1)
                        (string-length _mod-str19773_)))
                     _$e19775_)
                    _mod-str19773_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19763_)
      (if (string? _idstr19763_)
          (let ((_strs19765_ (string-split _idstr19763_ '#\/)))
            (string-join _strs19765_ '"__"))
          (if (symbol? _idstr19763_)
              (gxc#static-module-name (symbol->string _idstr19763_))
              (error '"Bad module id" _idstr19763_))))))
