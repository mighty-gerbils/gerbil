(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-file
    (let ((_opt-lambda1131411328_
           (lambda (_srcpath11316_ _opts11317_)
             (begin
               (if (string? _srcpath11316_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath11316_))
               (let ((_outdir11319_ (pgetq 'output-dir: _opts11317_))
                     (_invoke-gsc?11320_ (pgetq 'invoke-gsc: _opts11317_))
                     (_gsc-options11321_ (pgetq 'gsc-options: _opts11317_))
                     (_keep-scm?11322_ (pgetq 'keep-scm: _opts11317_))
                     (_verbosity11323_ (pgetq 'verbose: _opts11317_))
                     (_optimize11324_ (pgetq 'optimize: _opts11317_))
                     (_gen-ssxi11325_ (pgetq 'generate-ssxi: _opts11317_)))
                 (begin
                   (if _outdir11319_ (create-directory* _outdir11319_) '#!void)
                   (if _optimize11324_ (gxc#optimizer-info-init!) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile exe " _srcpath11316_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath11316_))))
                    gxc#current-compile-output-dir
                    _outdir11319_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?11320_
                    gxc#current-compile-gsc-options
                    _gsc-options11321_
                    gxc#current-compile-keep-scm
                    _keep-scm?11322_
                    gxc#current-compile-verbose
                    _verbosity11323_
                    gxc#current-compile-optimize
                    _optimize11324_
                    gxc#current-compile-generate-ssxi
                    _gen-ssxi11325_)))))))
      (lambda _g11338_
        (let ((_g11337_ (length _g11338_)))
          (cond ((fx= _g11337_ 1)
                 (apply (lambda (_srcpath11331_)
                          (let ((_opts11333_ '()))
                            (_opt-lambda1131411328_
                             _srcpath11331_
                             _opts11333_)))
                        _g11338_))
                ((fx= _g11337_ 2)
                 (apply (lambda (_srcpath11335_ _opts11336_)
                          (_opt-lambda1131411328_ _srcpath11335_ _opts11336_))
                        _g11338_))
                (else (error "No clause matching arguments" _g11338_)))))))
  (define gxc#compile-exe-stub
    (let ((_opt-lambda1129311305_
           (lambda (_srcpath11295_ _opts11296_)
             (begin
               (if (string? _srcpath11295_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath11295_))
               (let ((_outdir11298_ (pgetq 'output-dir: _opts11296_))
                     (_invoke-gsc?11299_ (pgetq 'invoke-gsc: _opts11296_))
                     (_gsc-options11300_ (pgetq 'gsc-options: _opts11296_))
                     (_keep-scm?11301_ (pgetq 'keep-scm: _opts11296_))
                     (_verbosity11302_ (pgetq 'verbose: _opts11296_)))
                 (begin
                   (if _outdir11298_ (create-directory* _outdir11298_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath11295_)
                        (gxc#compile-exe-stub-module
                         (gx#import-module _srcpath11295_)
                         _opts11296_)))
                    gxc#current-compile-output-dir
                    _outdir11298_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?11299_
                    gxc#current-compile-gsc-options
                    _gsc-options11300_
                    gxc#current-compile-keep-scm
                    _keep-scm?11301_
                    gxc#current-compile-verbose
                    _verbosity11302_)))))))
      (lambda _g11340_
        (let ((_g11339_ (length _g11340_)))
          (cond ((fx= _g11339_ 1)
                 (apply (lambda (_srcpath11308_)
                          (let ((_opts11310_ '()))
                            (_opt-lambda1129311305_
                             _srcpath11308_
                             _opts11310_)))
                        _g11340_))
                ((fx= _g11339_ 2)
                 (apply (lambda (_srcpath11312_ _opts11313_)
                          (_opt-lambda1129311305_ _srcpath11312_ _opts11313_))
                        _g11340_))
                (else (error "No clause matching arguments" _g11340_)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx11187_ _opts11188_)
      (let ((_find-export-binding11190_
             (lambda (_id11244_ _exports11245_)
               (let ((_$e11291_
                      (find (lambda (_e1124611248_)
                              (let ((_g1125011260_ _e1124611248_))
                                (let ((_E1125311264_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1125011260_))))
                                  (let ((_else1125211268_ (lambda () '#f)))
                                    (let ((_K1125411272_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1125011260_)
                                          (let ((_e1125511275_
                                                 (##vector-ref
                                                  _g1125011260_
                                                  '1)))
                                            (let ((_e1125611278_
                                                   (##vector-ref
                                                    _g1125011260_
                                                    '2)))
                                              (let ((_e1125711281_
                                                     (##vector-ref
                                                      _g1125011260_
                                                      '3)))
                                                (if (##eq? _e1125711281_ '0)
                                                    (let ((_e1125811284_
                                                           (##vector-ref
                                                            _g1125011260_
                                                            '4)))
                                                      (if ((lambda (_g1128611288_)
                                                             (eq? _g1128611288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id11244_))
                   _e1125811284_)
                  (_K1125411272_)
                  (_else1125211268_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1125211268_)))))
                                          (_else1125211268_)))))))
                            _exports11245_)))
                 (if _$e11291_
                     (gx#core-resolve-module-export _$e11291_)
                     '#f)))))
        (let ((_generate-stub11191_
               (lambda ()
                 (let ((_mod-str11232_
                        (symbol->string
                         (##structure-ref
                          _ctx11187_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt11234_
                          (string-append _mod-str11232_ '"__rt")))
                     (let ((_mod-main11241_
                            (let ((_$e11236_
                                   (_find-export-binding11190_
                                    'main
                                    (##structure-ref
                                     _ctx11187_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e11236_
                                  ((lambda (_bind11239_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind11239_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind11239_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e11236_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx11187_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt11234_
                                              (cons (cons 'quote
                                                          (cons _mod-main11241_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub11192_
                 (lambda (_output-scm11219_ _output-bin11220_)
                   (let ((_init-stub11222_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args11224_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin11220_
                                              (cons _init-stub11222_
                                                    (cons _output-scm11219_
                                                          '())))))))
                       (let ((_proc11226_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args11224_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status11228_ (process-status _proc11226_)))
                           (let ()
                             (if (zero? _status11228_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm11219_
                                  _output-bin11220_
                                  _status11228_))))))))))
            (let ((_output-bin11214_
                   (let ((_$e11194_ (pgetq 'output-file: _opts11188_)))
                     (if _$e11194_
                         (values _$e11194_)
                         (let ((_mod-str11197_
                                (symbol->string
                                 (##structure-ref
                                  _ctx11187_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name11204_
                                  (let ((_$e11199_
                                         (string-rindex _mod-str11197_ '#\/)))
                                    (if _$e11199_
                                        ((lambda (_ix11202_)
                                           (substring
                                            _mod-str11197_
                                            (fx1+ _ix11202_)
                                            (string-length _mod-str11197_)))
                                         _$e11199_)
                                        _mod-str11197_))))
                             (let ()
                               (let ((_$e11207_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e11207_
                                     ((lambda (_g1120911211_)
                                        (path-expand
                                         _mod-name11204_
                                         _g1120911211_))
                                      _$e11207_)
                                     _mod-name11204_)))))))))
              (let ((_output-scm11216_
                     (string-append _output-bin11214_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm11216_
                     _generate-stub11191_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub11192_
                         _output-scm11216_
                         _output-bin11214_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm11216_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx11184_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx11184_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx11184_)
               '#!void)
           (gxc#collect-bindings _ctx11184_)
           (gxc#compile-runtime-code _ctx11184_)
           (gxc#compile-meta-code _ctx11184_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx11184_)
               '#!void)))
       gx#current-expander-context
       _ctx11184_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (make-struct-instance gxc#symbol-table::t)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx11182_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx11182_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx11149_)
      (let ((_generate-runtime-code11152_
             (lambda (_ctx11167_ _code11168_)
               (let ((_runtime-code11171_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code11168_))
                       gx#current-expander-context
                       _ctx11167_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx11167_ '0 '".scm")
                  _runtime-code11171_)))))
        (let ((_generate-loader-code11153_
               (lambda (_ctx11157_ _code11158_ _rt11159_)
                 (let ((_loader-code11162_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code11158_))
                         gx#current-expander-context
                         _ctx11157_)))
                   (let ((_loader-code11164_
                          (if _rt11159_
                              (cons 'begin
                                    (cons _loader-code11162_
                                          (cons (cons 'load-module
                                                      (cons _rt11159_ '()))
                                                '())))
                              _loader-code11162_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx11157_ 'rt '".scm")
                        _loader-code11164_)))))))
          (let ((_compile111151_
                 (lambda (_ctx11173_)
                   (let ((_code11175_
                          (##structure-ref
                           _ctx11173_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt11179_
                            (if (gxc#apply-find-runtime-code _code11175_)
                                (let ((_idstr11177_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx11173_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr11177_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt11179_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx11173_
                                  _rt11179_)
                                 (_generate-runtime-code11152_
                                  _ctx11173_
                                  _code11175_))
                               '#!void)
                           (_generate-loader-code11153_
                            _ctx11173_
                            _code11175_
                            _rt11179_))))))))
            (let ((_all-modules11155_
                   (cons _ctx11149_ (gxc#lift-nested-modules _ctx11149_))))
              (for-each _compile111151_ _all-modules11155_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx11051_)
      (let ((_compile-ssi11053_
             (lambda (_code11119_)
               (let ((_path11121_
                      (gxc#compile-output-file _ctx11051_ '#f '".ssi")))
                 (let ((_prelude11132_
                        (let ((_super11123_
                               (##structure-ref
                                _ctx11051_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e11125_
                                 (##structure-ref
                                  _super11123_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e11125_
                                ((lambda (_g1112711129_)
                                   (make-symbol '":" _g1112711129_))
                                 _$e11125_)
                                ':<root>)))))
                   (let ((_ns11134_
                          (##structure-ref
                           _ctx11051_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr11136_
                            (symbol->string
                             (##structure-ref
                              _ctx11051_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg11143_
                              (let ((_$e11138_
                                     (string-rindex _idstr11136_ '#\/)))
                                (if _$e11138_
                                    ((lambda (_x11141_)
                                       (string->symbol
                                        (substring _idstr11136_ '0 _x11141_)))
                                     _$e11138_)
                                    '#f))))
                         (let ((_rt11145_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx11051_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path11121_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path11121_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude11132_)
                                    (if _pkg11143_
                                        (displayln '"package:" '" " _pkg11143_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns11134_)
                                    (newline)
                                    (pretty-print _code11119_)
                                    (if _rt11145_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt11145_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi11054_
               (lambda (_part11059_)
                 (let ((_part1106011073_ _part11059_))
                   (let ((_E1106211077_
                          (lambda ()
                            (error '"No clause matching" _part1106011073_))))
                     (let ((_K1106311088_
                            (lambda (_code11080_
                                     _n11081_
                                     _phi11082_
                                     _phi-ctx11083_)
                              (let ((_code11086_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code11080_))
                                      gx#current-expander-context
                                      _phi-ctx11083_
                                      gx#current-expander-phi
                                      _phi11082_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx11051_
                                  _n11081_
                                  '".scm")
                                 _code11086_)))))
                       (if (##pair? _part1106011073_)
                           (let ((_hd1106411091_ (##car _part1106011073_))
                                 (_tl1106511093_ (##cdr _part1106011073_)))
                             (let ((_phi-ctx11096_ _hd1106411091_))
                               (if (##pair? _tl1106511093_)
                                   (let ((_hd1106611098_
                                          (##car _tl1106511093_))
                                         (_tl1106711100_
                                          (##cdr _tl1106511093_)))
                                     (let ((_phi11103_ _hd1106611098_))
                                       (if (##pair? _tl1106711100_)
                                           (let ((_hd1106811105_
                                                  (##car _tl1106711100_))
                                                 (_tl1106911107_
                                                  (##cdr _tl1106711100_)))
                                             (let ((_n11110_ _hd1106811105_))
                                               (if (##pair? _tl1106911107_)
                                                   (let ((_hd1107011112_
                                                          (##car _tl1106911107_))
                                                         (_tl1107111114_
                                                          (##cdr _tl1106911107_)))
                                                     (let ((_code11117_
                                                            _hd1107011112_))
                                                       (if (##null? _tl1107111114_)
                                                           (_K1106311088_
                                                            _code11117_
                                                            _n11110_
                                                            _phi11103_
                                                            _phi-ctx11096_)
                                                           (_E1106211077_))))
                                                   (_E1106211077_))))
                                           (_E1106211077_))))
                                   (_E1106211077_))))
                           (_E1106211077_))))))))
          (let ((_g11341_ (gxc#generate-meta-code _ctx11051_)))
            (begin
              (let ((_g11342_ (values-count _g11341_)))
                (if (not (fx= _g11342_ 2))
                    (error "Context expects 2 values" _g11342_)))
              (let ((_ssi-code11056_ (values-ref _g11341_ 0))
                    (_phi-code11057_ (values-ref _g11341_ 1)))
                (begin
                  (_compile-ssi11053_ _ssi-code11056_)
                  (for-each _compile-phi11054_ _phi-code11057_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx11034_)
      (let ((_path11036_ (gxc#compile-output-file _ctx11034_ '#f '".ssxi.ss")))
        (let ((_code11038_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx11034_ '11 gx#module-context::t '#f))))
          (let ((_idstr11040_
                 (symbol->string
                  (##structure-ref _ctx11034_ '1 gx#expander-context::t '#f))))
            (let ((_pkg11047_
                   (let ((_$e11042_ (string-rindex _idstr11040_ '#\/)))
                     (if _$e11042_
                         ((lambda (_x11045_)
                            (string->symbol
                             (substring _idstr11040_ '0 _x11045_)))
                          _$e11042_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path11036_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path11036_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg11047_
                           (displayln '"package: " _pkg11047_)
                           '#!void)
                       (newline)
                       (pretty-print _code11038_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx11027_)
      (let ((_state11029_ (make-struct-instance gxc#meta-state::t _ctx11027_)))
        (let ((_ssi-code11031_
               (gxc#apply-generate-meta
                (##structure-ref _ctx11027_ '11 gx#module-context::t '#f)
                _state11029_)))
          (let ()
            (values _ssi-code11031_ (gxc#meta-state-end! _state11029_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx11020_)
      (let ((_lifts11022_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code11025_ (gxc#apply-generate-runtime-phi _stx11020_)))
             (if (null? (unbox _lifts11022_))
                 _code11025_
                 (cons 'begin
                       (foldr cons
                              (cons _code11025_ '())
                              (reverse (unbox _lifts11022_)))))))
         gxc#current-compile-lift
         _lifts11022_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx11016_)
      (let ((_modules11018_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx11016_ '11 gx#module-context::t '#f)
           _modules11018_)
          (reverse (unbox _modules11018_))))))
  (define gxc#compile-scm-file
    (lambda (_path11012_ _code11013_)
      (begin
        (gxc#verbose '"compile " _path11012_)
        (with-output-to-file
         (cons 'path: (cons _path11012_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code11013_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path11012_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path11012_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path10998_)
      (let ((_gsc-args11005_
             (let ((_$e11000_ (gxc#current-compile-gsc-options)))
               (if _$e11000_
                   ((lambda (_opts11003_)
                      (foldr cons (cons _path10998_ '()) _opts11003_))
                    _$e11000_)
                   (cons _path10998_ '())))))
        (let ((_proc11007_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args11005_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status11009_ (process-status _proc11007_)))
            (let ()
              (if (zero? _status11009_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path10998_
                   _status11009_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx10970_ _n10971_ _ext10972_)
      (let ((_module-relative-path10974_
             (lambda (_ctx10996_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx10996_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory10975_
               (lambda (_ctx10992_)
                 (path-directory
                  (let ((_mpath10994_
                         (##structure-ref
                          _ctx10992_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath10994_)
                        _mpath10994_
                        (last _mpath10994_)))))))
          (let ((_section-string10976_
                 (lambda (_n10990_)
                   (if (number? _n10990_)
                       (number->string _n10990_)
                       (if (symbol? _n10990_)
                           (symbol->string _n10990_)
                           (if (string? _n10990_)
                               _n10990_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n10990_)))))))
            (let ((_file-name10977_
                   (lambda (_path10988_)
                     (if _n10971_
                         (string-append
                          _path10988_
                          '"__"
                          (_section-string10976_ _n10971_)
                          _ext10972_)
                         (string-append _path10988_ _ext10972_)))))
              (let ((_file-path10978_
                     (lambda ()
                       (let ((_$e10983_ (gxc#current-compile-output-dir)))
                         (if _$e10983_
                             ((lambda (_outdir10986_)
                                (path-expand
                                 (_file-name10977_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx10970_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir10986_))
                              _$e10983_)
                             (path-expand
                              (_file-name10977_
                               (_module-relative-path10974_ _ctx10970_))
                              (_module-source-directory10975_ _ctx10970_)))))))
                (let ((_path10980_ (_file-path10978_)))
                  (begin
                    (create-directory* (path-directory _path10980_))
                    _path10980_))))))))))
