(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda18292
      (lambda (_srcpath18294_ _opts18295_)
        (begin
          (if (string? _srcpath18294_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath18294_))
          (let ((_outdir18297_ (pgetq 'output-dir: _opts18295_))
                (_invoke-gsc?18298_ (pgetq 'invoke-gsc: _opts18295_))
                (_gsc-options18299_ (pgetq 'gsc-options: _opts18295_))
                (_keep-scm?18300_ (pgetq 'keep-scm: _opts18295_))
                (_verbosity18301_ (pgetq 'verbose: _opts18295_))
                (_optimize18302_ (pgetq 'optimize: _opts18295_))
                (_gen-ssxi18303_ (pgetq 'generate-ssxi: _opts18295_)))
            (begin
              (if _outdir18297_ (create-directory* _outdir18297_) '#!void)
              (if _optimize18302_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath18294_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath18294_))))
               gxc#current-compile-output-dir
               _outdir18297_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?18298_
               gxc#current-compile-gsc-options
               _gsc-options18299_
               gxc#current-compile-keep-scm
               _keep-scm?18300_
               gxc#current-compile-verbose
               _verbosity18301_
               gxc#current-compile-optimize
               _optimize18302_
               gxc#current-compile-generate-ssxi
               _gen-ssxi18303_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath18309_)
          (let ((_opts18311_ '()))
            (gxc#compile-file__opt-lambda18292 _srcpath18309_ _opts18311_))))
      (define gxc#compile-file
        (lambda _g18319_
          (let ((_g18318_ (length _g18319_)))
            (cond ((fx= _g18318_ 1) (apply gxc#compile-file__0 _g18319_))
                  ((fx= _g18318_ 2)
                   (apply gxc#compile-file__opt-lambda18292 _g18319_))
                  (else (error "No clause matching arguments" _g18319_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda18271
      (lambda (_srcpath18273_ _opts18274_)
        (begin
          (if (string? _srcpath18273_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath18273_))
          (let ((_outdir18276_ (pgetq 'output-dir: _opts18274_))
                (_invoke-gsc?18277_ (pgetq 'invoke-gsc: _opts18274_))
                (_gsc-options18278_ (pgetq 'gsc-options: _opts18274_))
                (_keep-scm?18279_ (pgetq 'keep-scm: _opts18274_))
                (_verbosity18280_ (pgetq 'verbose: _opts18274_)))
            (begin
              (if _outdir18276_ (create-directory* _outdir18276_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath18273_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath18273_)
                    _opts18274_)))
               gxc#current-compile-output-dir
               _outdir18276_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?18277_
               gxc#current-compile-gsc-options
               _gsc-options18278_
               gxc#current-compile-keep-scm
               _keep-scm?18279_
               gxc#current-compile-verbose
               _verbosity18280_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath18286_)
          (let ((_opts18288_ '()))
            (gxc#compile-exe-stub__opt-lambda18271
             _srcpath18286_
             _opts18288_))))
      (define gxc#compile-exe-stub
        (lambda _g18321_
          (let ((_g18320_ (length _g18321_)))
            (cond ((fx= _g18320_ 1) (apply gxc#compile-exe-stub__0 _g18321_))
                  ((fx= _g18320_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda18271 _g18321_))
                  (else (error "No clause matching arguments" _g18321_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx18165_ _opts18166_)
      (let ((_find-export-binding18168_
             (lambda (_id18222_ _exports18223_)
               (let ((_$e18269_
                      (find (lambda (_e1822418226_)
                              (let ((_g1822818238_ _e1822418226_))
                                (let ((_E1823118242_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1822818238_))))
                                  (let ((_else1823018246_ (lambda () '#f)))
                                    (let ((_K1823218250_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1822818238_)
                                          (let ((_e1823318253_
                                                 (##vector-ref
                                                  _g1822818238_
                                                  '1)))
                                            (let ((_e1823418256_
                                                   (##vector-ref
                                                    _g1822818238_
                                                    '2)))
                                              (let ((_e1823518259_
                                                     (##vector-ref
                                                      _g1822818238_
                                                      '3)))
                                                (if (##eq? _e1823518259_ '0)
                                                    (let ((_e1823618262_
                                                           (##vector-ref
                                                            _g1822818238_
                                                            '4)))
                                                      (if ((lambda (_g1826418266_)
                                                             (eq? _g1826418266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id18222_))
                   _e1823618262_)
                  (_K1823218250_)
                  (_else1823018246_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1823018246_)))))
                                          (_else1823018246_)))))))
                            _exports18223_)))
                 (if _$e18269_
                     (gx#core-resolve-module-export _$e18269_)
                     '#f)))))
        (let ((_generate-stub18169_
               (lambda ()
                 (let ((_mod-str18210_
                        (symbol->string
                         (##structure-ref
                          _ctx18165_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt18212_
                          (string-append _mod-str18210_ '"__rt")))
                     (let ((_mod-main18219_
                            (let ((_$e18214_
                                   (_find-export-binding18168_
                                    'main
                                    (##structure-ref
                                     _ctx18165_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e18214_
                                  ((lambda (_bind18217_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind18217_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind18217_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e18214_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx18165_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt18212_
                                              (cons (cons 'quote
                                                          (cons _mod-main18219_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub18170_
                 (lambda (_output-scm18197_ _output-bin18198_)
                   (let ((_init-stub18200_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args18202_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin18198_
                                              (cons _init-stub18200_
                                                    (cons _output-scm18197_
                                                          '())))))))
                       (let ((_proc18204_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args18202_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status18206_ (process-status _proc18204_)))
                           (let ()
                             (if (zero? _status18206_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm18197_
                                  _output-bin18198_
                                  _status18206_))))))))))
            (let ((_output-bin18192_
                   (let ((_$e18172_ (pgetq 'output-file: _opts18166_)))
                     (if _$e18172_
                         (values _$e18172_)
                         (let ((_mod-str18175_
                                (symbol->string
                                 (##structure-ref
                                  _ctx18165_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name18182_
                                  (let ((_$e18177_
                                         (string-rindex _mod-str18175_ '#\/)))
                                    (if _$e18177_
                                        ((lambda (_ix18180_)
                                           (substring
                                            _mod-str18175_
                                            (fx+ _ix18180_ '1)
                                            (string-length _mod-str18175_)))
                                         _$e18177_)
                                        _mod-str18175_))))
                             (let ()
                               (let ((_$e18185_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e18185_
                                     ((lambda (_g1818718189_)
                                        (path-expand
                                         _mod-name18182_
                                         _g1818718189_))
                                      _$e18185_)
                                     _mod-name18182_)))))))))
              (let ((_output-scm18194_
                     (string-append _output-bin18192_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm18194_
                     _generate-stub18169_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub18170_
                         _output-scm18194_
                         _output-bin18192_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm18194_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx18162_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx18162_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx18162_)
               '#!void)
           (gxc#collect-bindings _ctx18162_)
           (gxc#compile-runtime-code _ctx18162_)
           (gxc#compile-meta-code _ctx18162_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx18162_)
               '#!void)))
       gx#current-expander-context
       _ctx18162_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj18316 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj18316) __obj18316))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx18160_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx18160_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx18127_)
      (let ((_generate-runtime-code18130_
             (lambda (_ctx18145_ _code18146_)
               (let ((_runtime-code18149_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code18146_))
                       gx#current-expander-context
                       _ctx18145_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx18145_ '0 '".scm")
                  _runtime-code18149_)))))
        (let ((_generate-loader-code18131_
               (lambda (_ctx18135_ _code18136_ _rt18137_)
                 (let ((_loader-code18140_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code18136_))
                         gx#current-expander-context
                         _ctx18135_)))
                   (let ((_loader-code18142_
                          (if _rt18137_
                              (cons 'begin
                                    (cons _loader-code18140_
                                          (cons (cons 'load-module
                                                      (cons _rt18137_ '()))
                                                '())))
                              _loader-code18140_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx18135_ 'rt '".scm")
                        _loader-code18142_)))))))
          (let ((_compile118129_
                 (lambda (_ctx18151_)
                   (let ((_code18153_
                          (##structure-ref
                           _ctx18151_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt18157_
                            (if (gxc#apply-find-runtime-code _code18153_)
                                (let ((_idstr18155_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx18151_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr18155_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt18157_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx18151_
                                  _rt18157_)
                                 (_generate-runtime-code18130_
                                  _ctx18151_
                                  _code18153_))
                               '#!void)
                           (_generate-loader-code18131_
                            _ctx18151_
                            _code18153_
                            _rt18157_))))))))
            (let ((_all-modules18133_
                   (cons _ctx18127_ (gxc#lift-nested-modules _ctx18127_))))
              (for-each _compile118129_ _all-modules18133_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx18029_)
      (let ((_compile-ssi18031_
             (lambda (_code18097_)
               (let ((_path18099_
                      (gxc#compile-output-file _ctx18029_ '#f '".ssi")))
                 (let ((_prelude18110_
                        (let ((_super18101_
                               (##structure-ref
                                _ctx18029_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e18103_
                                 (##structure-ref
                                  _super18101_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e18103_
                                ((lambda (_g1810518107_)
                                   (make-symbol '":" _g1810518107_))
                                 _$e18103_)
                                ':<root>)))))
                   (let ((_ns18112_
                          (##structure-ref
                           _ctx18029_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr18114_
                            (symbol->string
                             (##structure-ref
                              _ctx18029_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg18121_
                              (let ((_$e18116_
                                     (string-rindex _idstr18114_ '#\/)))
                                (if _$e18116_
                                    ((lambda (_x18119_)
                                       (string->symbol
                                        (substring _idstr18114_ '0 _x18119_)))
                                     _$e18116_)
                                    '#f))))
                         (let ((_rt18123_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx18029_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path18099_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path18099_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude18110_)
                                    (if _pkg18121_
                                        (displayln '"package:" '" " _pkg18121_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns18112_)
                                    (newline)
                                    (pretty-print _code18097_)
                                    (if _rt18123_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt18123_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi18032_
               (lambda (_part18037_)
                 (let ((_part1803818051_ _part18037_))
                   (let ((_E1804018055_
                          (lambda ()
                            (error '"No clause matching" _part1803818051_))))
                     (let ((_K1804118066_
                            (lambda (_code18058_
                                     _n18059_
                                     _phi18060_
                                     _phi-ctx18061_)
                              (let ((_code18064_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code18058_))
                                      gx#current-expander-context
                                      _phi-ctx18061_
                                      gx#current-expander-phi
                                      _phi18060_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx18029_
                                  _n18059_
                                  '".scm")
                                 _code18064_)))))
                       (if (##pair? _part1803818051_)
                           (let ((_hd1804218069_ (##car _part1803818051_))
                                 (_tl1804318071_ (##cdr _part1803818051_)))
                             (let ((_phi-ctx18074_ _hd1804218069_))
                               (if (##pair? _tl1804318071_)
                                   (let ((_hd1804418076_
                                          (##car _tl1804318071_))
                                         (_tl1804518078_
                                          (##cdr _tl1804318071_)))
                                     (let ((_phi18081_ _hd1804418076_))
                                       (if (##pair? _tl1804518078_)
                                           (let ((_hd1804618083_
                                                  (##car _tl1804518078_))
                                                 (_tl1804718085_
                                                  (##cdr _tl1804518078_)))
                                             (let ((_n18088_ _hd1804618083_))
                                               (if (##pair? _tl1804718085_)
                                                   (let ((_hd1804818090_
                                                          (##car _tl1804718085_))
                                                         (_tl1804918092_
                                                          (##cdr _tl1804718085_)))
                                                     (let ((_code18095_
                                                            _hd1804818090_))
                                                       (if (##null? _tl1804918092_)
                                                           (_K1804118066_
                                                            _code18095_
                                                            _n18088_
                                                            _phi18081_
                                                            _phi-ctx18074_)
                                                           (_E1804018055_))))
                                                   (_E1804018055_))))
                                           (_E1804018055_))))
                                   (_E1804018055_))))
                           (_E1804018055_))))))))
          (let ((_g18322_ (gxc#generate-meta-code _ctx18029_)))
            (begin
              (let ((_g18323_ (values-count _g18322_)))
                (if (not (fx= _g18323_ 2))
                    (error "Context expects 2 values" _g18323_)))
              (let ((_ssi-code18034_ (values-ref _g18322_ 0))
                    (_phi-code18035_ (values-ref _g18322_ 1)))
                (begin
                  (_compile-ssi18031_ _ssi-code18034_)
                  (for-each _compile-phi18032_ _phi-code18035_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx18012_)
      (let ((_path18014_ (gxc#compile-output-file _ctx18012_ '#f '".ssxi.ss")))
        (let ((_code18016_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx18012_ '11 gx#module-context::t '#f))))
          (let ((_idstr18018_
                 (symbol->string
                  (##structure-ref _ctx18012_ '1 gx#expander-context::t '#f))))
            (let ((_pkg18025_
                   (let ((_$e18020_ (string-rindex _idstr18018_ '#\/)))
                     (if _$e18020_
                         ((lambda (_x18023_)
                            (string->symbol
                             (substring _idstr18018_ '0 _x18023_)))
                          _$e18020_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path18014_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path18014_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg18025_
                           (displayln '"package: " _pkg18025_)
                           '#!void)
                       (newline)
                       (pretty-print _code18016_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx18005_)
      (let ((_state18007_
             (let ((__obj18317 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj18317 _ctx18005_)
                 __obj18317))))
        (let ((_ssi-code18009_
               (gxc#apply-generate-meta
                (##structure-ref _ctx18005_ '11 gx#module-context::t '#f)
                _state18007_)))
          (let ()
            (values _ssi-code18009_ (gxc#meta-state-end! _state18007_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx17998_)
      (let ((_lifts18000_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code18003_ (gxc#apply-generate-runtime-phi _stx17998_)))
             (if (null? (unbox _lifts18000_))
                 _code18003_
                 (cons 'begin
                       (foldr cons
                              (cons _code18003_ '())
                              (reverse (unbox _lifts18000_)))))))
         gxc#current-compile-lift
         _lifts18000_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx17994_)
      (let ((_modules17996_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx17994_ '11 gx#module-context::t '#f)
           _modules17996_)
          (reverse (unbox _modules17996_))))))
  (define gxc#compile-scm-file
    (lambda (_path17990_ _code17991_)
      (begin
        (gxc#verbose '"compile " _path17990_)
        (with-output-to-file
         (cons 'path: (cons _path17990_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code17991_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path17990_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path17990_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path17976_)
      (let ((_gsc-args17983_
             (let ((_$e17978_ (gxc#current-compile-gsc-options)))
               (if _$e17978_
                   ((lambda (_opts17981_)
                      (foldr cons (cons _path17976_ '()) _opts17981_))
                    _$e17978_)
                   (cons _path17976_ '())))))
        (let ((_proc17985_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args17983_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status17987_ (process-status _proc17985_)))
            (let ()
              (if (zero? _status17987_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path17976_
                   _status17987_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx17948_ _n17949_ _ext17950_)
      (let ((_module-relative-path17952_
             (lambda (_ctx17974_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx17974_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory17953_
               (lambda (_ctx17970_)
                 (path-directory
                  (let ((_mpath17972_
                         (##structure-ref
                          _ctx17970_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath17972_)
                        _mpath17972_
                        (last _mpath17972_)))))))
          (let ((_section-string17954_
                 (lambda (_n17968_)
                   (if (number? _n17968_)
                       (number->string _n17968_)
                       (if (symbol? _n17968_)
                           (symbol->string _n17968_)
                           (if (string? _n17968_)
                               _n17968_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n17968_)))))))
            (let ((_file-name17955_
                   (lambda (_path17966_)
                     (if _n17949_
                         (string-append
                          _path17966_
                          '"__"
                          (_section-string17954_ _n17949_)
                          _ext17950_)
                         (string-append _path17966_ _ext17950_)))))
              (let ((_file-path17956_
                     (lambda ()
                       (let ((_$e17961_ (gxc#current-compile-output-dir)))
                         (if _$e17961_
                             ((lambda (_outdir17964_)
                                (path-expand
                                 (_file-name17955_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx17948_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir17964_))
                              _$e17961_)
                             (path-expand
                              (_file-name17955_
                               (_module-relative-path17952_ _ctx17948_))
                              (_module-source-directory17953_ _ctx17948_)))))))
                (let ((_path17958_ (_file-path17956_)))
                  (begin
                    (create-directory* (path-directory _path17958_))
                    _path17958_))))))))))
