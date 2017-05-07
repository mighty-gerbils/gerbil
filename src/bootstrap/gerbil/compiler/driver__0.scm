(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#compile-file
    (let ((_opt-lambda62396252_
           (lambda (_srcpath6241_ _opts6242_)
             (begin
               (if (string? _srcpath6241_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath6241_))
               (let ((_outdir6244_ (pgetq 'output-dir: _opts6242_))
                     (_invoke-gsc?6245_ (pgetq 'invoke-gsc: _opts6242_))
                     (_gsc-options6246_ (pgetq 'gsc-options: _opts6242_))
                     (_keep-scm?6247_ (pgetq 'keep-scm: _opts6242_))
                     (_verbosity6248_ (pgetq 'verbose: _opts6242_))
                     (_optimize6249_ (pgetq 'optimize: _opts6242_)))
                 (begin
                   (if _outdir6244_ (create-directory* _outdir6244_) '#!void)
                   (if _optimize6249_ (gxc#optimizer-info-init!) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile exe " _srcpath6241_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath6241_))))
                    gxc#current-compile-output-dir
                    _outdir6244_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?6245_
                    gxc#current-compile-gsc-options
                    _gsc-options6246_
                    gxc#current-compile-keep-scm
                    _keep-scm?6247_
                    gxc#current-compile-verbose
                    _verbosity6248_
                    gxc#current-compile-optimize
                    _optimize6249_)))))))
      (lambda _g6262_
        (let ((_g6261_ (length _g6262_)))
          (cond ((fx= _g6261_ 1)
                 (apply (lambda (_srcpath6255_)
                          (let ((_opts6257_ '()))
                            (_opt-lambda62396252_ _srcpath6255_ _opts6257_)))
                        _g6262_))
                ((fx= _g6261_ 2)
                 (apply (lambda (_srcpath6259_ _opts6260_)
                          (_opt-lambda62396252_ _srcpath6259_ _opts6260_))
                        _g6262_))
                (else (error "No clause matching arguments" _g6262_)))))))
  (define gxc#compile-exe-stub
    (let ((_opt-lambda62186230_
           (lambda (_srcpath6220_ _opts6221_)
             (begin
               (if (string? _srcpath6220_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath6220_))
               (let ((_outdir6223_ (pgetq 'output-dir: _opts6221_))
                     (_invoke-gsc?6224_ (pgetq 'invoke-gsc: _opts6221_))
                     (_gsc-options6225_ (pgetq 'gsc-options: _opts6221_))
                     (_keep-scm?6226_ (pgetq 'keep-scm: _opts6221_))
                     (_verbosity6227_ (pgetq 'verbose: _opts6221_)))
                 (begin
                   (if _outdir6223_ (create-directory* _outdir6223_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath6220_)
                        (gxc#compile-exe-stub-module
                         (gx#import-module _srcpath6220_)
                         _opts6221_)))
                    gxc#current-compile-output-dir
                    _outdir6223_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?6224_
                    gxc#current-compile-gsc-options
                    _gsc-options6225_
                    gxc#current-compile-keep-scm
                    _keep-scm?6226_
                    gxc#current-compile-verbose
                    _verbosity6227_)))))))
      (lambda _g6264_
        (let ((_g6263_ (length _g6264_)))
          (cond ((fx= _g6263_ 1)
                 (apply (lambda (_srcpath6233_)
                          (let ((_opts6235_ '()))
                            (_opt-lambda62186230_ _srcpath6233_ _opts6235_)))
                        _g6264_))
                ((fx= _g6263_ 2)
                 (apply (lambda (_srcpath6237_ _opts6238_)
                          (_opt-lambda62186230_ _srcpath6237_ _opts6238_))
                        _g6264_))
                (else (error "No clause matching arguments" _g6264_)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx6112_ _opts6113_)
      (let ((_find-export-binding6115_
             (lambda (_id6169_ _exports6170_)
               (let ((_$e6216_
                      (find (lambda (_e61716173_)
                              (let ((_g61756185_ _e61716173_))
                                (let ((_E61786189_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g61756185_))))
                                  (let ((_else61776193_ (lambda () '#f)))
                                    (let ((_K61796197_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g61756185_)
                                          (let ((_e61806200_
                                                 (##vector-ref
                                                  _g61756185_
                                                  '1)))
                                            (let ((_e61816203_
                                                   (##vector-ref
                                                    _g61756185_
                                                    '2)))
                                              (let ((_e61826206_
                                                     (##vector-ref
                                                      _g61756185_
                                                      '3)))
                                                (if (##eq? _e61826206_ '0)
                                                    (let ((_e61836209_
                                                           (##vector-ref
                                                            _g61756185_
                                                            '4)))
                                                      (if ((lambda (_g62116213_)
                                                             (eq? _g62116213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id6169_))
                   _e61836209_)
                  (_K61796197_)
                  (_else61776193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else61776193_)))))
                                          (_else61776193_)))))))
                            _exports6170_)))
                 (if _$e6216_ (gx#core-resolve-module-export _$e6216_) '#f)))))
        (let ((_generate-stub6116_
               (lambda ()
                 (let ((_mod-str6157_
                        (symbol->string (gx#expander-context-id _ctx6112_))))
                   (let ((_mod-rt6159_ (string-append _mod-str6157_ '"__rt")))
                     (let ((_mod-main6166_
                            (let ((_$e6161_
                                   (_find-export-binding6115_
                                    'main
                                    (gx#module-context-export _ctx6112_))))
                              (if _$e6161_
                                  ((lambda (_bind6164_)
                                     (begin
                                       (if (gx#runtime-binding? _bind6164_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (gx#binding-id _bind6164_)))
                                   _$e6161_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (gx#expander-context-id _ctx6112_))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt6159_
                                              (cons (cons 'quote
                                                          (cons _mod-main6166_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub6117_
                 (lambda (_output-scm6144_ _output-bin6145_)
                   (let ((_init-stub6147_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args6149_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin6145_
                                              (cons _init-stub6147_
                                                    (cons _output-scm6144_
                                                          '())))))))
                       (let ((_proc6151_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args6149_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status6153_ (process-status _proc6151_)))
                           (let ()
                             (if (zero? _status6153_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm6144_
                                  _output-bin6145_
                                  _status6153_))))))))))
            (let ((_output-bin6139_
                   (let ((_$e6119_ (pgetq 'output-file: _opts6113_)))
                     (if _$e6119_
                         (values _$e6119_)
                         (let ((_mod-str6122_
                                (symbol->string
                                 (gx#expander-context-id _ctx6112_))))
                           (let ((_mod-name6129_
                                  (let ((_$e6124_
                                         (string-rindex _mod-str6122_ '#\/)))
                                    (if _$e6124_
                                        ((lambda (_ix6127_)
                                           (substring
                                            _mod-str6122_
                                            (fx1+ _ix6127_)
                                            (string-length _mod-str6122_)))
                                         _$e6124_)
                                        _mod-str6122_))))
                             (let ()
                               (let ((_$e6132_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e6132_
                                     ((lambda (_g61346136_)
                                        (path-expand
                                         _mod-name6129_
                                         _g61346136_))
                                      _$e6132_)
                                     _mod-name6129_)))))))))
              (let ((_output-scm6141_
                     (string-append _output-bin6139_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file _output-scm6141_ _generate-stub6116_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub6117_ _output-scm6141_ _output-bin6139_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm6141_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx6109_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx6109_))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx6109_)
               '#!void)
           (gxc#collect-bindings _ctx6109_)
           (gxc#compile-runtime-code _ctx6109_)
           (gxc#compile-meta-code _ctx6109_)
           (if (gxc#current-compile-optimize)
               (gxc#compile-ssxi-code _ctx6109_)
               '#!void)))
       gx#current-expander-context
       _ctx6109_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (gxc#make-symbol-table)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx6107_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx6107_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx6074_)
      (let ((_generate-runtime-code6077_
             (lambda (_ctx6092_ _code6093_)
               (let ((_runtime-code6096_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code6093_))
                       gx#current-expander-context
                       _ctx6092_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx6092_ '0 '".scm")
                  _runtime-code6096_)))))
        (let ((_generate-loader-code6078_
               (lambda (_ctx6082_ _code6083_ _rt6084_)
                 (let ((_loader-code6087_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code6083_))
                         gx#current-expander-context
                         _ctx6082_)))
                   (let ((_loader-code6089_
                          (if _rt6084_
                              (cons 'begin
                                    (cons _loader-code6087_
                                          (cons (cons 'load-module
                                                      (cons _rt6084_ '()))
                                                '())))
                              _loader-code6087_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx6082_ 'rt '".scm")
                        _loader-code6089_)))))))
          (let ((_compile16076_
                 (lambda (_ctx6098_)
                   (let ((_code6100_ (gx#module-context-code _ctx6098_)))
                     (let ((_rt6104_
                            (if (gxc#apply-find-runtime-code _code6100_)
                                (let ((_idstr6102_
                                       (symbol->string
                                        (gx#expander-context-id _ctx6098_))))
                                  (string-append _idstr6102_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt6104_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx6098_
                                  _rt6104_)
                                 (_generate-runtime-code6077_
                                  _ctx6098_
                                  _code6100_))
                               '#!void)
                           (_generate-loader-code6078_
                            _ctx6098_
                            _code6100_
                            _rt6104_))))))))
            (let ((_all-modules6080_
                   (cons _ctx6074_ (gxc#lift-nested-modules _ctx6074_))))
              (for-each _compile16076_ _all-modules6080_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx5976_)
      (let ((_compile-ssi5978_
             (lambda (_code6044_)
               (let ((_path6046_
                      (gxc#compile-output-file _ctx5976_ '#f '".ssi")))
                 (let ((_prelude6057_
                        (let ((_super6048_ (gx#phi-context-super _ctx5976_)))
                          (let ((_$e6050_
                                 (gx#expander-context-id _super6048_)))
                            (if _$e6050_
                                ((lambda (_g60526054_)
                                   (make-symbol '":" _g60526054_))
                                 _$e6050_)
                                ':<root>)))))
                   (let ((_ns6059_ (gx#module-context-ns _ctx5976_)))
                     (let ((_idstr6061_
                            (symbol->string
                             (gx#expander-context-id _ctx5976_))))
                       (let ((_pkg6068_
                              (let ((_$e6063_
                                     (string-rindex _idstr6061_ '#\/)))
                                (if _$e6063_
                                    ((lambda (_x6066_)
                                       (string->symbol
                                        (substring _idstr6061_ '0 _x6066_)))
                                     _$e6063_)
                                    '#f))))
                         (let ((_rt6070_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx5976_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path6046_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path6046_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude6057_)
                                    (if _pkg6068_
                                        (displayln '"package:" '" " _pkg6068_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns6059_)
                                    (newline)
                                    (pretty-print _code6044_)
                                    (if _rt6070_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt6070_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi5979_
               (lambda (_part5984_)
                 (let ((_part59855998_ _part5984_))
                   (let ((_E59876002_
                          (lambda ()
                            (error '"No clause matching" _part59855998_))))
                     (let ((_K59886013_
                            (lambda (_code6005_
                                     _n6006_
                                     _phi6007_
                                     _phi-ctx6008_)
                              (let ((_code6011_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code6005_))
                                      gx#current-expander-context
                                      _phi-ctx6008_
                                      gx#current-expander-phi
                                      _phi6007_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx5976_
                                  _n6006_
                                  '".scm")
                                 _code6011_)))))
                       (if (##pair? _part59855998_)
                           (let ((_hd59896016_ (##car _part59855998_))
                                 (_tl59906018_ (##cdr _part59855998_)))
                             (let ((_phi-ctx6021_ _hd59896016_))
                               (if (##pair? _tl59906018_)
                                   (let ((_hd59916023_ (##car _tl59906018_))
                                         (_tl59926025_ (##cdr _tl59906018_)))
                                     (let ((_phi6028_ _hd59916023_))
                                       (if (##pair? _tl59926025_)
                                           (let ((_hd59936030_
                                                  (##car _tl59926025_))
                                                 (_tl59946032_
                                                  (##cdr _tl59926025_)))
                                             (let ((_n6035_ _hd59936030_))
                                               (if (##pair? _tl59946032_)
                                                   (let ((_hd59956037_
                                                          (##car _tl59946032_))
                                                         (_tl59966039_
                                                          (##cdr _tl59946032_)))
                                                     (let ((_code6042_
                                                            _hd59956037_))
                                                       (if (##null? _tl59966039_)
                                                           (_K59886013_
                                                            _code6042_
                                                            _n6035_
                                                            _phi6028_
                                                            _phi-ctx6021_)
                                                           (_E59876002_))))
                                                   (_E59876002_))))
                                           (_E59876002_))))
                                   (_E59876002_))))
                           (_E59876002_))))))))
          (let ((_g6265_ (gxc#generate-meta-code _ctx5976_)))
            (begin
              (let ((_g6266_ (values-count _g6265_)))
                (if (not (fx= _g6266_ 2))
                    (error "Context expects 2 values" _g6266_)))
              (let ((_ssi-code5981_ (values-ref _g6265_ 0))
                    (_phi-code5982_ (values-ref _g6265_ 1)))
                (begin
                  (_compile-ssi5978_ _ssi-code5981_)
                  (for-each _compile-phi5979_ _phi-code5982_)))))))))
  (define gxc#compile-ssxi-code (lambda (_ctx5974_) (void)))
  (define gxc#generate-meta-code
    (lambda (_ctx5967_)
      (let ((_state5969_ (gxc#make-meta-state _ctx5967_)))
        (let ((_ssi-code5971_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx5967_)
                _state5969_)))
          (let ()
            (values _ssi-code5971_ (gxc#meta-state-end! _state5969_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx5960_)
      (let ((_lifts5962_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code5965_ (gxc#apply-generate-runtime-phi _stx5960_)))
             (if (null? (unbox _lifts5962_))
                 _code5965_
                 (cons 'begin
                       (foldr cons
                              (cons _code5965_ '())
                              (reverse (unbox _lifts5962_)))))))
         gxc#current-compile-lift
         _lifts5962_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx5956_)
      (let ((_modules5958_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx5956_)
           _modules5958_)
          (reverse (unbox _modules5958_))))))
  (define gxc#compile-scm-file
    (lambda (_path5952_ _code5953_)
      (begin
        (gxc#verbose '"compile " _path5952_)
        (with-output-to-file
         (cons 'path: (cons _path5952_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code5953_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path5952_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path5952_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path5938_)
      (let ((_gsc-args5945_
             (let ((_$e5940_ (gxc#current-compile-gsc-options)))
               (if _$e5940_
                   ((lambda (_opts5943_)
                      (foldr cons (cons _path5938_ '()) _opts5943_))
                    _$e5940_)
                   (cons _path5938_ '())))))
        (let ((_proc5947_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args5945_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status5949_ (process-status _proc5947_)))
            (let ()
              (if (zero? _status5949_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path5938_
                   _status5949_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx5910_ _n5911_ _ext5912_)
      (let ((_module-relative-path5914_
             (lambda (_ctx5936_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx5936_))))))
        (let ((_module-source-directory5915_
               (lambda (_ctx5932_)
                 (path-directory
                  (let ((_mpath5934_ (gx#module-context-path _ctx5932_)))
                    (if (string? _mpath5934_)
                        _mpath5934_
                        (last _mpath5934_)))))))
          (let ((_section-string5916_
                 (lambda (_n5930_)
                   (if (number? _n5930_)
                       (number->string _n5930_)
                       (if (symbol? _n5930_)
                           (symbol->string _n5930_)
                           (if (string? _n5930_)
                               _n5930_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n5930_)))))))
            (let ((_file-name5917_
                   (lambda (_path5928_)
                     (if _n5911_
                         (string-append
                          _path5928_
                          '"__"
                          (_section-string5916_ _n5911_)
                          _ext5912_)
                         (string-append _path5928_ _ext5912_)))))
              (let ((_file-path5918_
                     (lambda ()
                       (let ((_$e5923_ (gxc#current-compile-output-dir)))
                         (if _$e5923_
                             ((lambda (_outdir5926_)
                                (path-expand
                                 (_file-name5917_
                                  (symbol->string
                                   (gx#expander-context-id _ctx5910_)))
                                 _outdir5926_))
                              _$e5923_)
                             (path-expand
                              (_file-name5917_
                               (_module-relative-path5914_ _ctx5910_))
                              (_module-source-directory5915_ _ctx5910_)))))))
                (let ((_path5920_ (_file-path5918_)))
                  (begin
                    (create-directory* (path-directory _path5920_))
                    _path5920_))))))))))
