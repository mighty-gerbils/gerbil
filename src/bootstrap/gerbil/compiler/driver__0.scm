(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda15065
      (lambda (_srcpath15067_ _opts15068_)
        (begin
          (if (string? _srcpath15067_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath15067_))
          (let ((_outdir15070_ (pgetq 'output-dir: _opts15068_))
                (_invoke-gsc?15071_ (pgetq 'invoke-gsc: _opts15068_))
                (_gsc-options15072_ (pgetq 'gsc-options: _opts15068_))
                (_keep-scm?15073_ (pgetq 'keep-scm: _opts15068_))
                (_verbosity15074_ (pgetq 'verbose: _opts15068_))
                (_optimize15075_ (pgetq 'optimize: _opts15068_))
                (_gen-ssxi15076_ (pgetq 'generate-ssxi: _opts15068_)))
            (begin
              (if _outdir15070_ (create-directory* _outdir15070_) '#!void)
              (if _optimize15075_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath15067_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath15067_))))
               gxc#current-compile-output-dir
               _outdir15070_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?15071_
               gxc#current-compile-gsc-options
               _gsc-options15072_
               gxc#current-compile-keep-scm
               _keep-scm?15073_
               gxc#current-compile-verbose
               _verbosity15074_
               gxc#current-compile-optimize
               _optimize15075_
               gxc#current-compile-generate-ssxi
               _gen-ssxi15076_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath15082_)
          (let ((_opts15084_ '()))
            (gxc#compile-file__opt-lambda15065 _srcpath15082_ _opts15084_))))
      (define gxc#compile-file
        (lambda _g15091_
          (let ((_g15090_ (length _g15091_)))
            (cond ((fx= _g15090_ 1)
                   (apply (lambda (_srcpath15082_)
                            (gxc#compile-file__0 _srcpath15082_))
                          _g15091_))
                  ((fx= _g15090_ 2)
                   (apply (lambda (_srcpath15086_ _opts15087_)
                            (gxc#compile-file__opt-lambda15065
                             _srcpath15086_
                             _opts15087_))
                          _g15091_))
                  (else (error "No clause matching arguments" _g15091_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda15044
      (lambda (_srcpath15046_ _opts15047_)
        (begin
          (if (string? _srcpath15046_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath15046_))
          (let ((_outdir15049_ (pgetq 'output-dir: _opts15047_))
                (_invoke-gsc?15050_ (pgetq 'invoke-gsc: _opts15047_))
                (_gsc-options15051_ (pgetq 'gsc-options: _opts15047_))
                (_keep-scm?15052_ (pgetq 'keep-scm: _opts15047_))
                (_verbosity15053_ (pgetq 'verbose: _opts15047_)))
            (begin
              (if _outdir15049_ (create-directory* _outdir15049_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath15046_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath15046_)
                    _opts15047_)))
               gxc#current-compile-output-dir
               _outdir15049_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?15050_
               gxc#current-compile-gsc-options
               _gsc-options15051_
               gxc#current-compile-keep-scm
               _keep-scm?15052_
               gxc#current-compile-verbose
               _verbosity15053_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath15059_)
          (let ((_opts15061_ '()))
            (gxc#compile-exe-stub__opt-lambda15044
             _srcpath15059_
             _opts15061_))))
      (define gxc#compile-exe-stub
        (lambda _g15093_
          (let ((_g15092_ (length _g15093_)))
            (cond ((fx= _g15092_ 1)
                   (apply (lambda (_srcpath15059_)
                            (gxc#compile-exe-stub__0 _srcpath15059_))
                          _g15093_))
                  ((fx= _g15092_ 2)
                   (apply (lambda (_srcpath15063_ _opts15064_)
                            (gxc#compile-exe-stub__opt-lambda15044
                             _srcpath15063_
                             _opts15064_))
                          _g15093_))
                  (else (error "No clause matching arguments" _g15093_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx14938_ _opts14939_)
      (let ((_find-export-binding14941_
             (lambda (_id14995_ _exports14996_)
               (let ((_$e15042_
                      (find (lambda (_e1499714999_)
                              (let ((_g1500115011_ _e1499714999_))
                                (let ((_E1500415015_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1500115011_))))
                                  (let ((_else1500315019_ (lambda () '#f)))
                                    (let ((_K1500515023_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1500115011_)
                                          (let ((_e1500615026_
                                                 (##vector-ref
                                                  _g1500115011_
                                                  '1)))
                                            (let ((_e1500715029_
                                                   (##vector-ref
                                                    _g1500115011_
                                                    '2)))
                                              (let ((_e1500815032_
                                                     (##vector-ref
                                                      _g1500115011_
                                                      '3)))
                                                (if (##eq? _e1500815032_ '0)
                                                    (let ((_e1500915035_
                                                           (##vector-ref
                                                            _g1500115011_
                                                            '4)))
                                                      (if ((lambda (_g1503715039_)
                                                             (eq? _g1503715039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id14995_))
                   _e1500915035_)
                  (_K1500515023_)
                  (_else1500315019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1500315019_)))))
                                          (_else1500315019_)))))))
                            _exports14996_)))
                 (if _$e15042_
                     (gx#core-resolve-module-export _$e15042_)
                     '#f)))))
        (let ((_generate-stub14942_
               (lambda ()
                 (let ((_mod-str14983_
                        (symbol->string
                         (##structure-ref
                          _ctx14938_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt14985_
                          (string-append _mod-str14983_ '"__rt")))
                     (let ((_mod-main14992_
                            (let ((_$e14987_
                                   (_find-export-binding14941_
                                    'main
                                    (##structure-ref
                                     _ctx14938_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e14987_
                                  ((lambda (_bind14990_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind14990_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind14990_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e14987_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx14938_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt14985_
                                              (cons (cons 'quote
                                                          (cons _mod-main14992_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub14943_
                 (lambda (_output-scm14970_ _output-bin14971_)
                   (let ((_init-stub14973_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args14975_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin14971_
                                              (cons _init-stub14973_
                                                    (cons _output-scm14970_
                                                          '())))))))
                       (let ((_proc14977_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args14975_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status14979_ (process-status _proc14977_)))
                           (let ()
                             (if (zero? _status14979_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm14970_
                                  _output-bin14971_
                                  _status14979_))))))))))
            (let ((_output-bin14965_
                   (let ((_$e14945_ (pgetq 'output-file: _opts14939_)))
                     (if _$e14945_
                         (values _$e14945_)
                         (let ((_mod-str14948_
                                (symbol->string
                                 (##structure-ref
                                  _ctx14938_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name14955_
                                  (let ((_$e14950_
                                         (string-rindex _mod-str14948_ '#\/)))
                                    (if _$e14950_
                                        ((lambda (_ix14953_)
                                           (substring
                                            _mod-str14948_
                                            (fx1+ _ix14953_)
                                            (string-length _mod-str14948_)))
                                         _$e14950_)
                                        _mod-str14948_))))
                             (let ()
                               (let ((_$e14958_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e14958_
                                     ((lambda (_g1496014962_)
                                        (path-expand
                                         _mod-name14955_
                                         _g1496014962_))
                                      _$e14958_)
                                     _mod-name14955_)))))))))
              (let ((_output-scm14967_
                     (string-append _output-bin14965_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm14967_
                     _generate-stub14942_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub14943_
                         _output-scm14967_
                         _output-bin14965_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm14967_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx14935_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx14935_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx14935_)
               '#!void)
           (gxc#collect-bindings _ctx14935_)
           (gxc#compile-runtime-code _ctx14935_)
           (gxc#compile-meta-code _ctx14935_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx14935_)
               '#!void)))
       gx#current-expander-context
       _ctx14935_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj15088 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj15088) __obj15088))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx14933_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx14933_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx14900_)
      (let ((_generate-runtime-code14903_
             (lambda (_ctx14918_ _code14919_)
               (let ((_runtime-code14922_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code14919_))
                       gx#current-expander-context
                       _ctx14918_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx14918_ '0 '".scm")
                  _runtime-code14922_)))))
        (let ((_generate-loader-code14904_
               (lambda (_ctx14908_ _code14909_ _rt14910_)
                 (let ((_loader-code14913_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code14909_))
                         gx#current-expander-context
                         _ctx14908_)))
                   (let ((_loader-code14915_
                          (if _rt14910_
                              (cons 'begin
                                    (cons _loader-code14913_
                                          (cons (cons 'load-module
                                                      (cons _rt14910_ '()))
                                                '())))
                              _loader-code14913_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx14908_ 'rt '".scm")
                        _loader-code14915_)))))))
          (let ((_compile114902_
                 (lambda (_ctx14924_)
                   (let ((_code14926_
                          (##structure-ref
                           _ctx14924_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt14930_
                            (if (gxc#apply-find-runtime-code _code14926_)
                                (let ((_idstr14928_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx14924_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr14928_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt14930_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx14924_
                                  _rt14930_)
                                 (_generate-runtime-code14903_
                                  _ctx14924_
                                  _code14926_))
                               '#!void)
                           (_generate-loader-code14904_
                            _ctx14924_
                            _code14926_
                            _rt14930_))))))))
            (let ((_all-modules14906_
                   (cons _ctx14900_ (gxc#lift-nested-modules _ctx14900_))))
              (for-each _compile114902_ _all-modules14906_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx14802_)
      (let ((_compile-ssi14804_
             (lambda (_code14870_)
               (let ((_path14872_
                      (gxc#compile-output-file _ctx14802_ '#f '".ssi")))
                 (let ((_prelude14883_
                        (let ((_super14874_
                               (##structure-ref
                                _ctx14802_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e14876_
                                 (##structure-ref
                                  _super14874_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e14876_
                                ((lambda (_g1487814880_)
                                   (make-symbol '":" _g1487814880_))
                                 _$e14876_)
                                ':<root>)))))
                   (let ((_ns14885_
                          (##structure-ref
                           _ctx14802_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr14887_
                            (symbol->string
                             (##structure-ref
                              _ctx14802_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg14894_
                              (let ((_$e14889_
                                     (string-rindex _idstr14887_ '#\/)))
                                (if _$e14889_
                                    ((lambda (_x14892_)
                                       (string->symbol
                                        (substring _idstr14887_ '0 _x14892_)))
                                     _$e14889_)
                                    '#f))))
                         (let ((_rt14896_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx14802_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path14872_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path14872_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude14883_)
                                    (if _pkg14894_
                                        (displayln '"package:" '" " _pkg14894_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns14885_)
                                    (newline)
                                    (pretty-print _code14870_)
                                    (if _rt14896_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt14896_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi14805_
               (lambda (_part14810_)
                 (let ((_part1481114824_ _part14810_))
                   (let ((_E1481314828_
                          (lambda ()
                            (error '"No clause matching" _part1481114824_))))
                     (let ((_K1481414839_
                            (lambda (_code14831_
                                     _n14832_
                                     _phi14833_
                                     _phi-ctx14834_)
                              (let ((_code14837_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code14831_))
                                      gx#current-expander-context
                                      _phi-ctx14834_
                                      gx#current-expander-phi
                                      _phi14833_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx14802_
                                  _n14832_
                                  '".scm")
                                 _code14837_)))))
                       (if (##pair? _part1481114824_)
                           (let ((_hd1481514842_ (##car _part1481114824_))
                                 (_tl1481614844_ (##cdr _part1481114824_)))
                             (let ((_phi-ctx14847_ _hd1481514842_))
                               (if (##pair? _tl1481614844_)
                                   (let ((_hd1481714849_
                                          (##car _tl1481614844_))
                                         (_tl1481814851_
                                          (##cdr _tl1481614844_)))
                                     (let ((_phi14854_ _hd1481714849_))
                                       (if (##pair? _tl1481814851_)
                                           (let ((_hd1481914856_
                                                  (##car _tl1481814851_))
                                                 (_tl1482014858_
                                                  (##cdr _tl1481814851_)))
                                             (let ((_n14861_ _hd1481914856_))
                                               (if (##pair? _tl1482014858_)
                                                   (let ((_hd1482114863_
                                                          (##car _tl1482014858_))
                                                         (_tl1482214865_
                                                          (##cdr _tl1482014858_)))
                                                     (let ((_code14868_
                                                            _hd1482114863_))
                                                       (if (##null? _tl1482214865_)
                                                           (_K1481414839_
                                                            _code14868_
                                                            _n14861_
                                                            _phi14854_
                                                            _phi-ctx14847_)
                                                           (_E1481314828_))))
                                                   (_E1481314828_))))
                                           (_E1481314828_))))
                                   (_E1481314828_))))
                           (_E1481314828_))))))))
          (let ((_g15094_ (gxc#generate-meta-code _ctx14802_)))
            (begin
              (let ((_g15095_ (values-count _g15094_)))
                (if (not (fx= _g15095_ 2))
                    (error "Context expects 2 values" _g15095_)))
              (let ((_ssi-code14807_ (values-ref _g15094_ 0))
                    (_phi-code14808_ (values-ref _g15094_ 1)))
                (begin
                  (_compile-ssi14804_ _ssi-code14807_)
                  (for-each _compile-phi14805_ _phi-code14808_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx14785_)
      (let ((_path14787_ (gxc#compile-output-file _ctx14785_ '#f '".ssxi.ss")))
        (let ((_code14789_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx14785_ '11 gx#module-context::t '#f))))
          (let ((_idstr14791_
                 (symbol->string
                  (##structure-ref _ctx14785_ '1 gx#expander-context::t '#f))))
            (let ((_pkg14798_
                   (let ((_$e14793_ (string-rindex _idstr14791_ '#\/)))
                     (if _$e14793_
                         ((lambda (_x14796_)
                            (string->symbol
                             (substring _idstr14791_ '0 _x14796_)))
                          _$e14793_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path14787_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path14787_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg14798_
                           (displayln '"package: " _pkg14798_)
                           '#!void)
                       (newline)
                       (pretty-print _code14789_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx14778_)
      (let ((_state14780_
             (let ((__obj15089 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj15089 _ctx14778_)
                 __obj15089))))
        (let ((_ssi-code14782_
               (gxc#apply-generate-meta
                (##structure-ref _ctx14778_ '11 gx#module-context::t '#f)
                _state14780_)))
          (let ()
            (values _ssi-code14782_ (gxc#meta-state-end! _state14780_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx14771_)
      (let ((_lifts14773_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code14776_ (gxc#apply-generate-runtime-phi _stx14771_)))
             (if (null? (unbox _lifts14773_))
                 _code14776_
                 (cons 'begin
                       (foldr cons
                              (cons _code14776_ '())
                              (reverse (unbox _lifts14773_)))))))
         gxc#current-compile-lift
         _lifts14773_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx14767_)
      (let ((_modules14769_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx14767_ '11 gx#module-context::t '#f)
           _modules14769_)
          (reverse (unbox _modules14769_))))))
  (define gxc#compile-scm-file
    (lambda (_path14763_ _code14764_)
      (begin
        (gxc#verbose '"compile " _path14763_)
        (with-output-to-file
         (cons 'path: (cons _path14763_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code14764_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path14763_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path14763_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path14749_)
      (let ((_gsc-args14756_
             (let ((_$e14751_ (gxc#current-compile-gsc-options)))
               (if _$e14751_
                   ((lambda (_opts14754_)
                      (foldr cons (cons _path14749_ '()) _opts14754_))
                    _$e14751_)
                   (cons _path14749_ '())))))
        (let ((_proc14758_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args14756_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status14760_ (process-status _proc14758_)))
            (let ()
              (if (zero? _status14760_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path14749_
                   _status14760_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx14721_ _n14722_ _ext14723_)
      (let ((_module-relative-path14725_
             (lambda (_ctx14747_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx14747_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory14726_
               (lambda (_ctx14743_)
                 (path-directory
                  (let ((_mpath14745_
                         (##structure-ref
                          _ctx14743_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath14745_)
                        _mpath14745_
                        (last _mpath14745_)))))))
          (let ((_section-string14727_
                 (lambda (_n14741_)
                   (if (number? _n14741_)
                       (number->string _n14741_)
                       (if (symbol? _n14741_)
                           (symbol->string _n14741_)
                           (if (string? _n14741_)
                               _n14741_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n14741_)))))))
            (let ((_file-name14728_
                   (lambda (_path14739_)
                     (if _n14722_
                         (string-append
                          _path14739_
                          '"__"
                          (_section-string14727_ _n14722_)
                          _ext14723_)
                         (string-append _path14739_ _ext14723_)))))
              (let ((_file-path14729_
                     (lambda ()
                       (let ((_$e14734_ (gxc#current-compile-output-dir)))
                         (if _$e14734_
                             ((lambda (_outdir14737_)
                                (path-expand
                                 (_file-name14728_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx14721_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir14737_))
                              _$e14734_)
                             (path-expand
                              (_file-name14728_
                               (_module-relative-path14725_ _ctx14721_))
                              (_module-source-directory14726_ _ctx14721_)))))))
                (let ((_path14731_ (_file-path14729_)))
                  (begin
                    (create-directory* (path-directory _path14731_))
                    _path14731_))))))))))
