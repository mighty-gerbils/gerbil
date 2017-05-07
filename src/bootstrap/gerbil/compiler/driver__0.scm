(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#compile-file
    (let ((_opt-lambda62406254_
           (lambda (_srcpath6242_ _opts6243_)
             (begin
               (if (string? _srcpath6242_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath6242_))
               (let ((_outdir6245_ (pgetq 'output-dir: _opts6243_))
                     (_invoke-gsc?6246_ (pgetq 'invoke-gsc: _opts6243_))
                     (_gsc-options6247_ (pgetq 'gsc-options: _opts6243_))
                     (_keep-scm?6248_ (pgetq 'keep-scm: _opts6243_))
                     (_verbosity6249_ (pgetq 'verbose: _opts6243_))
                     (_optimize6250_ (pgetq 'optimize: _opts6243_))
                     (_gen-ssxi6251_ (pgetq 'generate-ssxi: _opts6243_)))
                 (begin
                   (if _outdir6245_ (create-directory* _outdir6245_) '#!void)
                   (if _optimize6250_ (gxc#optimizer-info-init!) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile exe " _srcpath6242_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath6242_))))
                    gxc#current-compile-output-dir
                    _outdir6245_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?6246_
                    gxc#current-compile-gsc-options
                    _gsc-options6247_
                    gxc#current-compile-keep-scm
                    _keep-scm?6248_
                    gxc#current-compile-verbose
                    _verbosity6249_
                    gxc#current-compile-optimize
                    _optimize6250_
                    gxc#current-compile-generate-ssxi
                    _gen-ssxi6251_)))))))
      (lambda _g6264_
        (let ((_g6263_ (length _g6264_)))
          (cond ((fx= _g6263_ 1)
                 (apply (lambda (_srcpath6257_)
                          (let ((_opts6259_ '()))
                            (_opt-lambda62406254_ _srcpath6257_ _opts6259_)))
                        _g6264_))
                ((fx= _g6263_ 2)
                 (apply (lambda (_srcpath6261_ _opts6262_)
                          (_opt-lambda62406254_ _srcpath6261_ _opts6262_))
                        _g6264_))
                (else (error "No clause matching arguments" _g6264_)))))))
  (define gxc#compile-exe-stub
    (let ((_opt-lambda62196231_
           (lambda (_srcpath6221_ _opts6222_)
             (begin
               (if (string? _srcpath6221_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath6221_))
               (let ((_outdir6224_ (pgetq 'output-dir: _opts6222_))
                     (_invoke-gsc?6225_ (pgetq 'invoke-gsc: _opts6222_))
                     (_gsc-options6226_ (pgetq 'gsc-options: _opts6222_))
                     (_keep-scm?6227_ (pgetq 'keep-scm: _opts6222_))
                     (_verbosity6228_ (pgetq 'verbose: _opts6222_)))
                 (begin
                   (if _outdir6224_ (create-directory* _outdir6224_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath6221_)
                        (gxc#compile-exe-stub-module
                         (gx#import-module _srcpath6221_)
                         _opts6222_)))
                    gxc#current-compile-output-dir
                    _outdir6224_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?6225_
                    gxc#current-compile-gsc-options
                    _gsc-options6226_
                    gxc#current-compile-keep-scm
                    _keep-scm?6227_
                    gxc#current-compile-verbose
                    _verbosity6228_)))))))
      (lambda _g6266_
        (let ((_g6265_ (length _g6266_)))
          (cond ((fx= _g6265_ 1)
                 (apply (lambda (_srcpath6234_)
                          (let ((_opts6236_ '()))
                            (_opt-lambda62196231_ _srcpath6234_ _opts6236_)))
                        _g6266_))
                ((fx= _g6265_ 2)
                 (apply (lambda (_srcpath6238_ _opts6239_)
                          (_opt-lambda62196231_ _srcpath6238_ _opts6239_))
                        _g6266_))
                (else (error "No clause matching arguments" _g6266_)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx6113_ _opts6114_)
      (let ((_find-export-binding6116_
             (lambda (_id6170_ _exports6171_)
               (let ((_$e6217_
                      (find (lambda (_e61726174_)
                              (let ((_g61766186_ _e61726174_))
                                (let ((_E61796190_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g61766186_))))
                                  (let ((_else61786194_ (lambda () '#f)))
                                    (let ((_K61806198_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g61766186_)
                                          (let ((_e61816201_
                                                 (##vector-ref
                                                  _g61766186_
                                                  '1)))
                                            (let ((_e61826204_
                                                   (##vector-ref
                                                    _g61766186_
                                                    '2)))
                                              (let ((_e61836207_
                                                     (##vector-ref
                                                      _g61766186_
                                                      '3)))
                                                (if (##eq? _e61836207_ '0)
                                                    (let ((_e61846210_
                                                           (##vector-ref
                                                            _g61766186_
                                                            '4)))
                                                      (if ((lambda (_g62126214_)
                                                             (eq? _g62126214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id6170_))
                   _e61846210_)
                  (_K61806198_)
                  (_else61786194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else61786194_)))))
                                          (_else61786194_)))))))
                            _exports6171_)))
                 (if _$e6217_ (gx#core-resolve-module-export _$e6217_) '#f)))))
        (let ((_generate-stub6117_
               (lambda ()
                 (let ((_mod-str6158_
                        (symbol->string (gx#expander-context-id _ctx6113_))))
                   (let ((_mod-rt6160_ (string-append _mod-str6158_ '"__rt")))
                     (let ((_mod-main6167_
                            (let ((_$e6162_
                                   (_find-export-binding6116_
                                    'main
                                    (gx#module-context-export _ctx6113_))))
                              (if _$e6162_
                                  ((lambda (_bind6165_)
                                     (begin
                                       (if (gx#runtime-binding? _bind6165_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (gx#binding-id _bind6165_)))
                                   _$e6162_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (gx#expander-context-id _ctx6113_))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt6160_
                                              (cons (cons 'quote
                                                          (cons _mod-main6167_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub6118_
                 (lambda (_output-scm6145_ _output-bin6146_)
                   (let ((_init-stub6148_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args6150_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin6146_
                                              (cons _init-stub6148_
                                                    (cons _output-scm6145_
                                                          '())))))))
                       (let ((_proc6152_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args6150_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status6154_ (process-status _proc6152_)))
                           (let ()
                             (if (zero? _status6154_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm6145_
                                  _output-bin6146_
                                  _status6154_))))))))))
            (let ((_output-bin6140_
                   (let ((_$e6120_ (pgetq 'output-file: _opts6114_)))
                     (if _$e6120_
                         (values _$e6120_)
                         (let ((_mod-str6123_
                                (symbol->string
                                 (gx#expander-context-id _ctx6113_))))
                           (let ((_mod-name6130_
                                  (let ((_$e6125_
                                         (string-rindex _mod-str6123_ '#\/)))
                                    (if _$e6125_
                                        ((lambda (_ix6128_)
                                           (substring
                                            _mod-str6123_
                                            (fx1+ _ix6128_)
                                            (string-length _mod-str6123_)))
                                         _$e6125_)
                                        _mod-str6123_))))
                             (let ()
                               (let ((_$e6133_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e6133_
                                     ((lambda (_g61356137_)
                                        (path-expand
                                         _mod-name6130_
                                         _g61356137_))
                                      _$e6133_)
                                     _mod-name6130_)))))))))
              (let ((_output-scm6142_
                     (string-append _output-bin6140_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file _output-scm6142_ _generate-stub6117_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub6118_ _output-scm6142_ _output-bin6140_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm6142_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx6110_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx6110_))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx6110_)
               '#!void)
           (gxc#collect-bindings _ctx6110_)
           (gxc#compile-runtime-code _ctx6110_)
           (gxc#compile-meta-code _ctx6110_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx6110_)
               '#!void)))
       gx#current-expander-context
       _ctx6110_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (gxc#make-symbol-table)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx6108_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx6108_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx6075_)
      (let ((_generate-runtime-code6078_
             (lambda (_ctx6093_ _code6094_)
               (let ((_runtime-code6097_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code6094_))
                       gx#current-expander-context
                       _ctx6093_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx6093_ '0 '".scm")
                  _runtime-code6097_)))))
        (let ((_generate-loader-code6079_
               (lambda (_ctx6083_ _code6084_ _rt6085_)
                 (let ((_loader-code6088_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code6084_))
                         gx#current-expander-context
                         _ctx6083_)))
                   (let ((_loader-code6090_
                          (if _rt6085_
                              (cons 'begin
                                    (cons _loader-code6088_
                                          (cons (cons 'load-module
                                                      (cons _rt6085_ '()))
                                                '())))
                              _loader-code6088_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx6083_ 'rt '".scm")
                        _loader-code6090_)))))))
          (let ((_compile16077_
                 (lambda (_ctx6099_)
                   (let ((_code6101_ (gx#module-context-code _ctx6099_)))
                     (let ((_rt6105_
                            (if (gxc#apply-find-runtime-code _code6101_)
                                (let ((_idstr6103_
                                       (symbol->string
                                        (gx#expander-context-id _ctx6099_))))
                                  (string-append _idstr6103_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt6105_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx6099_
                                  _rt6105_)
                                 (_generate-runtime-code6078_
                                  _ctx6099_
                                  _code6101_))
                               '#!void)
                           (_generate-loader-code6079_
                            _ctx6099_
                            _code6101_
                            _rt6105_))))))))
            (let ((_all-modules6081_
                   (cons _ctx6075_ (gxc#lift-nested-modules _ctx6075_))))
              (for-each _compile16077_ _all-modules6081_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx5977_)
      (let ((_compile-ssi5979_
             (lambda (_code6045_)
               (let ((_path6047_
                      (gxc#compile-output-file _ctx5977_ '#f '".ssi")))
                 (let ((_prelude6058_
                        (let ((_super6049_ (gx#phi-context-super _ctx5977_)))
                          (let ((_$e6051_
                                 (gx#expander-context-id _super6049_)))
                            (if _$e6051_
                                ((lambda (_g60536055_)
                                   (make-symbol '":" _g60536055_))
                                 _$e6051_)
                                ':<root>)))))
                   (let ((_ns6060_ (gx#module-context-ns _ctx5977_)))
                     (let ((_idstr6062_
                            (symbol->string
                             (gx#expander-context-id _ctx5977_))))
                       (let ((_pkg6069_
                              (let ((_$e6064_
                                     (string-rindex _idstr6062_ '#\/)))
                                (if _$e6064_
                                    ((lambda (_x6067_)
                                       (string->symbol
                                        (substring _idstr6062_ '0 _x6067_)))
                                     _$e6064_)
                                    '#f))))
                         (let ((_rt6071_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx5977_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path6047_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path6047_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude6058_)
                                    (if _pkg6069_
                                        (displayln '"package:" '" " _pkg6069_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns6060_)
                                    (newline)
                                    (pretty-print _code6045_)
                                    (if _rt6071_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt6071_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi5980_
               (lambda (_part5985_)
                 (let ((_part59865999_ _part5985_))
                   (let ((_E59886003_
                          (lambda ()
                            (error '"No clause matching" _part59865999_))))
                     (let ((_K59896014_
                            (lambda (_code6006_
                                     _n6007_
                                     _phi6008_
                                     _phi-ctx6009_)
                              (let ((_code6012_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code6006_))
                                      gx#current-expander-context
                                      _phi-ctx6009_
                                      gx#current-expander-phi
                                      _phi6008_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx5977_
                                  _n6007_
                                  '".scm")
                                 _code6012_)))))
                       (if (##pair? _part59865999_)
                           (let ((_hd59906017_ (##car _part59865999_))
                                 (_tl59916019_ (##cdr _part59865999_)))
                             (let ((_phi-ctx6022_ _hd59906017_))
                               (if (##pair? _tl59916019_)
                                   (let ((_hd59926024_ (##car _tl59916019_))
                                         (_tl59936026_ (##cdr _tl59916019_)))
                                     (let ((_phi6029_ _hd59926024_))
                                       (if (##pair? _tl59936026_)
                                           (let ((_hd59946031_
                                                  (##car _tl59936026_))
                                                 (_tl59956033_
                                                  (##cdr _tl59936026_)))
                                             (let ((_n6036_ _hd59946031_))
                                               (if (##pair? _tl59956033_)
                                                   (let ((_hd59966038_
                                                          (##car _tl59956033_))
                                                         (_tl59976040_
                                                          (##cdr _tl59956033_)))
                                                     (let ((_code6043_
                                                            _hd59966038_))
                                                       (if (##null? _tl59976040_)
                                                           (_K59896014_
                                                            _code6043_
                                                            _n6036_
                                                            _phi6029_
                                                            _phi-ctx6022_)
                                                           (_E59886003_))))
                                                   (_E59886003_))))
                                           (_E59886003_))))
                                   (_E59886003_))))
                           (_E59886003_))))))))
          (let ((_g6267_ (gxc#generate-meta-code _ctx5977_)))
            (begin
              (let ((_g6268_ (values-count _g6267_)))
                (if (not (fx= _g6268_ 2))
                    (error "Context expects 2 values" _g6268_)))
              (let ((_ssi-code5982_ (values-ref _g6267_ 0))
                    (_phi-code5983_ (values-ref _g6267_ 1)))
                (begin
                  (_compile-ssi5979_ _ssi-code5982_)
                  (for-each _compile-phi5980_ _phi-code5983_)))))))))
  (define gxc#compile-ssxi-code (lambda (_ctx5975_) (void)))
  (define gxc#generate-meta-code
    (lambda (_ctx5968_)
      (let ((_state5970_ (gxc#make-meta-state _ctx5968_)))
        (let ((_ssi-code5972_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx5968_)
                _state5970_)))
          (let ()
            (values _ssi-code5972_ (gxc#meta-state-end! _state5970_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx5961_)
      (let ((_lifts5963_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code5966_ (gxc#apply-generate-runtime-phi _stx5961_)))
             (if (null? (unbox _lifts5963_))
                 _code5966_
                 (cons 'begin
                       (foldr cons
                              (cons _code5966_ '())
                              (reverse (unbox _lifts5963_)))))))
         gxc#current-compile-lift
         _lifts5963_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx5957_)
      (let ((_modules5959_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx5957_)
           _modules5959_)
          (reverse (unbox _modules5959_))))))
  (define gxc#compile-scm-file
    (lambda (_path5953_ _code5954_)
      (begin
        (gxc#verbose '"compile " _path5953_)
        (with-output-to-file
         (cons 'path: (cons _path5953_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code5954_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path5953_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path5953_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path5939_)
      (let ((_gsc-args5946_
             (let ((_$e5941_ (gxc#current-compile-gsc-options)))
               (if _$e5941_
                   ((lambda (_opts5944_)
                      (foldr cons (cons _path5939_ '()) _opts5944_))
                    _$e5941_)
                   (cons _path5939_ '())))))
        (let ((_proc5948_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args5946_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status5950_ (process-status _proc5948_)))
            (let ()
              (if (zero? _status5950_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path5939_
                   _status5950_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx5911_ _n5912_ _ext5913_)
      (let ((_module-relative-path5915_
             (lambda (_ctx5937_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx5937_))))))
        (let ((_module-source-directory5916_
               (lambda (_ctx5933_)
                 (path-directory
                  (let ((_mpath5935_ (gx#module-context-path _ctx5933_)))
                    (if (string? _mpath5935_)
                        _mpath5935_
                        (last _mpath5935_)))))))
          (let ((_section-string5917_
                 (lambda (_n5931_)
                   (if (number? _n5931_)
                       (number->string _n5931_)
                       (if (symbol? _n5931_)
                           (symbol->string _n5931_)
                           (if (string? _n5931_)
                               _n5931_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n5931_)))))))
            (let ((_file-name5918_
                   (lambda (_path5929_)
                     (if _n5912_
                         (string-append
                          _path5929_
                          '"__"
                          (_section-string5917_ _n5912_)
                          _ext5913_)
                         (string-append _path5929_ _ext5913_)))))
              (let ((_file-path5919_
                     (lambda ()
                       (let ((_$e5924_ (gxc#current-compile-output-dir)))
                         (if _$e5924_
                             ((lambda (_outdir5927_)
                                (path-expand
                                 (_file-name5918_
                                  (symbol->string
                                   (gx#expander-context-id _ctx5911_)))
                                 _outdir5927_))
                              _$e5924_)
                             (path-expand
                              (_file-name5918_
                               (_module-relative-path5915_ _ctx5911_))
                              (_module-source-directory5916_ _ctx5911_)))))))
                (let ((_path5921_ (_file-path5919_)))
                  (begin
                    (create-directory* (path-directory _path5921_))
                    _path5921_))))))))))
