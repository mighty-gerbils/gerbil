(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-file
    (let ((_opt-lambda1102111035_
           (lambda (_srcpath11023_ _opts11024_)
             (begin
               (if (string? _srcpath11023_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath11023_))
               (let ((_outdir11026_ (pgetq 'output-dir: _opts11024_))
                     (_invoke-gsc?11027_ (pgetq 'invoke-gsc: _opts11024_))
                     (_gsc-options11028_ (pgetq 'gsc-options: _opts11024_))
                     (_keep-scm?11029_ (pgetq 'keep-scm: _opts11024_))
                     (_verbosity11030_ (pgetq 'verbose: _opts11024_))
                     (_optimize11031_ (pgetq 'optimize: _opts11024_))
                     (_gen-ssxi11032_ (pgetq 'generate-ssxi: _opts11024_)))
                 (begin
                   (if _outdir11026_ (create-directory* _outdir11026_) '#!void)
                   (if _optimize11031_ (gxc#optimizer-info-init!) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile exe " _srcpath11023_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath11023_))))
                    gxc#current-compile-output-dir
                    _outdir11026_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?11027_
                    gxc#current-compile-gsc-options
                    _gsc-options11028_
                    gxc#current-compile-keep-scm
                    _keep-scm?11029_
                    gxc#current-compile-verbose
                    _verbosity11030_
                    gxc#current-compile-optimize
                    _optimize11031_
                    gxc#current-compile-generate-ssxi
                    _gen-ssxi11032_)))))))
      (lambda _g11045_
        (let ((_g11044_ (length _g11045_)))
          (cond ((fx= _g11044_ 1)
                 (apply (lambda (_srcpath11038_)
                          (let ((_opts11040_ '()))
                            (_opt-lambda1102111035_
                             _srcpath11038_
                             _opts11040_)))
                        _g11045_))
                ((fx= _g11044_ 2)
                 (apply (lambda (_srcpath11042_ _opts11043_)
                          (_opt-lambda1102111035_ _srcpath11042_ _opts11043_))
                        _g11045_))
                (else (error "No clause matching arguments" _g11045_)))))))
  (define gxc#compile-exe-stub
    (let ((_opt-lambda1100011012_
           (lambda (_srcpath11002_ _opts11003_)
             (begin
               (if (string? _srcpath11002_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath11002_))
               (let ((_outdir11005_ (pgetq 'output-dir: _opts11003_))
                     (_invoke-gsc?11006_ (pgetq 'invoke-gsc: _opts11003_))
                     (_gsc-options11007_ (pgetq 'gsc-options: _opts11003_))
                     (_keep-scm?11008_ (pgetq 'keep-scm: _opts11003_))
                     (_verbosity11009_ (pgetq 'verbose: _opts11003_)))
                 (begin
                   (if _outdir11005_ (create-directory* _outdir11005_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath11002_)
                        (gxc#compile-exe-stub-module
                         (gx#import-module _srcpath11002_)
                         _opts11003_)))
                    gxc#current-compile-output-dir
                    _outdir11005_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?11006_
                    gxc#current-compile-gsc-options
                    _gsc-options11007_
                    gxc#current-compile-keep-scm
                    _keep-scm?11008_
                    gxc#current-compile-verbose
                    _verbosity11009_)))))))
      (lambda _g11047_
        (let ((_g11046_ (length _g11047_)))
          (cond ((fx= _g11046_ 1)
                 (apply (lambda (_srcpath11015_)
                          (let ((_opts11017_ '()))
                            (_opt-lambda1100011012_
                             _srcpath11015_
                             _opts11017_)))
                        _g11047_))
                ((fx= _g11046_ 2)
                 (apply (lambda (_srcpath11019_ _opts11020_)
                          (_opt-lambda1100011012_ _srcpath11019_ _opts11020_))
                        _g11047_))
                (else (error "No clause matching arguments" _g11047_)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx10894_ _opts10895_)
      (let ((_find-export-binding10897_
             (lambda (_id10951_ _exports10952_)
               (let ((_$e10998_
                      (find (lambda (_e1095310955_)
                              (let ((_g1095710967_ _e1095310955_))
                                (let ((_E1096010971_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1095710967_))))
                                  (let ((_else1095910975_ (lambda () '#f)))
                                    (let ((_K1096110979_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1095710967_)
                                          (let ((_e1096210982_
                                                 (##vector-ref
                                                  _g1095710967_
                                                  '1)))
                                            (let ((_e1096310985_
                                                   (##vector-ref
                                                    _g1095710967_
                                                    '2)))
                                              (let ((_e1096410988_
                                                     (##vector-ref
                                                      _g1095710967_
                                                      '3)))
                                                (if (##eq? _e1096410988_ '0)
                                                    (let ((_e1096510991_
                                                           (##vector-ref
                                                            _g1095710967_
                                                            '4)))
                                                      (if ((lambda (_g1099310995_)
                                                             (eq? _g1099310995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id10951_))
                   _e1096510991_)
                  (_K1096110979_)
                  (_else1095910975_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1095910975_)))))
                                          (_else1095910975_)))))))
                            _exports10952_)))
                 (if _$e10998_
                     (gx#core-resolve-module-export _$e10998_)
                     '#f)))))
        (let ((_generate-stub10898_
               (lambda ()
                 (let ((_mod-str10939_
                        (symbol->string
                         (##structure-ref
                          _ctx10894_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt10941_
                          (string-append _mod-str10939_ '"__rt")))
                     (let ((_mod-main10948_
                            (let ((_$e10943_
                                   (_find-export-binding10897_
                                    'main
                                    (##structure-ref
                                     _ctx10894_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e10943_
                                  ((lambda (_bind10946_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind10946_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind10946_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e10943_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx10894_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt10941_
                                              (cons (cons 'quote
                                                          (cons _mod-main10948_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub10899_
                 (lambda (_output-scm10926_ _output-bin10927_)
                   (let ((_init-stub10929_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args10931_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin10927_
                                              (cons _init-stub10929_
                                                    (cons _output-scm10926_
                                                          '())))))))
                       (let ((_proc10933_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args10931_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status10935_ (process-status _proc10933_)))
                           (let ()
                             (if (zero? _status10935_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm10926_
                                  _output-bin10927_
                                  _status10935_))))))))))
            (let ((_output-bin10921_
                   (let ((_$e10901_ (pgetq 'output-file: _opts10895_)))
                     (if _$e10901_
                         (values _$e10901_)
                         (let ((_mod-str10904_
                                (symbol->string
                                 (##structure-ref
                                  _ctx10894_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name10911_
                                  (let ((_$e10906_
                                         (string-rindex _mod-str10904_ '#\/)))
                                    (if _$e10906_
                                        ((lambda (_ix10909_)
                                           (substring
                                            _mod-str10904_
                                            (fx1+ _ix10909_)
                                            (string-length _mod-str10904_)))
                                         _$e10906_)
                                        _mod-str10904_))))
                             (let ()
                               (let ((_$e10914_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e10914_
                                     ((lambda (_g1091610918_)
                                        (path-expand
                                         _mod-name10911_
                                         _g1091610918_))
                                      _$e10914_)
                                     _mod-name10911_)))))))))
              (let ((_output-scm10923_
                     (string-append _output-bin10921_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm10923_
                     _generate-stub10898_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub10899_
                         _output-scm10923_
                         _output-bin10921_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm10923_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx10891_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx10891_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx10891_)
               '#!void)
           (gxc#collect-bindings _ctx10891_)
           (gxc#compile-runtime-code _ctx10891_)
           (gxc#compile-meta-code _ctx10891_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx10891_)
               '#!void)))
       gx#current-expander-context
       _ctx10891_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (make-struct-instance gxc#symbol-table::t)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx10889_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx10889_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx10856_)
      (let ((_generate-runtime-code10859_
             (lambda (_ctx10874_ _code10875_)
               (let ((_runtime-code10878_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code10875_))
                       gx#current-expander-context
                       _ctx10874_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx10874_ '0 '".scm")
                  _runtime-code10878_)))))
        (let ((_generate-loader-code10860_
               (lambda (_ctx10864_ _code10865_ _rt10866_)
                 (let ((_loader-code10869_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code10865_))
                         gx#current-expander-context
                         _ctx10864_)))
                   (let ((_loader-code10871_
                          (if _rt10866_
                              (cons 'begin
                                    (cons _loader-code10869_
                                          (cons (cons 'load-module
                                                      (cons _rt10866_ '()))
                                                '())))
                              _loader-code10869_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx10864_ 'rt '".scm")
                        _loader-code10871_)))))))
          (let ((_compile110858_
                 (lambda (_ctx10880_)
                   (let ((_code10882_
                          (##structure-ref
                           _ctx10880_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt10886_
                            (if (gxc#apply-find-runtime-code _code10882_)
                                (let ((_idstr10884_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx10880_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr10884_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt10886_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx10880_
                                  _rt10886_)
                                 (_generate-runtime-code10859_
                                  _ctx10880_
                                  _code10882_))
                               '#!void)
                           (_generate-loader-code10860_
                            _ctx10880_
                            _code10882_
                            _rt10886_))))))))
            (let ((_all-modules10862_
                   (cons _ctx10856_ (gxc#lift-nested-modules _ctx10856_))))
              (for-each _compile110858_ _all-modules10862_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx10758_)
      (let ((_compile-ssi10760_
             (lambda (_code10826_)
               (let ((_path10828_
                      (gxc#compile-output-file _ctx10758_ '#f '".ssi")))
                 (let ((_prelude10839_
                        (let ((_super10830_
                               (##structure-ref
                                _ctx10758_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e10832_
                                 (##structure-ref
                                  _super10830_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e10832_
                                ((lambda (_g1083410836_)
                                   (make-symbol '":" _g1083410836_))
                                 _$e10832_)
                                ':<root>)))))
                   (let ((_ns10841_
                          (##structure-ref
                           _ctx10758_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr10843_
                            (symbol->string
                             (##structure-ref
                              _ctx10758_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg10850_
                              (let ((_$e10845_
                                     (string-rindex _idstr10843_ '#\/)))
                                (if _$e10845_
                                    ((lambda (_x10848_)
                                       (string->symbol
                                        (substring _idstr10843_ '0 _x10848_)))
                                     _$e10845_)
                                    '#f))))
                         (let ((_rt10852_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx10758_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path10828_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path10828_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude10839_)
                                    (if _pkg10850_
                                        (displayln '"package:" '" " _pkg10850_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns10841_)
                                    (newline)
                                    (pretty-print _code10826_)
                                    (if _rt10852_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt10852_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi10761_
               (lambda (_part10766_)
                 (let ((_part1076710780_ _part10766_))
                   (let ((_E1076910784_
                          (lambda ()
                            (error '"No clause matching" _part1076710780_))))
                     (let ((_K1077010795_
                            (lambda (_code10787_
                                     _n10788_
                                     _phi10789_
                                     _phi-ctx10790_)
                              (let ((_code10793_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code10787_))
                                      gx#current-expander-context
                                      _phi-ctx10790_
                                      gx#current-expander-phi
                                      _phi10789_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx10758_
                                  _n10788_
                                  '".scm")
                                 _code10793_)))))
                       (if (##pair? _part1076710780_)
                           (let ((_hd1077110798_ (##car _part1076710780_))
                                 (_tl1077210800_ (##cdr _part1076710780_)))
                             (let ((_phi-ctx10803_ _hd1077110798_))
                               (if (##pair? _tl1077210800_)
                                   (let ((_hd1077310805_
                                          (##car _tl1077210800_))
                                         (_tl1077410807_
                                          (##cdr _tl1077210800_)))
                                     (let ((_phi10810_ _hd1077310805_))
                                       (if (##pair? _tl1077410807_)
                                           (let ((_hd1077510812_
                                                  (##car _tl1077410807_))
                                                 (_tl1077610814_
                                                  (##cdr _tl1077410807_)))
                                             (let ((_n10817_ _hd1077510812_))
                                               (if (##pair? _tl1077610814_)
                                                   (let ((_hd1077710819_
                                                          (##car _tl1077610814_))
                                                         (_tl1077810821_
                                                          (##cdr _tl1077610814_)))
                                                     (let ((_code10824_
                                                            _hd1077710819_))
                                                       (if (##null? _tl1077810821_)
                                                           (_K1077010795_
                                                            _code10824_
                                                            _n10817_
                                                            _phi10810_
                                                            _phi-ctx10803_)
                                                           (_E1076910784_))))
                                                   (_E1076910784_))))
                                           (_E1076910784_))))
                                   (_E1076910784_))))
                           (_E1076910784_))))))))
          (let ((_g11048_ (gxc#generate-meta-code _ctx10758_)))
            (begin
              (let ((_g11049_ (values-count _g11048_)))
                (if (not (fx= _g11049_ 2))
                    (error "Context expects 2 values" _g11049_)))
              (let ((_ssi-code10763_ (values-ref _g11048_ 0))
                    (_phi-code10764_ (values-ref _g11048_ 1)))
                (begin
                  (_compile-ssi10760_ _ssi-code10763_)
                  (for-each _compile-phi10761_ _phi-code10764_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx10741_)
      (let ((_path10743_ (gxc#compile-output-file _ctx10741_ '#f '".ssxi.ss")))
        (let ((_code10745_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx10741_ '11 gx#module-context::t '#f))))
          (let ((_idstr10747_
                 (symbol->string
                  (##structure-ref _ctx10741_ '1 gx#expander-context::t '#f))))
            (let ((_pkg10754_
                   (let ((_$e10749_ (string-rindex _idstr10747_ '#\/)))
                     (if _$e10749_
                         ((lambda (_x10752_)
                            (string->symbol
                             (substring _idstr10747_ '0 _x10752_)))
                          _$e10749_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path10743_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path10743_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg10754_
                           (displayln '"package: " _pkg10754_)
                           '#!void)
                       (newline)
                       (pretty-print _code10745_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx10734_)
      (let ((_state10736_ (make-struct-instance gxc#meta-state::t _ctx10734_)))
        (let ((_ssi-code10738_
               (gxc#apply-generate-meta
                (##structure-ref _ctx10734_ '11 gx#module-context::t '#f)
                _state10736_)))
          (let ()
            (values _ssi-code10738_ (gxc#meta-state-end! _state10736_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx10727_)
      (let ((_lifts10729_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code10732_ (gxc#apply-generate-runtime-phi _stx10727_)))
             (if (null? (unbox _lifts10729_))
                 _code10732_
                 (cons 'begin
                       (foldr cons
                              (cons _code10732_ '())
                              (reverse (unbox _lifts10729_)))))))
         gxc#current-compile-lift
         _lifts10729_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx10723_)
      (let ((_modules10725_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx10723_ '11 gx#module-context::t '#f)
           _modules10725_)
          (reverse (unbox _modules10725_))))))
  (define gxc#compile-scm-file
    (lambda (_path10719_ _code10720_)
      (begin
        (gxc#verbose '"compile " _path10719_)
        (with-output-to-file
         (cons 'path: (cons _path10719_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code10720_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path10719_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path10719_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path10705_)
      (let ((_gsc-args10712_
             (let ((_$e10707_ (gxc#current-compile-gsc-options)))
               (if _$e10707_
                   ((lambda (_opts10710_)
                      (foldr cons (cons _path10705_ '()) _opts10710_))
                    _$e10707_)
                   (cons _path10705_ '())))))
        (let ((_proc10714_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args10712_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status10716_ (process-status _proc10714_)))
            (let ()
              (if (zero? _status10716_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path10705_
                   _status10716_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx10677_ _n10678_ _ext10679_)
      (let ((_module-relative-path10681_
             (lambda (_ctx10703_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx10703_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory10682_
               (lambda (_ctx10699_)
                 (path-directory
                  (let ((_mpath10701_
                         (##structure-ref
                          _ctx10699_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath10701_)
                        _mpath10701_
                        (last _mpath10701_)))))))
          (let ((_section-string10683_
                 (lambda (_n10697_)
                   (if (number? _n10697_)
                       (number->string _n10697_)
                       (if (symbol? _n10697_)
                           (symbol->string _n10697_)
                           (if (string? _n10697_)
                               _n10697_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n10697_)))))))
            (let ((_file-name10684_
                   (lambda (_path10695_)
                     (if _n10678_
                         (string-append
                          _path10695_
                          '"__"
                          (_section-string10683_ _n10678_)
                          _ext10679_)
                         (string-append _path10695_ _ext10679_)))))
              (let ((_file-path10685_
                     (lambda ()
                       (let ((_$e10690_ (gxc#current-compile-output-dir)))
                         (if _$e10690_
                             ((lambda (_outdir10693_)
                                (path-expand
                                 (_file-name10684_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx10677_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir10693_))
                              _$e10690_)
                             (path-expand
                              (_file-name10684_
                               (_module-relative-path10681_ _ctx10677_))
                              (_module-source-directory10682_ _ctx10677_)))))))
                (let ((_path10687_ (_file-path10685_)))
                  (begin
                    (create-directory* (path-directory _path10687_))
                    _path10687_))))))))))
