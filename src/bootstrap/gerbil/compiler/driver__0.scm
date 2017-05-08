(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-file
    (let ((_opt-lambda1039310407_
           (lambda (_srcpath10395_ _opts10396_)
             (begin
               (if (string? _srcpath10395_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath10395_))
               (let ((_outdir10398_ (pgetq 'output-dir: _opts10396_))
                     (_invoke-gsc?10399_ (pgetq 'invoke-gsc: _opts10396_))
                     (_gsc-options10400_ (pgetq 'gsc-options: _opts10396_))
                     (_keep-scm?10401_ (pgetq 'keep-scm: _opts10396_))
                     (_verbosity10402_ (pgetq 'verbose: _opts10396_))
                     (_optimize10403_ (pgetq 'optimize: _opts10396_))
                     (_gen-ssxi10404_ (pgetq 'generate-ssxi: _opts10396_)))
                 (begin
                   (if _outdir10398_ (create-directory* _outdir10398_) '#!void)
                   (if _optimize10403_ (gxc#optimizer-info-init!) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile exe " _srcpath10395_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath10395_))))
                    gxc#current-compile-output-dir
                    _outdir10398_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?10399_
                    gxc#current-compile-gsc-options
                    _gsc-options10400_
                    gxc#current-compile-keep-scm
                    _keep-scm?10401_
                    gxc#current-compile-verbose
                    _verbosity10402_
                    gxc#current-compile-optimize
                    _optimize10403_
                    gxc#current-compile-generate-ssxi
                    _gen-ssxi10404_)))))))
      (lambda _g10417_
        (let ((_g10416_ (length _g10417_)))
          (cond ((fx= _g10416_ 1)
                 (apply (lambda (_srcpath10410_)
                          (let ((_opts10412_ '()))
                            (_opt-lambda1039310407_
                             _srcpath10410_
                             _opts10412_)))
                        _g10417_))
                ((fx= _g10416_ 2)
                 (apply (lambda (_srcpath10414_ _opts10415_)
                          (_opt-lambda1039310407_ _srcpath10414_ _opts10415_))
                        _g10417_))
                (else (error "No clause matching arguments" _g10417_)))))))
  (define gxc#compile-exe-stub
    (let ((_opt-lambda1037210384_
           (lambda (_srcpath10374_ _opts10375_)
             (begin
               (if (string? _srcpath10374_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath10374_))
               (let ((_outdir10377_ (pgetq 'output-dir: _opts10375_))
                     (_invoke-gsc?10378_ (pgetq 'invoke-gsc: _opts10375_))
                     (_gsc-options10379_ (pgetq 'gsc-options: _opts10375_))
                     (_keep-scm?10380_ (pgetq 'keep-scm: _opts10375_))
                     (_verbosity10381_ (pgetq 'verbose: _opts10375_)))
                 (begin
                   (if _outdir10377_ (create-directory* _outdir10377_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath10374_)
                        (gxc#compile-exe-stub-module
                         (gx#import-module _srcpath10374_)
                         _opts10375_)))
                    gxc#current-compile-output-dir
                    _outdir10377_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?10378_
                    gxc#current-compile-gsc-options
                    _gsc-options10379_
                    gxc#current-compile-keep-scm
                    _keep-scm?10380_
                    gxc#current-compile-verbose
                    _verbosity10381_)))))))
      (lambda _g10419_
        (let ((_g10418_ (length _g10419_)))
          (cond ((fx= _g10418_ 1)
                 (apply (lambda (_srcpath10387_)
                          (let ((_opts10389_ '()))
                            (_opt-lambda1037210384_
                             _srcpath10387_
                             _opts10389_)))
                        _g10419_))
                ((fx= _g10418_ 2)
                 (apply (lambda (_srcpath10391_ _opts10392_)
                          (_opt-lambda1037210384_ _srcpath10391_ _opts10392_))
                        _g10419_))
                (else (error "No clause matching arguments" _g10419_)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx10266_ _opts10267_)
      (let ((_find-export-binding10269_
             (lambda (_id10323_ _exports10324_)
               (let ((_$e10370_
                      (find (lambda (_e1032510327_)
                              (let ((_g1032910339_ _e1032510327_))
                                (let ((_E1033210343_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1032910339_))))
                                  (let ((_else1033110347_ (lambda () '#f)))
                                    (let ((_K1033310351_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1032910339_)
                                          (let ((_e1033410354_
                                                 (##vector-ref
                                                  _g1032910339_
                                                  '1)))
                                            (let ((_e1033510357_
                                                   (##vector-ref
                                                    _g1032910339_
                                                    '2)))
                                              (let ((_e1033610360_
                                                     (##vector-ref
                                                      _g1032910339_
                                                      '3)))
                                                (if (##eq? _e1033610360_ '0)
                                                    (let ((_e1033710363_
                                                           (##vector-ref
                                                            _g1032910339_
                                                            '4)))
                                                      (if ((lambda (_g1036510367_)
                                                             (eq? _g1036510367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10323_))
                   _e1033710363_)
                  (_K1033310351_)
                  (_else1033110347_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1033110347_)))))
                                          (_else1033110347_)))))))
                            _exports10324_)))
                 (if _$e10370_
                     (gx#core-resolve-module-export _$e10370_)
                     '#f)))))
        (let ((_generate-stub10270_
               (lambda ()
                 (let ((_mod-str10311_
                        (symbol->string (gx#expander-context-id _ctx10266_))))
                   (let ((_mod-rt10313_
                          (string-append _mod-str10311_ '"__rt")))
                     (let ((_mod-main10320_
                            (let ((_$e10315_
                                   (_find-export-binding10269_
                                    'main
                                    (gx#module-context-export _ctx10266_))))
                              (if _$e10315_
                                  ((lambda (_bind10318_)
                                     (begin
                                       (if (gx#runtime-binding? _bind10318_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (gx#binding-id _bind10318_)))
                                   _$e10315_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (gx#expander-context-id _ctx10266_))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt10313_
                                              (cons (cons 'quote
                                                          (cons _mod-main10320_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub10271_
                 (lambda (_output-scm10298_ _output-bin10299_)
                   (let ((_init-stub10301_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args10303_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin10299_
                                              (cons _init-stub10301_
                                                    (cons _output-scm10298_
                                                          '())))))))
                       (let ((_proc10305_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args10303_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status10307_ (process-status _proc10305_)))
                           (let ()
                             (if (zero? _status10307_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm10298_
                                  _output-bin10299_
                                  _status10307_))))))))))
            (let ((_output-bin10293_
                   (let ((_$e10273_ (pgetq 'output-file: _opts10267_)))
                     (if _$e10273_
                         (values _$e10273_)
                         (let ((_mod-str10276_
                                (symbol->string
                                 (gx#expander-context-id _ctx10266_))))
                           (let ((_mod-name10283_
                                  (let ((_$e10278_
                                         (string-rindex _mod-str10276_ '#\/)))
                                    (if _$e10278_
                                        ((lambda (_ix10281_)
                                           (substring
                                            _mod-str10276_
                                            (fx1+ _ix10281_)
                                            (string-length _mod-str10276_)))
                                         _$e10278_)
                                        _mod-str10276_))))
                             (let ()
                               (let ((_$e10286_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e10286_
                                     ((lambda (_g1028810290_)
                                        (path-expand
                                         _mod-name10283_
                                         _g1028810290_))
                                      _$e10286_)
                                     _mod-name10283_)))))))))
              (let ((_output-scm10295_
                     (string-append _output-bin10293_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm10295_
                     _generate-stub10270_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub10271_
                         _output-scm10295_
                         _output-bin10293_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm10295_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx10263_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx10263_))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx10263_)
               '#!void)
           (gxc#collect-bindings _ctx10263_)
           (gxc#compile-runtime-code _ctx10263_)
           (gxc#compile-meta-code _ctx10263_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx10263_)
               '#!void)))
       gx#current-expander-context
       _ctx10263_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (gxc#make-symbol-table)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx10261_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx10261_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx10228_)
      (let ((_generate-runtime-code10231_
             (lambda (_ctx10246_ _code10247_)
               (let ((_runtime-code10250_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code10247_))
                       gx#current-expander-context
                       _ctx10246_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx10246_ '0 '".scm")
                  _runtime-code10250_)))))
        (let ((_generate-loader-code10232_
               (lambda (_ctx10236_ _code10237_ _rt10238_)
                 (let ((_loader-code10241_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code10237_))
                         gx#current-expander-context
                         _ctx10236_)))
                   (let ((_loader-code10243_
                          (if _rt10238_
                              (cons 'begin
                                    (cons _loader-code10241_
                                          (cons (cons 'load-module
                                                      (cons _rt10238_ '()))
                                                '())))
                              _loader-code10241_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx10236_ 'rt '".scm")
                        _loader-code10243_)))))))
          (let ((_compile110230_
                 (lambda (_ctx10252_)
                   (let ((_code10254_ (gx#module-context-code _ctx10252_)))
                     (let ((_rt10258_
                            (if (gxc#apply-find-runtime-code _code10254_)
                                (let ((_idstr10256_
                                       (symbol->string
                                        (gx#expander-context-id _ctx10252_))))
                                  (string-append _idstr10256_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt10258_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx10252_
                                  _rt10258_)
                                 (_generate-runtime-code10231_
                                  _ctx10252_
                                  _code10254_))
                               '#!void)
                           (_generate-loader-code10232_
                            _ctx10252_
                            _code10254_
                            _rt10258_))))))))
            (let ((_all-modules10234_
                   (cons _ctx10228_ (gxc#lift-nested-modules _ctx10228_))))
              (for-each _compile110230_ _all-modules10234_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx10130_)
      (let ((_compile-ssi10132_
             (lambda (_code10198_)
               (let ((_path10200_
                      (gxc#compile-output-file _ctx10130_ '#f '".ssi")))
                 (let ((_prelude10211_
                        (let ((_super10202_ (gx#phi-context-super _ctx10130_)))
                          (let ((_$e10204_
                                 (gx#expander-context-id _super10202_)))
                            (if _$e10204_
                                ((lambda (_g1020610208_)
                                   (make-symbol '":" _g1020610208_))
                                 _$e10204_)
                                ':<root>)))))
                   (let ((_ns10213_ (gx#module-context-ns _ctx10130_)))
                     (let ((_idstr10215_
                            (symbol->string
                             (gx#expander-context-id _ctx10130_))))
                       (let ((_pkg10222_
                              (let ((_$e10217_
                                     (string-rindex _idstr10215_ '#\/)))
                                (if _$e10217_
                                    ((lambda (_x10220_)
                                       (string->symbol
                                        (substring _idstr10215_ '0 _x10220_)))
                                     _$e10217_)
                                    '#f))))
                         (let ((_rt10224_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx10130_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path10200_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path10200_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude10211_)
                                    (if _pkg10222_
                                        (displayln '"package:" '" " _pkg10222_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns10213_)
                                    (newline)
                                    (pretty-print _code10198_)
                                    (if _rt10224_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt10224_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi10133_
               (lambda (_part10138_)
                 (let ((_part1013910152_ _part10138_))
                   (let ((_E1014110156_
                          (lambda ()
                            (error '"No clause matching" _part1013910152_))))
                     (let ((_K1014210167_
                            (lambda (_code10159_
                                     _n10160_
                                     _phi10161_
                                     _phi-ctx10162_)
                              (let ((_code10165_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code10159_))
                                      gx#current-expander-context
                                      _phi-ctx10162_
                                      gx#current-expander-phi
                                      _phi10161_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx10130_
                                  _n10160_
                                  '".scm")
                                 _code10165_)))))
                       (if (##pair? _part1013910152_)
                           (let ((_hd1014310170_ (##car _part1013910152_))
                                 (_tl1014410172_ (##cdr _part1013910152_)))
                             (let ((_phi-ctx10175_ _hd1014310170_))
                               (if (##pair? _tl1014410172_)
                                   (let ((_hd1014510177_
                                          (##car _tl1014410172_))
                                         (_tl1014610179_
                                          (##cdr _tl1014410172_)))
                                     (let ((_phi10182_ _hd1014510177_))
                                       (if (##pair? _tl1014610179_)
                                           (let ((_hd1014710184_
                                                  (##car _tl1014610179_))
                                                 (_tl1014810186_
                                                  (##cdr _tl1014610179_)))
                                             (let ((_n10189_ _hd1014710184_))
                                               (if (##pair? _tl1014810186_)
                                                   (let ((_hd1014910191_
                                                          (##car _tl1014810186_))
                                                         (_tl1015010193_
                                                          (##cdr _tl1014810186_)))
                                                     (let ((_code10196_
                                                            _hd1014910191_))
                                                       (if (##null? _tl1015010193_)
                                                           (_K1014210167_
                                                            _code10196_
                                                            _n10189_
                                                            _phi10182_
                                                            _phi-ctx10175_)
                                                           (_E1014110156_))))
                                                   (_E1014110156_))))
                                           (_E1014110156_))))
                                   (_E1014110156_))))
                           (_E1014110156_))))))))
          (let ((_g10420_ (gxc#generate-meta-code _ctx10130_)))
            (begin
              (let ((_g10421_ (values-count _g10420_)))
                (if (not (fx= _g10421_ 2))
                    (error "Context expects 2 values" _g10421_)))
              (let ((_ssi-code10135_ (values-ref _g10420_ 0))
                    (_phi-code10136_ (values-ref _g10420_ 1)))
                (begin
                  (_compile-ssi10132_ _ssi-code10135_)
                  (for-each _compile-phi10133_ _phi-code10136_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx10113_)
      (let ((_path10115_ (gxc#compile-output-file _ctx10113_ '#f '".ssxi.ss")))
        (let ((_code10117_
               (gxc#apply-generate-ssxi (gx#module-context-code _ctx10113_))))
          (let ((_idstr10119_
                 (symbol->string (gx#expander-context-id _ctx10113_))))
            (let ((_pkg10126_
                   (let ((_$e10121_ (string-rindex _idstr10119_ '#\/)))
                     (if _$e10121_
                         ((lambda (_x10124_)
                            (string->symbol
                             (substring _idstr10119_ '0 _x10124_)))
                          _$e10121_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path10115_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path10115_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg10126_
                           (displayln '"package: " _pkg10126_)
                           '#!void)
                       (newline)
                       (pretty-print _code10117_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx10106_)
      (let ((_state10108_ (gxc#make-meta-state _ctx10106_)))
        (let ((_ssi-code10110_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx10106_)
                _state10108_)))
          (let ()
            (values _ssi-code10110_ (gxc#meta-state-end! _state10108_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx10099_)
      (let ((_lifts10101_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code10104_ (gxc#apply-generate-runtime-phi _stx10099_)))
             (if (null? (unbox _lifts10101_))
                 _code10104_
                 (cons 'begin
                       (foldr cons
                              (cons _code10104_ '())
                              (reverse (unbox _lifts10101_)))))))
         gxc#current-compile-lift
         _lifts10101_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx10095_)
      (let ((_modules10097_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx10095_)
           _modules10097_)
          (reverse (unbox _modules10097_))))))
  (define gxc#compile-scm-file
    (lambda (_path10091_ _code10092_)
      (begin
        (gxc#verbose '"compile " _path10091_)
        (with-output-to-file
         (cons 'path: (cons _path10091_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code10092_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path10091_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path10091_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path10077_)
      (let ((_gsc-args10084_
             (let ((_$e10079_ (gxc#current-compile-gsc-options)))
               (if _$e10079_
                   ((lambda (_opts10082_)
                      (foldr cons (cons _path10077_ '()) _opts10082_))
                    _$e10079_)
                   (cons _path10077_ '())))))
        (let ((_proc10086_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args10084_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status10088_ (process-status _proc10086_)))
            (let ()
              (if (zero? _status10088_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path10077_
                   _status10088_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx10049_ _n10050_ _ext10051_)
      (let ((_module-relative-path10053_
             (lambda (_ctx10075_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx10075_))))))
        (let ((_module-source-directory10054_
               (lambda (_ctx10071_)
                 (path-directory
                  (let ((_mpath10073_ (gx#module-context-path _ctx10071_)))
                    (if (string? _mpath10073_)
                        _mpath10073_
                        (last _mpath10073_)))))))
          (let ((_section-string10055_
                 (lambda (_n10069_)
                   (if (number? _n10069_)
                       (number->string _n10069_)
                       (if (symbol? _n10069_)
                           (symbol->string _n10069_)
                           (if (string? _n10069_)
                               _n10069_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n10069_)))))))
            (let ((_file-name10056_
                   (lambda (_path10067_)
                     (if _n10050_
                         (string-append
                          _path10067_
                          '"__"
                          (_section-string10055_ _n10050_)
                          _ext10051_)
                         (string-append _path10067_ _ext10051_)))))
              (let ((_file-path10057_
                     (lambda ()
                       (let ((_$e10062_ (gxc#current-compile-output-dir)))
                         (if _$e10062_
                             ((lambda (_outdir10065_)
                                (path-expand
                                 (_file-name10056_
                                  (symbol->string
                                   (gx#expander-context-id _ctx10049_)))
                                 _outdir10065_))
                              _$e10062_)
                             (path-expand
                              (_file-name10056_
                               (_module-relative-path10053_ _ctx10049_))
                              (_module-source-directory10054_ _ctx10049_)))))))
                (let ((_path10059_ (_file-path10057_)))
                  (begin
                    (create-directory* (path-directory _path10059_))
                    _path10059_))))))))))
