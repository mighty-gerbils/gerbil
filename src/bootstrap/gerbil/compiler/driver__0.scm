(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#compile-file
    (let ((_opt-lambda62606273_
           (lambda (_srcpath6262_ _opts6263_)
             (begin
               (if (string? _srcpath6262_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath6262_))
               (let ((_outdir6265_ (pgetq 'output-dir: _opts6263_))
                     (_invoke-gsc?6266_ (pgetq 'invoke-gsc: _opts6263_))
                     (_gsc-options6267_ (pgetq 'gsc-options: _opts6263_))
                     (_keep-scm?6268_ (pgetq 'keep-scm: _opts6263_))
                     (_verbosity6269_ (pgetq 'verbose: _opts6263_))
                     (_optimize6270_ (pgetq 'optimize: _opts6263_)))
                 (begin
                   (if _outdir6265_ (create-directory* _outdir6265_) '#!void)
                   (if _optimize6270_ (gxc#optimizer-info-init!) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile exe " _srcpath6262_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath6262_))))
                    gxc#current-compile-output-dir
                    _outdir6265_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?6266_
                    gxc#current-compile-gsc-options
                    _gsc-options6267_
                    gxc#current-compile-keep-scm
                    _keep-scm?6268_
                    gxc#current-compile-verbose
                    _verbosity6269_
                    gxc#current-compile-optimize
                    _optimize6270_)))))))
      (lambda _g6283_
        (let ((_g6282_ (length _g6283_)))
          (cond ((fx= _g6282_ 1)
                 (apply (lambda (_srcpath6276_)
                          (let ((_opts6278_ '()))
                            (_opt-lambda62606273_ _srcpath6276_ _opts6278_)))
                        _g6283_))
                ((fx= _g6282_ 2)
                 (apply (lambda (_srcpath6280_ _opts6281_)
                          (_opt-lambda62606273_ _srcpath6280_ _opts6281_))
                        _g6283_))
                (else (error "No clause matching arguments" _g6283_)))))))
  (define gxc#compile-exe-stub
    (let ((_opt-lambda62396251_
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
                     (_verbosity6248_ (pgetq 'verbose: _opts6242_)))
                 (begin
                   (if _outdir6244_ (create-directory* _outdir6244_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath6241_)
                        (gxc#compile-exe-stub-module
                         (gx#import-module _srcpath6241_)
                         _opts6242_)))
                    gxc#current-compile-output-dir
                    _outdir6244_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?6245_
                    gxc#current-compile-gsc-options
                    _gsc-options6246_
                    gxc#current-compile-keep-scm
                    _keep-scm?6247_
                    gxc#current-compile-verbose
                    _verbosity6248_)))))))
      (lambda _g6285_
        (let ((_g6284_ (length _g6285_)))
          (cond ((fx= _g6284_ 1)
                 (apply (lambda (_srcpath6254_)
                          (let ((_opts6256_ '()))
                            (_opt-lambda62396251_ _srcpath6254_ _opts6256_)))
                        _g6285_))
                ((fx= _g6284_ 2)
                 (apply (lambda (_srcpath6258_ _opts6259_)
                          (_opt-lambda62396251_ _srcpath6258_ _opts6259_))
                        _g6285_))
                (else (error "No clause matching arguments" _g6285_)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx6133_ _opts6134_)
      (let ((_find-export-binding6136_
             (lambda (_id6190_ _exports6191_)
               (let ((_$e6237_
                      (find (lambda (_e61926194_)
                              (let ((_g61966206_ _e61926194_))
                                (let ((_E61996210_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g61966206_))))
                                  (let ((_else61986214_ (lambda () '#f)))
                                    (let ((_K62006218_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g61966206_)
                                          (let ((_e62016221_
                                                 (##vector-ref
                                                  _g61966206_
                                                  '1)))
                                            (let ((_e62026224_
                                                   (##vector-ref
                                                    _g61966206_
                                                    '2)))
                                              (let ((_e62036227_
                                                     (##vector-ref
                                                      _g61966206_
                                                      '3)))
                                                (if (##eq? _e62036227_ '0)
                                                    (let ((_e62046230_
                                                           (##vector-ref
                                                            _g61966206_
                                                            '4)))
                                                      (if ((lambda (_g62326234_)
                                                             (eq? _g62326234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id6190_))
                   _e62046230_)
                  (_K62006218_)
                  (_else61986214_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else61986214_)))))
                                          (_else61986214_)))))))
                            _exports6191_)))
                 (if _$e6237_ (gx#core-resolve-module-export _$e6237_) '#f)))))
        (let ((_generate-stub6137_
               (lambda ()
                 (let ((_mod-str6178_
                        (symbol->string (gx#expander-context-id _ctx6133_))))
                   (let ((_mod-rt6180_ (string-append _mod-str6178_ '"__rt")))
                     (let ((_mod-main6187_
                            (let ((_$e6182_
                                   (_find-export-binding6136_
                                    'main
                                    (gx#module-context-export _ctx6133_))))
                              (if _$e6182_
                                  ((lambda (_bind6185_)
                                     (begin
                                       (if (gx#runtime-binding? _bind6185_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (gx#binding-id _bind6185_)))
                                   _$e6182_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (gx#expander-context-id _ctx6133_))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt6180_
                                              (cons (cons 'quote
                                                          (cons _mod-main6187_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub6138_
                 (lambda (_output-scm6165_ _output-bin6166_)
                   (let ((_init-stub6168_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args6170_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin6166_
                                              (cons _init-stub6168_
                                                    (cons _output-scm6165_
                                                          '())))))))
                       (let ((_proc6172_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args6170_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status6174_ (process-status _proc6172_)))
                           (let ()
                             (if (zero? _status6174_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm6165_
                                  _output-bin6166_
                                  _status6174_))))))))))
            (let ((_output-bin6160_
                   (let ((_$e6140_ (pgetq 'output-file: _opts6134_)))
                     (if _$e6140_
                         (values _$e6140_)
                         (let ((_mod-str6143_
                                (symbol->string
                                 (gx#expander-context-id _ctx6133_))))
                           (let ((_mod-name6150_
                                  (let ((_$e6145_
                                         (string-rindex _mod-str6143_ '#\/)))
                                    (if _$e6145_
                                        ((lambda (_ix6148_)
                                           (substring
                                            _mod-str6143_
                                            (fx1+ _ix6148_)
                                            (string-length _mod-str6143_)))
                                         _$e6145_)
                                        _mod-str6143_))))
                             (let ()
                               (let ((_$e6153_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e6153_
                                     ((lambda (_g61556157_)
                                        (path-expand
                                         _mod-name6150_
                                         _g61556157_))
                                      _$e6153_)
                                     _mod-name6150_)))))))))
              (let ((_output-scm6162_
                     (string-append _output-bin6160_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file _output-scm6162_ _generate-stub6137_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub6138_ _output-scm6162_ _output-bin6160_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm6162_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx6130_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx6130_))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx6130_)
               '#!void)
           (gxc#collect-bindings _ctx6130_)
           (gxc#compile-runtime-code _ctx6130_)
           (gxc#compile-meta-code _ctx6130_)
           (if (gxc#current-compile-optimize)
               (gxc#compile-ssxi-code _ctx6130_)
               '#!void)))
       gx#current-expander-context
       _ctx6130_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (gxc#make-symbol-table)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx6128_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx6128_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx6095_)
      (let ((_generate-runtime-code6098_
             (lambda (_ctx6113_ _code6114_)
               (let ((_runtime-code6117_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code6114_))
                       gx#current-expander-context
                       _ctx6113_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx6113_ '0 '".scm")
                  _runtime-code6117_)))))
        (let ((_generate-loader-code6099_
               (lambda (_ctx6103_ _code6104_ _rt6105_)
                 (let ((_loader-code6108_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code6104_))
                         gx#current-expander-context
                         _ctx6103_)))
                   (let ((_loader-code6110_
                          (if _rt6105_
                              (cons 'begin
                                    (cons _loader-code6108_
                                          (cons (cons 'load-module
                                                      (cons _rt6105_ '()))
                                                '())))
                              _loader-code6108_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx6103_ 'rt '".scm")
                        _loader-code6110_)))))))
          (let ((_compile16097_
                 (lambda (_ctx6119_)
                   (let ((_code6121_ (gx#module-context-code _ctx6119_)))
                     (let ((_rt6125_
                            (if (gxc#apply-find-runtime-code _code6121_)
                                (let ((_idstr6123_
                                       (symbol->string
                                        (gx#expander-context-id _ctx6119_))))
                                  (string-append _idstr6123_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt6125_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx6119_
                                  _rt6125_)
                                 (_generate-runtime-code6098_
                                  _ctx6119_
                                  _code6121_))
                               '#!void)
                           (_generate-loader-code6099_
                            _ctx6119_
                            _code6121_
                            _rt6125_))))))))
            (let ((_all-modules6101_
                   (cons _ctx6095_ (gxc#lift-nested-modules _ctx6095_))))
              (for-each _compile16097_ _all-modules6101_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx5997_)
      (let ((_compile-ssi5999_
             (lambda (_code6065_)
               (let ((_path6067_
                      (gxc#compile-output-file _ctx5997_ '#f '".ssi")))
                 (let ((_prelude6078_
                        (let ((_super6069_ (gx#phi-context-super _ctx5997_)))
                          (let ((_$e6071_
                                 (gx#expander-context-id _super6069_)))
                            (if _$e6071_
                                ((lambda (_g60736075_)
                                   (make-symbol '":" _g60736075_))
                                 _$e6071_)
                                ':<root>)))))
                   (let ((_ns6080_ (gx#module-context-ns _ctx5997_)))
                     (let ((_idstr6082_
                            (symbol->string
                             (gx#expander-context-id _ctx5997_))))
                       (let ((_pkg6089_
                              (let ((_$e6084_
                                     (string-rindex _idstr6082_ '#\/)))
                                (if _$e6084_
                                    ((lambda (_x6087_)
                                       (string->symbol
                                        (substring _idstr6082_ '0 _x6087_)))
                                     _$e6084_)
                                    '#f))))
                         (let ((_rt6091_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx5997_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path6067_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path6067_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude6078_)
                                    (if _pkg6089_
                                        (displayln '"package:" '" " _pkg6089_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns6080_)
                                    (newline)
                                    (pretty-print _code6065_)
                                    (if _rt6091_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt6091_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi6000_
               (lambda (_part6005_)
                 (let ((_part60066019_ _part6005_))
                   (let ((_E60086023_
                          (lambda ()
                            (error '"No clause matching" _part60066019_))))
                     (let ((_K60096034_
                            (lambda (_code6026_
                                     _n6027_
                                     _phi6028_
                                     _phi-ctx6029_)
                              (let ((_code6032_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code6026_))
                                      gx#current-expander-context
                                      _phi-ctx6029_
                                      gx#current-expander-phi
                                      _phi6028_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx5997_
                                  _n6027_
                                  '".scm")
                                 _code6032_)))))
                       (if (##pair? _part60066019_)
                           (let ((_hd60106037_ (##car _part60066019_))
                                 (_tl60116039_ (##cdr _part60066019_)))
                             (let ((_phi-ctx6042_ _hd60106037_))
                               (if (##pair? _tl60116039_)
                                   (let ((_hd60126044_ (##car _tl60116039_))
                                         (_tl60136046_ (##cdr _tl60116039_)))
                                     (let ((_phi6049_ _hd60126044_))
                                       (if (##pair? _tl60136046_)
                                           (let ((_hd60146051_
                                                  (##car _tl60136046_))
                                                 (_tl60156053_
                                                  (##cdr _tl60136046_)))
                                             (let ((_n6056_ _hd60146051_))
                                               (if (##pair? _tl60156053_)
                                                   (let ((_hd60166058_
                                                          (##car _tl60156053_))
                                                         (_tl60176060_
                                                          (##cdr _tl60156053_)))
                                                     (let ((_code6063_
                                                            _hd60166058_))
                                                       (if (##null? _tl60176060_)
                                                           (_K60096034_
                                                            _code6063_
                                                            _n6056_
                                                            _phi6049_
                                                            _phi-ctx6042_)
                                                           (_E60086023_))))
                                                   (_E60086023_))))
                                           (_E60086023_))))
                                   (_E60086023_))))
                           (_E60086023_))))))))
          (let ((_g6286_ (gxc#generate-meta-code _ctx5997_)))
            (begin
              (let ((_g6287_ (values-count _g6286_)))
                (if (not (fx= _g6287_ 2))
                    (error "Context expects 2 values" _g6287_)))
              (let ((_ssi-code6002_ (values-ref _g6286_ 0))
                    (_phi-code6003_ (values-ref _g6286_ 1)))
                (begin
                  (_compile-ssi5999_ _ssi-code6002_)
                  (for-each _compile-phi6000_ _phi-code6003_)))))))))
  (define gxc#compile-ssxi-code (lambda (_ctx5995_) (void)))
  (define gxc#generate-meta-code
    (lambda (_ctx5988_)
      (let ((_state5990_ (gxc#make-meta-state _ctx5988_)))
        (let ((_ssi-code5992_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx5988_)
                _state5990_)))
          (let ()
            (values _ssi-code5992_ (gxc#meta-state-end! _state5990_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx5981_)
      (let ((_lifts5983_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code5986_ (gxc#apply-generate-runtime-phi _stx5981_)))
             (if (null? (unbox _lifts5983_))
                 _code5986_
                 (cons 'begin
                       (foldr cons
                              (cons _code5986_ '())
                              (reverse (unbox _lifts5983_)))))))
         gxc#current-compile-lift
         _lifts5983_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx5977_)
      (let ((_modules5979_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx5977_)
           _modules5979_)
          (reverse (unbox _modules5979_))))))
  (define gxc#compile-scm-file
    (lambda (_path5973_ _code5974_)
      (begin
        (gxc#verbose '"compile " _path5973_)
        (with-output-to-file
         (cons 'path: (cons _path5973_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code5974_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path5973_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path5973_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path5959_)
      (let ((_gsc-args5966_
             (let ((_$e5961_ (gxc#current-compile-gsc-options)))
               (if _$e5961_
                   ((lambda (_opts5964_)
                      (foldr cons (cons _path5959_ '()) _opts5964_))
                    _$e5961_)
                   (cons _path5959_ '())))))
        (let ((_proc5968_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args5966_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status5970_ (process-status _proc5968_)))
            (let ()
              (if (zero? _status5970_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path5959_
                   _status5970_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx5931_ _n5932_ _ext5933_)
      (let ((_module-relative-path5935_
             (lambda (_ctx5957_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx5957_))))))
        (let ((_module-source-directory5936_
               (lambda (_ctx5953_)
                 (path-directory
                  (let ((_mpath5955_ (gx#module-context-path _ctx5953_)))
                    (if (string? _mpath5955_)
                        _mpath5955_
                        (last _mpath5955_)))))))
          (let ((_section-string5937_
                 (lambda (_n5951_)
                   (if (number? _n5951_)
                       (number->string _n5951_)
                       (if (symbol? _n5951_)
                           (symbol->string _n5951_)
                           (if (string? _n5951_)
                               _n5951_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n5951_)))))))
            (let ((_file-name5938_
                   (lambda (_path5949_)
                     (if _n5932_
                         (string-append
                          _path5949_
                          '"__"
                          (_section-string5937_ _n5932_)
                          _ext5933_)
                         (string-append _path5949_ _ext5933_)))))
              (let ((_file-path5939_
                     (lambda ()
                       (let ((_$e5944_ (gxc#current-compile-output-dir)))
                         (if _$e5944_
                             ((lambda (_outdir5947_)
                                (path-expand
                                 (_file-name5938_
                                  (symbol->string
                                   (gx#expander-context-id _ctx5931_)))
                                 _outdir5947_))
                              _$e5944_)
                             (path-expand
                              (_file-name5938_
                               (_module-relative-path5935_ _ctx5931_))
                              (_module-source-directory5936_ _ctx5931_)))))))
                (let ((_path5941_ (_file-path5939_)))
                  (begin
                    (create-directory* (path-directory _path5941_))
                    _path5941_))))))))))
