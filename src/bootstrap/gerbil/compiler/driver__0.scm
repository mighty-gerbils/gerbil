(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda18200
      (lambda (_srcpath18202_ _opts18203_)
        (begin
          (if (string? _srcpath18202_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath18202_))
          (let ((_outdir18205_ (pgetq 'output-dir: _opts18203_))
                (_invoke-gsc?18206_ (pgetq 'invoke-gsc: _opts18203_))
                (_gsc-options18207_ (pgetq 'gsc-options: _opts18203_))
                (_keep-scm?18208_ (pgetq 'keep-scm: _opts18203_))
                (_verbosity18209_ (pgetq 'verbose: _opts18203_))
                (_optimize18210_ (pgetq 'optimize: _opts18203_))
                (_gen-ssxi18211_ (pgetq 'generate-ssxi: _opts18203_)))
            (begin
              (if _outdir18205_ (create-directory* _outdir18205_) '#!void)
              (if _optimize18210_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath18202_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath18202_))))
               gxc#current-compile-output-dir
               _outdir18205_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?18206_
               gxc#current-compile-gsc-options
               _gsc-options18207_
               gxc#current-compile-keep-scm
               _keep-scm?18208_
               gxc#current-compile-verbose
               _verbosity18209_
               gxc#current-compile-optimize
               _optimize18210_
               gxc#current-compile-generate-ssxi
               _gen-ssxi18211_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath18217_)
          (let ((_opts18219_ '()))
            (gxc#compile-file__opt-lambda18200 _srcpath18217_ _opts18219_))))
      (define gxc#compile-file
        (lambda _g18227_
          (let ((_g18226_ (length _g18227_)))
            (cond ((fx= _g18226_ 1) (apply gxc#compile-file__0 _g18227_))
                  ((fx= _g18226_ 2)
                   (apply gxc#compile-file__opt-lambda18200 _g18227_))
                  (else (error "No clause matching arguments" _g18227_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda18179
      (lambda (_srcpath18181_ _opts18182_)
        (begin
          (if (string? _srcpath18181_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath18181_))
          (let ((_outdir18184_ (pgetq 'output-dir: _opts18182_))
                (_invoke-gsc?18185_ (pgetq 'invoke-gsc: _opts18182_))
                (_gsc-options18186_ (pgetq 'gsc-options: _opts18182_))
                (_keep-scm?18187_ (pgetq 'keep-scm: _opts18182_))
                (_verbosity18188_ (pgetq 'verbose: _opts18182_)))
            (begin
              (if _outdir18184_ (create-directory* _outdir18184_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath18181_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath18181_)
                    _opts18182_)))
               gxc#current-compile-output-dir
               _outdir18184_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?18185_
               gxc#current-compile-gsc-options
               _gsc-options18186_
               gxc#current-compile-keep-scm
               _keep-scm?18187_
               gxc#current-compile-verbose
               _verbosity18188_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath18194_)
          (let ((_opts18196_ '()))
            (gxc#compile-exe-stub__opt-lambda18179
             _srcpath18194_
             _opts18196_))))
      (define gxc#compile-exe-stub
        (lambda _g18229_
          (let ((_g18228_ (length _g18229_)))
            (cond ((fx= _g18228_ 1) (apply gxc#compile-exe-stub__0 _g18229_))
                  ((fx= _g18228_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda18179 _g18229_))
                  (else (error "No clause matching arguments" _g18229_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx18073_ _opts18074_)
      (let ((_find-export-binding18076_
             (lambda (_id18130_ _exports18131_)
               (let ((_$e18177_
                      (find (lambda (_e1813218134_)
                              (let ((_g1813618146_ _e1813218134_))
                                (let ((_E1813918150_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1813618146_))))
                                  (let ((_else1813818154_ (lambda () '#f)))
                                    (let ((_K1814018158_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1813618146_)
                                          (let ((_e1814118161_
                                                 (##vector-ref
                                                  _g1813618146_
                                                  '1)))
                                            (let ((_e1814218164_
                                                   (##vector-ref
                                                    _g1813618146_
                                                    '2)))
                                              (let ((_e1814318167_
                                                     (##vector-ref
                                                      _g1813618146_
                                                      '3)))
                                                (if (##eq? _e1814318167_ '0)
                                                    (let ((_e1814418170_
                                                           (##vector-ref
                                                            _g1813618146_
                                                            '4)))
                                                      (if ((lambda (_g1817218174_)
                                                             (eq? _g1817218174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id18130_))
                   _e1814418170_)
                  (_K1814018158_)
                  (_else1813818154_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1813818154_)))))
                                          (_else1813818154_)))))))
                            _exports18131_)))
                 (if _$e18177_
                     (gx#core-resolve-module-export _$e18177_)
                     '#f)))))
        (let ((_generate-stub18077_
               (lambda ()
                 (let ((_mod-str18118_
                        (symbol->string
                         (##structure-ref
                          _ctx18073_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt18120_
                          (string-append _mod-str18118_ '"__rt")))
                     (let ((_mod-main18127_
                            (let ((_$e18122_
                                   (_find-export-binding18076_
                                    'main
                                    (##structure-ref
                                     _ctx18073_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e18122_
                                  ((lambda (_bind18125_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind18125_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind18125_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e18122_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx18073_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt18120_
                                              (cons (cons 'quote
                                                          (cons _mod-main18127_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub18078_
                 (lambda (_output-scm18105_ _output-bin18106_)
                   (let ((_init-stub18108_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args18110_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin18106_
                                              (cons _init-stub18108_
                                                    (cons _output-scm18105_
                                                          '())))))))
                       (let ((_proc18112_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args18110_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status18114_ (process-status _proc18112_)))
                           (let ()
                             (if (zero? _status18114_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm18105_
                                  _output-bin18106_
                                  _status18114_))))))))))
            (let ((_output-bin18100_
                   (let ((_$e18080_ (pgetq 'output-file: _opts18074_)))
                     (if _$e18080_
                         (values _$e18080_)
                         (let ((_mod-str18083_
                                (symbol->string
                                 (##structure-ref
                                  _ctx18073_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name18090_
                                  (let ((_$e18085_
                                         (string-rindex _mod-str18083_ '#\/)))
                                    (if _$e18085_
                                        ((lambda (_ix18088_)
                                           (substring
                                            _mod-str18083_
                                            (fx+ _ix18088_ '1)
                                            (string-length _mod-str18083_)))
                                         _$e18085_)
                                        _mod-str18083_))))
                             (let ()
                               (let ((_$e18093_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e18093_
                                     ((lambda (_g1809518097_)
                                        (path-expand
                                         _mod-name18090_
                                         _g1809518097_))
                                      _$e18093_)
                                     _mod-name18090_)))))))))
              (let ((_output-scm18102_
                     (string-append _output-bin18100_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm18102_
                     _generate-stub18077_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub18078_
                         _output-scm18102_
                         _output-bin18100_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm18102_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx18070_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx18070_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx18070_)
               '#!void)
           (gxc#collect-bindings _ctx18070_)
           (gxc#compile-runtime-code _ctx18070_)
           (gxc#compile-meta-code _ctx18070_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx18070_)
               '#!void)))
       gx#current-expander-context
       _ctx18070_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj18224 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj18224) __obj18224))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx18068_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx18068_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx18035_)
      (let ((_generate-runtime-code18038_
             (lambda (_ctx18053_ _code18054_)
               (let ((_runtime-code18057_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code18054_))
                       gx#current-expander-context
                       _ctx18053_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx18053_ '0 '".scm")
                  _runtime-code18057_)))))
        (let ((_generate-loader-code18039_
               (lambda (_ctx18043_ _code18044_ _rt18045_)
                 (let ((_loader-code18048_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code18044_))
                         gx#current-expander-context
                         _ctx18043_)))
                   (let ((_loader-code18050_
                          (if _rt18045_
                              (cons 'begin
                                    (cons _loader-code18048_
                                          (cons (cons 'load-module
                                                      (cons _rt18045_ '()))
                                                '())))
                              _loader-code18048_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx18043_ 'rt '".scm")
                        _loader-code18050_)))))))
          (let ((_compile118037_
                 (lambda (_ctx18059_)
                   (let ((_code18061_
                          (##structure-ref
                           _ctx18059_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt18065_
                            (if (gxc#apply-find-runtime-code _code18061_)
                                (let ((_idstr18063_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx18059_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr18063_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt18065_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx18059_
                                  _rt18065_)
                                 (_generate-runtime-code18038_
                                  _ctx18059_
                                  _code18061_))
                               '#!void)
                           (_generate-loader-code18039_
                            _ctx18059_
                            _code18061_
                            _rt18065_))))))))
            (let ((_all-modules18041_
                   (cons _ctx18035_ (gxc#lift-nested-modules _ctx18035_))))
              (for-each _compile118037_ _all-modules18041_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx17937_)
      (let ((_compile-ssi17939_
             (lambda (_code18005_)
               (let ((_path18007_
                      (gxc#compile-output-file _ctx17937_ '#f '".ssi")))
                 (let ((_prelude18018_
                        (let ((_super18009_
                               (##structure-ref
                                _ctx17937_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e18011_
                                 (##structure-ref
                                  _super18009_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e18011_
                                ((lambda (_g1801318015_)
                                   (make-symbol '":" _g1801318015_))
                                 _$e18011_)
                                ':<root>)))))
                   (let ((_ns18020_
                          (##structure-ref
                           _ctx17937_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr18022_
                            (symbol->string
                             (##structure-ref
                              _ctx17937_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg18029_
                              (let ((_$e18024_
                                     (string-rindex _idstr18022_ '#\/)))
                                (if _$e18024_
                                    ((lambda (_x18027_)
                                       (string->symbol
                                        (substring _idstr18022_ '0 _x18027_)))
                                     _$e18024_)
                                    '#f))))
                         (let ((_rt18031_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx17937_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path18007_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path18007_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude18018_)
                                    (if _pkg18029_
                                        (displayln '"package:" '" " _pkg18029_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns18020_)
                                    (newline)
                                    (pretty-print _code18005_)
                                    (if _rt18031_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt18031_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi17940_
               (lambda (_part17945_)
                 (let ((_part1794617959_ _part17945_))
                   (let ((_E1794817963_
                          (lambda ()
                            (error '"No clause matching" _part1794617959_))))
                     (let ((_K1794917974_
                            (lambda (_code17966_
                                     _n17967_
                                     _phi17968_
                                     _phi-ctx17969_)
                              (let ((_code17972_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code17966_))
                                      gx#current-expander-context
                                      _phi-ctx17969_
                                      gx#current-expander-phi
                                      _phi17968_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx17937_
                                  _n17967_
                                  '".scm")
                                 _code17972_)))))
                       (if (##pair? _part1794617959_)
                           (let ((_hd1795017977_ (##car _part1794617959_))
                                 (_tl1795117979_ (##cdr _part1794617959_)))
                             (let ((_phi-ctx17982_ _hd1795017977_))
                               (if (##pair? _tl1795117979_)
                                   (let ((_hd1795217984_
                                          (##car _tl1795117979_))
                                         (_tl1795317986_
                                          (##cdr _tl1795117979_)))
                                     (let ((_phi17989_ _hd1795217984_))
                                       (if (##pair? _tl1795317986_)
                                           (let ((_hd1795417991_
                                                  (##car _tl1795317986_))
                                                 (_tl1795517993_
                                                  (##cdr _tl1795317986_)))
                                             (let ((_n17996_ _hd1795417991_))
                                               (if (##pair? _tl1795517993_)
                                                   (let ((_hd1795617998_
                                                          (##car _tl1795517993_))
                                                         (_tl1795718000_
                                                          (##cdr _tl1795517993_)))
                                                     (let ((_code18003_
                                                            _hd1795617998_))
                                                       (if (##null? _tl1795718000_)
                                                           (_K1794917974_
                                                            _code18003_
                                                            _n17996_
                                                            _phi17989_
                                                            _phi-ctx17982_)
                                                           (_E1794817963_))))
                                                   (_E1794817963_))))
                                           (_E1794817963_))))
                                   (_E1794817963_))))
                           (_E1794817963_))))))))
          (let ((_g18230_ (gxc#generate-meta-code _ctx17937_)))
            (begin
              (let ((_g18231_ (values-count _g18230_)))
                (if (not (fx= _g18231_ 2))
                    (error "Context expects 2 values" _g18231_)))
              (let ((_ssi-code17942_ (values-ref _g18230_ 0))
                    (_phi-code17943_ (values-ref _g18230_ 1)))
                (begin
                  (_compile-ssi17939_ _ssi-code17942_)
                  (for-each _compile-phi17940_ _phi-code17943_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx17920_)
      (let ((_path17922_ (gxc#compile-output-file _ctx17920_ '#f '".ssxi.ss")))
        (let ((_code17924_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx17920_ '11 gx#module-context::t '#f))))
          (let ((_idstr17926_
                 (symbol->string
                  (##structure-ref _ctx17920_ '1 gx#expander-context::t '#f))))
            (let ((_pkg17933_
                   (let ((_$e17928_ (string-rindex _idstr17926_ '#\/)))
                     (if _$e17928_
                         ((lambda (_x17931_)
                            (string->symbol
                             (substring _idstr17926_ '0 _x17931_)))
                          _$e17928_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path17922_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path17922_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg17933_
                           (displayln '"package: " _pkg17933_)
                           '#!void)
                       (newline)
                       (pretty-print _code17924_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx17913_)
      (let ((_state17915_
             (let ((__obj18225 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj18225 _ctx17913_)
                 __obj18225))))
        (let ((_ssi-code17917_
               (gxc#apply-generate-meta
                (##structure-ref _ctx17913_ '11 gx#module-context::t '#f)
                _state17915_)))
          (let ()
            (values _ssi-code17917_ (gxc#meta-state-end! _state17915_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx17906_)
      (let ((_lifts17908_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code17911_ (gxc#apply-generate-runtime-phi _stx17906_)))
             (if (null? (unbox _lifts17908_))
                 _code17911_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code17911_ '())
                               (reverse (unbox _lifts17908_)))))))
         gxc#current-compile-lift
         _lifts17908_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx17902_)
      (let ((_modules17904_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx17902_ '11 gx#module-context::t '#f)
           _modules17904_)
          (reverse (unbox _modules17904_))))))
  (define gxc#compile-scm-file
    (lambda (_path17898_ _code17899_)
      (begin
        (gxc#verbose '"compile " _path17898_)
        (with-output-to-file
         (cons 'path: (cons _path17898_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code17899_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path17898_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path17898_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path17884_)
      (let ((_gsc-args17891_
             (let ((_$e17886_ (gxc#current-compile-gsc-options)))
               (if _$e17886_
                   ((lambda (_opts17889_)
                      (foldr1 cons (cons _path17884_ '()) _opts17889_))
                    _$e17886_)
                   (cons _path17884_ '())))))
        (let ((_proc17893_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args17891_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status17895_ (process-status _proc17893_)))
            (let ()
              (if (zero? _status17895_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path17884_
                   _status17895_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx17856_ _n17857_ _ext17858_)
      (let ((_module-relative-path17860_
             (lambda (_ctx17882_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx17882_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory17861_
               (lambda (_ctx17878_)
                 (path-directory
                  (let ((_mpath17880_
                         (##structure-ref
                          _ctx17878_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath17880_)
                        _mpath17880_
                        (last _mpath17880_)))))))
          (let ((_section-string17862_
                 (lambda (_n17876_)
                   (if (number? _n17876_)
                       (number->string _n17876_)
                       (if (symbol? _n17876_)
                           (symbol->string _n17876_)
                           (if (string? _n17876_)
                               _n17876_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n17876_)))))))
            (let ((_file-name17863_
                   (lambda (_path17874_)
                     (if _n17857_
                         (string-append
                          _path17874_
                          '"__"
                          (_section-string17862_ _n17857_)
                          _ext17858_)
                         (string-append _path17874_ _ext17858_)))))
              (let ((_file-path17864_
                     (lambda ()
                       (let ((_$e17869_ (gxc#current-compile-output-dir)))
                         (if _$e17869_
                             ((lambda (_outdir17872_)
                                (path-expand
                                 (_file-name17863_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx17856_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir17872_))
                              _$e17869_)
                             (path-expand
                              (_file-name17863_
                               (_module-relative-path17860_ _ctx17856_))
                              (_module-source-directory17861_ _ctx17856_)))))))
                (let ((_path17866_ (_file-path17864_)))
                  (begin
                    (create-directory* (path-directory _path17866_))
                    _path17866_))))))))))
